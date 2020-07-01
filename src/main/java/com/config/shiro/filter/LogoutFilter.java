package com.config.shiro.filter;

import com.alibaba.fastjson.JSONObject;
import com.common.ResponseBean;
import com.config.shiro.UserRedisSessionDAO;
import com.utils.HttpCommonUtil;
import com.utils.SpringUtil;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.http.HttpStatus;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class LogoutFilter extends org.apache.shiro.web.filter.authc.LogoutFilter {
    private UserRedisSessionDAO userRedisSessionDAO;

    @Override
    protected boolean preHandle(ServletRequest request, ServletResponse response) throws Exception {
        String loginToken = HttpCommonUtil.getToken(request);
        if (userRedisSessionDAO == null) {
            userRedisSessionDAO = SpringUtil.getBean(UserRedisSessionDAO.class);
        }
        userRedisSessionDAO.deleteById(((HttpServletRequest) request).getSession().getId());
        if (StringUtils.isBlank(loginToken)) {// 非Restful方式
            return super.preHandle(request, response);
        } else {
            HttpCommonUtil.writeResponse(WebUtils.toHttp(response), HttpStatus.OK.value(), SUCCESS_INFO);
            return false;
        }
    }

    private static String SUCCESS_INFO = JSONObject.toJSONString(new ResponseBean(HttpStatus.OK.value(), "退出成功"));

}
