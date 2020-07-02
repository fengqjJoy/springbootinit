package com.common;

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
    public interface Redis {
        String OK = "OK";
        Integer EXPIRE_TIME_MINUTE = 60;// 过期时间, 60s, 一分钟
        Integer EXPIRE_TIME_HOUR = 60 * 60;// 过期时间, 一小时
        Integer EXPIRE_TIME_DAY = 60 * 60 * 24;// 过期时间, 一天
        String TOKEN_PREFIX = "token:";
        String MSG_CONSUMER_PREFIX = "consumer:";
        String ACCESS_LIMIT_PREFIX = "accessLimit:";
    }
}
