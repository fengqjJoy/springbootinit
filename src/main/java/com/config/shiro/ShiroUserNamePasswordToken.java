package com.config.shiro;

import org.apache.shiro.authc.UsernamePasswordToken;

import java.io.Serializable;

/**
 * @Project: springbootinit
 * @Package: com.config.shiro
 * @Author: 冯前进
 * @Date: 2020-06-29 18:16
 * @Description: TODO
 **/
public class ShiroUserNamePasswordToken extends UsernamePasswordToken implements Serializable {
    private static final long serialVersionUID = 481279465445855488L;

    private String nopass;

    public ShiroUserNamePasswordToken(String username, String password,String nopass) {
        super(username, password);
        this.nopass=nopass;
    }

    public ShiroUserNamePasswordToken() {
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getNopass() {
        return nopass;
    }

    public void setNopass(String nopass) {
        this.nopass = nopass;
    }
}
