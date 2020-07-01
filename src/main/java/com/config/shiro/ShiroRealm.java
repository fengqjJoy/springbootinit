package com.config.shiro;

import com.common.SystemCode;
import com.dto.RoleDto;
import com.dto.UserDto;
import com.entity.Permission;
import com.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.mgt.SessionsSecurityManager;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.DefaultSessionManager;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.SimplePrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.*;

/**
 * @Project: springbootinit
 * @Package: com.config.shiro
 * @Author: 冯前进
 * @Date: 2020-06-29 17:25
 * @Description: TODO
 **/
@Slf4j
public class ShiroRealm extends AuthorizingRealm {
    @Autowired
    private UserService userService;
    @Autowired
    private UserRedisSessionDAO userRedisSessionDAO;

    /**
     * 授权，即权限验证，验证某个已认证的用户是否拥有某个权限；即判断用户是否能做事情，
     * 常见的如：验证某个用户是否拥有某个角色。或者细粒度的验证某个用户对某个资源是否具有某个权限；
     *
     * @param principals
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        log.warn("开始执行授权操作.......");
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        //如果身份认证的时候没有传入User对象，这里只能取到userName
        //也就是SimpleAuthenticationInfo构造的时候第一个参数传递需要User对象
        UserDto user = (UserDto) principals.getPrimaryPrincipal();
        // 查询用户角色，一个用户可能有多个角色
        UserUtil.setUserSession(user);
        List<RoleDto> roles = user.getRoleList();
        List<Permission> permissionList = new ArrayList<>();
        for (RoleDto role : roles) {
            authorizationInfo.addRole(role.getType());
            List<Permission> permissions = role.getPermissionList();
            permissionList.addAll(permissions);
            for (Permission permission : permissions) {
                authorizationInfo.addStringPermission(permission.getPermission());
            }
        }
        UserUtil.setPermissionSession(permissionList);
        return authorizationInfo;
    }

    /**
     * 主要是用来进行身份认证的，也就是说验证用户输入的账号和密码是否正确
     *
     * @param token
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        log.warn("开始进行身份认证......");
        //获取用户的输入的账号.
        ShiroUserNamePasswordToken usernamePasswordToken = (ShiroUserNamePasswordToken) token;
        String username = usernamePasswordToken.getUsername();
        //通过username从数据库中查找 User对象.
        //实际项目中，这里可以根据实际情况做缓存，如果不做，Shiro自己也是有时间间隔机制，2分钟内不会重复执行该方法
        UserDto user = userService.getUserRoleByUserName(username);
        if (user == null || user.getId() == null) {
            throw new UnknownAccountException("用户名不存在");
        }
        UserUtil.setUserSession(user);
        //处理session
        SessionsSecurityManager securityManager = (SessionsSecurityManager) SecurityUtils.getSecurityManager();
        DefaultSessionManager sessionManager = (DefaultSessionManager) securityManager.getSessionManager();
        Collection<Session> sessions = userRedisSessionDAO.getActiveSessionsByUserName(username);//获取当前已登录的用户session列表
        for (Session session : sessions) {
            if (SecurityUtils.getSubject().getSession().getId().equals(session.getId()))
                continue;
            UserDto user2 = (UserDto) (session.getAttribute(SystemCode.LOGIN_USER));
            if (user2 != null) {
                if (username.equals(user2.getUsername())) {
                    //用户唯一登录
                    sessionManager.getSessionDAO().delete(session);
                }
            }
        }
        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(user, user.getPassword(),
                ByteSource.Util.bytes(user.getSalt()), getName());
        List<RoleDto> roles = user.getRoleList();
        List<Permission> permissionList = new ArrayList<>();
        for (RoleDto role : roles) {
            permissionList.addAll(role.getPermissionList());
        }
        UserUtil.setPermissionSession(permissionList);
        ShiroUtils.deleteCache(username);
        return authenticationInfo;
    }

    /**
     * 重写缓存key，否则集群下session共享时，会重复执行doGetAuthorizationInfo权限配置
     */
    @Override
    protected Object getAuthorizationCacheKey(PrincipalCollection principals) {
        SimplePrincipalCollection principalCollection = (SimplePrincipalCollection) principals;
        Object object = principalCollection.getPrimaryPrincipal();
        if (object instanceof UserDto) {
            UserDto user = (UserDto) object;
            return "authorization:cache:key:users:" + user.getId();
        }
        return super.getAuthorizationCacheKey(principals);
    }
}
