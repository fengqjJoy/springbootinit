package com.config.shiro.sessionmanager;

import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.eis.JavaUuidSessionIdGenerator;
import org.apache.shiro.session.mgt.eis.SessionIdGenerator;

import java.io.Serializable;

/**
 * @Package: com.config.shiro.sessionmanager
 * @Class: ShiroSessionIdGenerator
 * @Author: 冯前进
 * @date: 2020/6/29 17:20
 * @Description: TODO
 * @Param: param
 * @ReturnType: 
 * @Exception   
 **/
public class ShiroSessionIdGenerator implements SessionIdGenerator {
    /**
     * 实现SessionId生成
     */
    @Override
    public Serializable generateId(Session session) {
        Serializable sessionId = new JavaUuidSessionIdGenerator().generateId(session);
        return String.format("login_token_%s", sessionId);
    }
}
