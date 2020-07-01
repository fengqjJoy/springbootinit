package com.config.shiro;

import com.config.redis.JedisUtil;
import com.entity.User;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.UnknownSessionException;
import org.apache.shiro.session.mgt.eis.AbstractSessionDAO;
import org.crazycake.shiro.IRedisManager;
import org.crazycake.shiro.SessionInMemory;
import org.crazycake.shiro.exception.SerializationException;
import org.crazycake.shiro.serializer.ObjectSerializer;
import org.crazycake.shiro.serializer.RedisSerializer;
import org.crazycake.shiro.serializer.StringSerializer;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.Serializable;
import java.util.*;

/**
 * @Package: com.config.shiro
 * @Class: UserRedisSessionDAO
 * @Author: 冯前进
 * @date: 2020/6/29 19:50
 * @Description: TODO
 * @Param: param
 * @ReturnType: 
 * @Exception   
 **/
@Slf4j
public class UserRedisSessionDAO extends AbstractSessionDAO {
    private static final String DEFAULT_SESSION_KEY_PREFIX = "shiro:session:";
    private String keyPrefix = "shiro:session:";
    private String keyPrefixUser = "login999Users:";
    private String keyPrefixName = ":userName:";
    private static final long DEFAULT_SESSION_IN_MEMORY_TIMEOUT = 1000L;
    private long sessionInMemoryTimeout = 1000L;
    private static final int DEFAULT_EXPIRE = -2;
    private static final int NO_EXPIRE = -1;
    private int expire = -2;
    private static final int MILLISECONDS_IN_A_SECOND = 1000;
    private IRedisManager redisManager;
    private RedisSerializer keySerializer = new StringSerializer();
    private RedisSerializer valueSerializer = new ObjectSerializer();
    private static ThreadLocal sessionsInThread = new ThreadLocal();
    @Autowired
    private JedisUtil jedisUtil;

    public UserRedisSessionDAO() {
    }

    public void update(Session session) throws UnknownSessionException {
        this.saveSession(session);
    }

    //保存session时，如果用户名不为空，则保存一份单独的sessionid，用作剔除已登录用户
    private void addUserSessionRecord(Session session) {
        Object obj = session.getAttribute("login_user");
        if (obj != null) {
            String userName = ((User) obj).getUsername();
            jedisUtil.set(keyPrefixUser + session.getId().toString() + keyPrefixName + userName, session.getId().toString(), (int) (session.getTimeout() / 1000L));
        }
    }

    //根据用户名删除用户session
    private void delBySessionId(String sessionId) {
        Set<String> keys = jedisUtil.keys(this.keyPrefixUser + sessionId + keyPrefixName + "*");
        for (String key : keys) {
            jedisUtil.del(key);
        }
    }

    private void saveSession(Session session) throws UnknownSessionException {
        if (session != null && session.getId() != null) {
            this.addUserSessionRecord(session);
            byte[] key;
            byte[] value;
            try {
                key = this.keySerializer.serialize(this.getRedisSessionKey(session.getId()));
                value = this.valueSerializer.serialize(session);
            } catch (SerializationException var5) {
                log.error("serialize session error. session id=" + session.getId());
                throw new UnknownSessionException(var5);
            }
            if (this.expire == -2) {
                this.redisManager.set(key, value, (int) (session.getTimeout() / 1000L));
            } else {
                if (this.expire != -1 && (long) (this.expire * 1000) < session.getTimeout()) {
                    log.warn("Redis session expire time: " + this.expire * 1000 + " is less than Session timeout: " + session.getTimeout() + " . It may cause some problems.");
                }
                this.redisManager.set(key, value, this.expire);
            }
        } else {
            log.error("session or session id is null");
            throw new UnknownSessionException("session or session id is null");
        }
    }

    public void deleteById(String sessionId) {
        if (StringUtils.isNotEmpty(sessionId)) {
            try {
                this.delBySessionId(sessionId);
                this.redisManager.del(this.keySerializer.serialize(this.getRedisSessionKey(sessionId)));
            } catch (SerializationException var3) {
                var3.getStackTrace();
            }
        } else {
            log.error("session or session id is null");
        }
    }

    public void delete(Session session) {
        if (session != null && session.getId() != null) {
            try {
                this.delBySessionId(session.getId().toString());
                this.redisManager.del(this.keySerializer.serialize(this.getRedisSessionKey(session.getId())));
            } catch (SerializationException var3) {
                log.error("delete session error. session id=" + session.getId());
            }
        } else {
            log.error("session or session id is null");
        }
    }

