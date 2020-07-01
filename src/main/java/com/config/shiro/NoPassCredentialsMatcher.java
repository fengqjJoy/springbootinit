package com.config.shiro;

import com.common.ResponseCode;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.springframework.context.annotation.Configuration;

/**
 * shiro免密校验，提供指纹登录
 *
 * @Project: gktj_2020
 * @Package: com.zr.config.shiroConfig
 * @Author: 冯前进
 * @Date: 2019-09-17 11:52
 * @Description: TODO
 **/
@Configuration
public class NoPassCredentialsMatcher extends HashedCredentialsMatcher {
    public boolean doCredentialsMatch(AuthenticationToken authcToken, AuthenticationInfo info) {
        ShiroUserNamePasswordToken tk = (ShiroUserNamePasswordToken) authcToken;
        if (StringUtils.isEmpty(tk.getNopass())) {
            super.doCredentialsMatch(authcToken, info);
        } else if (tk.getNopass().equals(ResponseCode.LONG_NO_PASSWORD.getCode().toString())) {
            return true;
        }
        return super.doCredentialsMatch(authcToken, info);
    }
}