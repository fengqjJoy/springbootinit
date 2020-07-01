package com.utils;

import com.alibaba.fastjson.JSONObject;
import com.common.SystemCode;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.web.util.WebUtils;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@Slf4j
public class HttpCommonUtil {

    /**
     * 是否是Ajax请求
     *
     * @param request
     * @return
     */
    public static boolean isAjax(ServletRequest request) {
        String header = ((HttpServletRequest) request).getHeader("X-Requested-With");
        if ("XMLHttpRequest".equalsIgnoreCase(header)) {
            log.debug("当前请求为Ajax请求");
            return Boolean.TRUE;
        }
        log.debug("当前请求非Ajax请求");
        return Boolean.FALSE;
    }

    /**
     * 使用	response 输出JSON
     *
     * @param object
     */
    public static void out(ServletResponse response, Object object) {
        PrintWriter out = null;
        try {
            response.setCharacterEncoding("UTF-8");//设置编码
            response.setContentType("application/json");//设置返回类型
            out = response.getWriter();
            out.println(JSONObject.toJSON(object));//输出
        } catch (Exception e) {
            log.info("输出JSON报错。");
        } finally {
            if (null != out) {
                out.flush();
                out.close();
            }
        }
    }

    public static void toindex(HttpServletRequest request,
                               HttpServletResponse response) {
        try {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            StringBuffer strb = new StringBuffer();
            strb.append("<script type='text/javascript'>");
            strb.append("if(confirm('您也许没有操作此功能的权限或者你已经退出了系统,您可以点击确定从新登录系统尝试,点击取消继续其他操作!')){");
            strb.append("top.location.href='" + request.getContextPath() + "';");
            strb.append("}");
            strb.append("</script>");
            out.print(strb.toString());
            out.close();
        } catch (Exception e) {
            log.info("输出JSON报错。");
        }
    }

    /**
     * 根据参数或者header获取login-token
     *
     * @param request
     * @return
     */
    public static String getToken(ServletRequest request) {
        HttpServletRequest httpServletRequest = WebUtils.toHttp(request);
        String loginToken = httpServletRequest.getParameter(SystemCode.LOGIN_TOKEN);
        if (StringUtils.isBlank(loginToken)) {
            loginToken = httpServletRequest.getHeader(SystemCode.LOGIN_TOKEN);
        }
        return loginToken;
    }

    public static void writeResponse(HttpServletResponse response, int status, String json) {
        try {
            response.setHeader("Access-Control-Allow-Origin", "*");
            response.setHeader("Access-Control-Allow-Methods", "*");
            response.setContentType("application/json;charset=UTF-8");
            response.setStatus(status);
            response.getWriter().write(json);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
