package com.config.shiro;

import com.dto.UserDto;
import com.utils.SpringUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.Authenticator;
import org.apache.shiro.authc.LogoutAware;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.SimplePrincipalCollection;
import org.apache.shiro.subject.support.DefaultSubjectContext;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;

import java.util.Collection;
import java.util.Objects;

/**
 * @Package: com.config.shiro
 * @Class: ShiroUtils
 * @Author: 冯前进
 * @date: 2020/6/30 17:15
 * @Description: TODO
 * @Param: param
 * @ReturnType:
 * @Exception
 **/
public class ShiroUtils {

    /**
     * 私有构造器
     **/
    private ShiroUtils() {
    }

    private static UserRedisSessionDAO myRedisSessionDAO = SpringUtil.getBean(UserRedisSessionDAO.class);

    /**
     * 获取当前用户Session
     *
     * @Author Sans
     * @CreateTime 2019/6/17 17:03
     * @Return SysUserEntity 用户信息
     */
    public static Session getSession() {
        return SecurityUtils.getSubject().getSession();
    }

    /**
     * 用户登出
     *
     * @Author Sans
     * @CreateTime 2019/6/17 17:23
     */
    public static void logout() {
        SecurityUtils.getSubject().logout();
    }

    /**
     * 获取当前用户信息
     *
     * @Author Sans
     * @CreateTime 2019/6/17 17:03
     * @Return SysUserEntity 用户信息
     */
    public static UserDto getUserInfo() {
        return (UserDto) SecurityUtils.getSubject().getPrincipal();
    }

    /**
     * 删除用户缓存信息
     *
     * @Author Sans
     * @CreateTime 2019/6/17 13:57
     * @Param username  用户名称
     * @Param isRemoveSession 是否删除Session
     * @Return void
     */
    public static void deleteCache(String username) {
        //从缓存中获取Session
        Session session = null;
        Collection<Session> sessions = myRedisSessionDAO.getActiveSessionsByUserName(username);
        UserDto sysUser;
        Object attribute = null;
        for (Session sessionInfo : sessions) {
            //遍历Session,找到该用户名称对应的Session
            attribute = sessionInfo.getAttribute(DefaultSubjectContext.PRINCIPALS_SESSION_KEY);
            if (attribute == null) {
                continue;
            }
            sysUser = (UserDto) ((SimplePrincipalCollection) attribute).getPrimaryPrincipal();
            if (sysUser == null) {
                continue;
            }
            if (Objects.equals(sysUser.getUsername(), username)) {
                session = sessionInfo;
            }
        }
        if (session == null || attribute == null) {
            return;
        }
        //删除Cache，在访问受限接口时会重新授权
        DefaultWebSecurityManager securityManager = (DefaultWebSecurityManager) SecurityUtils.getSecurityManager();
        Authenticator authc = securityManager.getAuthenticator();
        ((LogoutAware) authc).onLogout((SimplePrincipalCollection) attribute);
    }
}