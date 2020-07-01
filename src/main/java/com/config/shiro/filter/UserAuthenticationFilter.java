package com.config.shiro.filter;

import com.utils.HttpCommonUtil;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * @Package: com.config.shiro.filter
 * @Class: UserAuthenticationFilter
 * @Author: 冯前进
 * @date: 2020/6/29 19:30
 * @Description: TODO
 * @Param: param
 * @ReturnType:
 * @Exception
 **/
@Slf4j
public class UserAuthenticationFilter extends FormAuthenticationFilter {
    /**
     * @Description: 此方法过滤器只验证ajax调用验证session是否过期
     * @Param: param
     * @ReturnType:
     * @Exception
     **/
    @Override
    protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {
        if (isLoginRequest(request, response)) {
            if (isLoginSubmission(request, response)) {
                if (log.isTraceEnabled()) {
                    log.trace("Login submission detected.  Attempting to execute login.");
                }
                return true;
            } else {
                if (log.isTraceEnabled()) {
                    log.trace("Login page view.");
                }
                //allow them to see the login page ;)
                HttpServletRequest req = (HttpServletRequest) request;
                if (req.getRequestURI().contains("login")) {
                    if (isAjax(request)) {
                        Map<String, String> map = new HashMap<String, String>();
                        map.put("httpStatCode", "300");
                        HttpCommonUtil.out(response, map);
                        return false;
                    }
                }
                return true;
            }
        } else {
            if (log.isTraceEnabled()) {
                log.trace("Attempting to access a path which requires authentication.  Forwarding to the " +
                        "Authentication url [" + getLoginUrl() + "]");
            }
            if (isAjax(request)) {
                Map<String, String> map = new HashMap<String, String>();
                map.put("httpStatCode", "300");
                HttpCommonUtil.out(response, map);
            } else {
                this.saveRequestAndRedirectToLogin(request, response);
            }
            return false;
        }
    }

    private static boolean isAjax(ServletRequest request) {
        String header = ((HttpServletRequest) request).getHeader("X-Requested-With");
        if ("XMLHttpRequest".equalsIgnoreCase(header)) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }
}