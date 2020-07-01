package com.config.shiro.filter;

import com.alibaba.fastjson.JSONObject;
import com.common.ResponseBean;
import com.common.SystemCode;
import com.config.shiro.UserUtil;
import com.utils.HttpCommonUtil;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.web.filter.authc.UserFilter;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.http.HttpStatus;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 * @Project: springbootinit
 * @Package: com.config.shiro.filter
 * @Author: 冯前进
 * @Date: 2020-06-29 19:53
 * @Description: TODO
 **/
public class RestFilter extends UserFilter {
    @Override
    protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue) {
        return super.isAccessAllowed(request, response, mappedValue);
    }

    @Override
    protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {
        String loginToken = getToken(request);
        if (StringUtils.isEmpty(loginToken)) {
            if (StringUtils.isEmpty(getRequestType(request))) {
                return super.onAccessDenied(request, response);
            }
            HttpCommonUtil.writeResponse(WebUtils.toHttp(response), 200, info);
            return false;
        }
        if (UserUtil.getCurrentUser() == null) {
            if (StringUtils.isEmpty(getRequestType(request))) {
                return super.onAccessDenied(request, response);
            }
            HttpCommonUtil.writeResponse(WebUtils.toHttp(response), HttpStatus.UNAUTHORIZED.value(), info);
            return false;
        }
        return super.onAccessDenied(request, response);
    }

    private static String info = JSONObject
            .toJSONString(new ResponseBean(HttpStatus.UNAUTHORIZED.value(), "登录过期，请重新登录！"));

    private static String getToken(ServletRequest request) {
        HttpServletRequest httpServletRequest = WebUtils.toHttp(request);
        String loginToken = httpServletRequest.getParameter(SystemCode.LOGIN_TOKEN);
        if (StringUtils.isBlank(loginToken)) {
            loginToken = httpServletRequest.getHeader(SystemCode.LOGIN_TOKEN);
        }
        return loginToken;
    }

    private static String getRequestType(ServletRequest request) {
        HttpServletRequest httpServletRequest = WebUtils.toHttp(request);
        String requestType = httpServletRequest.getParameter(SystemCode.requestTypeHeader);
        if (StringUtils.isBlank(requestType)) {
            requestType = httpServletRequest.getHeader(SystemCode.requestTypeHeader);
        }
        return requestType;
    }
}