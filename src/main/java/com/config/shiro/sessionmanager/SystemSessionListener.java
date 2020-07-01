package com.config.shiro.sessionmanager;

import org.apache.shiro.session.Session;
import org.apache.shiro.session.SessionListener;

import java.util.concurrent.atomic.AtomicInteger;

/**
 * @Project: springbootinit
 * @Package: com.config.shiro.sessionmanager
 * @Author: 冯前进
 * @Date: 2020-06-29 19:25
 * @Description: TODO
 **/
public class SystemSessionListener implements SessionListener {

    private final AtomicInteger sessionCount = new AtomicInteger(0);

    @Override
    public void onStart(Session session) {
        sessionCount.incrementAndGet();
    }

    @Override
    public void onStop(Session session) {
        sessionCount.decrementAndGet();
    }

    @Override
    public void onExpiration(Session session) {
        sessionCount.decrementAndGet();
    }

    public int getSessionCount() {
        return sessionCount.get();
    }
}
