package com.common;

import java.util.List;

/**
 * @Project: springbootinit
 * @Package: com.common
 * @Author: 冯前进
 * @Date: 2020-06-29 19:55
 * @Description: TODO
 **/
public interface SystemCode {
    /**
     * 加密次数
     */
    int HASH_ITERATIONS = 3;

    String LOGIN_USER = "login_user";

    String USER_PERMISSIONS = "user_permissions";

    /**
     * 登陆token(nginx中默认header无视下划线)
     */
    String LOGIN_TOKEN = "JSESSIONID";

    String requestTypeHeader = "requestType";

    String webRequest="web";
}