    public Collection<Session> getActiveSessionsByUserName(String userName) {
        if (StringUtils.isEmpty(userName)) {
            return new ArrayList<>();
        }
        List<Session> sessions = new ArrayList();
        Set<String> sessionIds = new HashSet<>();
        try {
            Set<String> keys = jedisUtil.keys(this.keyPrefixUser + "*" + keyPrefixName + userName);
            for (String key : keys) {
                sessionIds.add(key.replace(keyPrefixUser, "").replace(keyPrefixName + userName, ""));
            }
            for (String key : sessionIds) {
                Object obj = this.valueSerializer.deserialize(this.redisManager.get((this.keyPrefix + key).getBytes()));
                if (obj != null) {
                    sessions.add((Session) obj);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sessions;
    }

    public Collection<Session> getActiveSessions() {
        HashSet sessions = new HashSet();
        try {
            Set<byte[]> keys = this.redisManager.keys(this.keySerializer.serialize(this.keyPrefix + "*"));
            if (keys != null && keys.size() > 0) {
                Iterator i$ = keys.iterator();
                while (i$.hasNext()) {
                    byte[] key = (byte[]) i$.next();
                    Session s = (Session) this.valueSerializer.deserialize(this.redisManager.get(key));
                    sessions.add(s);
                }
            }
        } catch (SerializationException var6) {
            log.error("get active sessions error.");
        }

        return sessions;
    }

    protected Serializable doCreate(Session session) {
        if (session == null) {
            log.error("session is null");
            throw new UnknownSessionException("session is null");
        } else {
            Serializable sessionId = this.generateSessionId(session);
            this.assignSessionId(session, sessionId);
            this.saveSession(session);
            return sessionId;
        }
    }

    protected Session doReadSession(Serializable sessionId) {
        if (sessionId == null) {
            log.warn("session id is null");
            return null;
        } else {
            Session s = this.getSessionFromThreadLocal(sessionId);
            if (s != null) {
                return s;
            } else {
                log.debug("read session from redis");

                try {
                    s = (Session) this.valueSerializer.deserialize(this.redisManager.get(this.keySerializer.serialize(this.getRedisSessionKey(sessionId))));
                    this.setSessionToThreadLocal(sessionId, s);
                } catch (SerializationException var4) {
                    log.error("read session error. settionId=" + sessionId);
                }

                return s;
            }
        }
    }

    private void setSessionToThreadLocal(Serializable sessionId, Session s) {
        Map<Serializable, SessionInMemory> sessionMap = (Map) sessionsInThread.get();
        if (sessionMap == null) {
            sessionMap = new HashMap();
            sessionsInThread.set(sessionMap);
        }
        SessionInMemory sessionInMemory = new SessionInMemory();
        sessionInMemory.setCreateTime(new Date());
        sessionInMemory.setSession(s);
        ((Map) sessionMap).put(sessionId, sessionInMemory);
    }

    private Session getSessionFromThreadLocal(Serializable sessionId) {
        Session s = null;
        if (sessionsInThread.get() == null) {
            return null;
        } else {
            Map<Serializable, SessionInMemory> sessionMap = (Map) sessionsInThread.get();
            SessionInMemory sessionInMemory = (SessionInMemory) sessionMap.get(sessionId);
            if (sessionInMemory == null) {
                return null;
            } else {
                Date now = new Date();
                long duration = now.getTime() - sessionInMemory.getCreateTime().getTime();
                if (duration < this.sessionInMemoryTimeout) {
                    s = sessionInMemory.getSession();
                    log.debug("read session from memory");
                } else {
                    sessionMap.remove(sessionId);
                }

                return s;
            }
        }
    }

    private String getRedisSessionKey(Serializable sessionId) {
        return this.keyPrefix + sessionId;
    }

    public IRedisManager getRedisManager() {
        return this.redisManager;
    }

    public void setRedisManager(IRedisManager redisManager) {
        this.redisManager = redisManager;
    }

    public String getKeyPrefix() {
        return this.keyPrefix;
    }

    public void setKeyPrefix(String keyPrefix) {
        this.keyPrefix = keyPrefix;
    }

    public RedisSerializer getKeySerializer() {
        return this.keySerializer;
    }

    public void setKeySerializer(RedisSerializer keySerializer) {
        this.keySerializer = keySerializer;
    }

    public RedisSerializer getValueSerializer() {
        return this.valueSerializer;
    }

    public void setValueSerializer(RedisSerializer valueSerializer) {
        this.valueSerializer = valueSerializer;
    }

    public long getSessionInMemoryTimeout() {
        return this.sessionInMemoryTimeout;
    }

    public void setSessionInMemoryTimeout(long sessionInMemoryTimeout) {
        this.sessionInMemoryTimeout = sessionInMemoryTimeout;
    }

    public int getExpire() {
        return this.expire;
    }

    public void setExpire(int expire) {
        this.expire = expire;
    }
}
