package com.config.shiro;

import com.common.SystemCode;
import com.dto.UserDto;
import com.entity.Permission;
import com.entity.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;

import java.util.List;

/**
 * @Package: com.config.shiro
 * @Class: UserUtil
 * @Author: 冯前进
 * @date: 2020/6/29 20:18
 * @Description: TODO
 * @Param: param
 * @ReturnType:
 * @Exception
 **/
public class UserUtil {

    public static UserDto getCurrentUser() {
        return (UserDto) getSession().getAttribute(SystemCode.LOGIN_USER);
    }

    public static void setUserSession(UserDto user) {
        getSession().setAttribute(SystemCode.LOGIN_USER, user);
    }

    @SuppressWarnings("unchecked")
    public static List<Permission> getCurrentPermissions() {
        return (List<Permission>) getSession().getAttribute(SystemCode.USER_PERMISSIONS);
    }

    public static void setPermissionSession(List<Permission> list) {
        getSession().setAttribute(SystemCode.USER_PERMISSIONS, list);
    }

    public static Session getSession() {
        return SecurityUtils.getSubject().getSession();
    }
}
