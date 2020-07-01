package com.config.shiro;

import com.config.shiro.filter.LogoutFilter;
import com.config.shiro.filter.RestFilter;
import com.config.shiro.filter.UserAuthenticationFilter;
import com.config.shiro.sessionmanager.ShiroSessionIdGenerator;
import com.config.shiro.sessionmanager.ShiroSessionManager;
import com.config.shiro.sessionmanager.SystemSessionListener;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.session.SessionListener;
import org.apache.shiro.session.mgt.SessionManager;
import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.crazycake.shiro.RedisCacheManager;
import org.crazycake.shiro.RedisManager;
import org.springframework.aop.framework.autoproxy.DefaultAdvisorAutoProxyCreator;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.filter.DelegatingFilterProxy;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * @Project: springbootinit
 * @Package: com.config.shiro.sessionmanager
 * @Author: 冯前进
 * @Date: 2020-06-29 18:29
 * @Description: TODO
 **/
@Configuration
public class ShiroConfig {
    private final String CACHE_KEY = "shiro:cache:";
    private final String SESSION_KEY = "shiro:session:";
    private final int EXPIRE = 18000;


    @Value("${spring.redis.host}")
    private String host;

    @Value("${spring.redis.port}")
    private int port;

    @Value("${spring.redis.password}")
    private String password;
    @Value("${spring.redis.database}")
    private int database;

    @Value("${spring.redis.jedis.pool.max-idle}")
    private int maxIdle;

    @Value("${spring.redis.jedis.pool.max-wait}")
    private long maxWait;

    @Value("${spring.redis.jedis.pool.min-idle}")
    private int minIdle;

    @Value("${spring.redis.timeout}")
    private int timeout;

    @Bean
    public JedisPool redisPoolFactory() {
        JedisPoolConfig jedisPoolConfig = new JedisPoolConfig();
        jedisPoolConfig.setMaxIdle(maxIdle);
        jedisPoolConfig.setMaxWaitMillis(maxWait);
        jedisPoolConfig.setMinIdle(minIdle);
        return new JedisPool(jedisPoolConfig, host, port, timeout, password, database);
    }

    @Bean
    public RedisManager redisManager() {
        RedisManager redisManager = new RedisManager();     // crazycake 实现
//        redisManager.setHost(sessionHost);
//        redisManager.setPort(sessionPort);
//        redisManager.setDatabase(10);
//        redisManager.setTimeout(sessionTimeout);//毫秒
//        redisManager.setPassword(sessionPassword);
        redisManager.setJedisPool(redisPoolFactory());
        return redisManager;
    }

    @Bean
    ShiroRealm userRealm() {
        ShiroRealm userRealm = new ShiroRealm();
        userRealm.setCredentialsMatcher(hashedCredentialsMatcher());
        return userRealm;
    }

    @Bean
    public ShiroSessionIdGenerator sessionIdGenerator() {
        return new ShiroSessionIdGenerator();
    }

    @Bean
    UserRedisSessionDAO userRedisSessionDAO() {
        UserRedisSessionDAO sessionDAO = new UserRedisSessionDAO(); // crazycake 实现
        sessionDAO.setRedisManager(redisManager());
        sessionDAO.setSessionIdGenerator(sessionIdGenerator()); //  Session ID 生成器
        sessionDAO.setKeyPrefix(SESSION_KEY);
        sessionDAO.setExpire(EXPIRE);
        return sessionDAO;
    }

    /**
     * 设置session管理器
     * 设置session监听
     *
     * @return sessionManager
     */
    @Bean
    public SessionManager sessionManager() {
        //session.timeout，过期时间默认30分钟
        ShiroSessionManager sessionManager = new ShiroSessionManager();
        Collection<SessionListener> listeners = new ArrayList<SessionListener>();
        listeners.add(new SystemSessionListener());
        sessionManager.setSessionListeners(listeners);
        sessionManager.setDeleteInvalidSessions(true); // 删除无效session //
        sessionManager.setSessionDAO(userRedisSessionDAO());         // 设置sessionDAO
        return sessionManager;
    }

    /**
     * 定义自定义过滤器（用来处理ajax 请求session过期问题）
     *
     * @return UserAuthenticationFilter
     */
    @Bean
    public UserAuthenticationFilter getFormAuthenticationFilter() {
        return new UserAuthenticationFilter();
    }

    //配置密码校验方式，可免密登录
    @Bean
    public HashedCredentialsMatcher hashedCredentialsMatcher() {
        NoPassCredentialsMatcher hashedCredentialsMatcher = new NoPassCredentialsMatcher();
        hashedCredentialsMatcher.setHashAlgorithmName("md5");// 散列算法:这里使用MD5算法;
        hashedCredentialsMatcher.setHashIterations(3);
        return hashedCredentialsMatcher;
    }

    /**
     * 权限管理，配置主要是Realm的管理认证
     *
     * @param shiroRealm
     * @return
     */
    @Bean
    SecurityManager securityManager(ShiroRealm shiroRealm) {
        DefaultWebSecurityManager manager = new DefaultWebSecurityManager();
        manager.setSessionManager(sessionManager());
        manager.setCacheManager(redisCacheManager());
        manager.setRealm(shiroRealm);
        return manager;
    }

    /**
     * 开启Shiro的注解(如@RequiresRoles,@RequiresPermissions),
     * 需借助SpringAOP扫描使用Shiro注解的类,并在必要时进行安全逻辑验证
     *
     * @return
     */
    @Bean
    public DefaultAdvisorAutoProxyCreator defaultAdvisorAutoProxyCreator() {
        DefaultAdvisorAutoProxyCreator proxyCreator = new DefaultAdvisorAutoProxyCreator();
        proxyCreator.setProxyTargetClass(true);
        return proxyCreator;
    }

    /**
     * 增加shiro拦截器注解方式的功能
     *
     * @param securityManager
     * @return
     */
    @Bean
    public AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor(
            @Qualifier("securityManager") SecurityManager securityManager) {
        AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor = new AuthorizationAttributeSourceAdvisor();
        authorizationAttributeSourceAdvisor.setSecurityManager(securityManager);
        return authorizationAttributeSourceAdvisor;
    }

    @Bean
    public RedisCacheManager redisCacheManager() {
        RedisCacheManager cacheManager = new RedisCacheManager();   // crazycake 实现
        cacheManager.setRedisManager(redisManager());
        return cacheManager;
    }


    /**
     * 配置Cache管理器
     * 用于往Redis存储权限和角色标识
     *
     * @Attention 使用的是shiro-redis开源插件
     * @Author Sans
     * @CreateTime 2019/6/12 12:37
     */
//    @Bean
//    public RedisCacheManager mycacheManager() {
//        RedisCacheManager redisCacheManager = new RedisCacheManager();
//        redisCacheManager.setRedisManager(redisManager());
//        redisCacheManager.setKeyPrefix(CACHE_KEY);
//        // 配置缓存的话要求放在session里面的实体类必须有个id标识
//        redisCacheManager.setPrincipalIdFieldName("username");
//        return redisCacheManager;
//    }

    @Bean
    public FilterRegistrationBean delegatingFilterProxy() {
        FilterRegistrationBean filterRegistrationBean = new FilterRegistrationBean();
        DelegatingFilterProxy proxy = new DelegatingFilterProxy();
        proxy.setTargetFilterLifecycle(true);
        proxy.setTargetBeanName("shiroFilter");
        filterRegistrationBean.setFilter(proxy);
        filterRegistrationBean.setOrder(2);
        return filterRegistrationBean;
    }

    @Bean
    ShiroFilterFactoryBean shiroFilter(SecurityManager securityManager) {
        ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();
        shiroFilterFactoryBean.setSecurityManager(securityManager);
        // 拦截器.
        Map<String, String> filterChainDefinitionMap = new LinkedHashMap<String, String>();

        filterChainDefinitionMap.put("/css/**", "anon");
        filterChainDefinitionMap.put("/swagger-ui.html", "anon");
        filterChainDefinitionMap.put("/fonts/**", "anon");
        filterChainDefinitionMap.put("/img/**", "anon");
        filterChainDefinitionMap.put("/publicjs/**", "anon");
        filterChainDefinitionMap.put("/publiccss/**", "anon");
        filterChainDefinitionMap.put("/images/**", "anon");
        filterChainDefinitionMap.put("/sys/login.do", "anon");
        filterChainDefinitionMap.put("/sys/getLoginInfo.do", "anon");
        filterChainDefinitionMap.put("/files/*", "anon");
        filterChainDefinitionMap.put("/access/**", "anon");
        filterChainDefinitionMap.put("/logout", "logout");
        filterChainDefinitionMap.put("/resource/**", "anon");
        filterChainDefinitionMap.put("/login.html", "anon");
        filterChainDefinitionMap.put("/favicon.ico", "anon");
        filterChainDefinitionMap.put("/**", "authc");

        shiroFilterFactoryBean.setLoginUrl("/login.html");
        shiroFilterFactoryBean.setSuccessUrl("/index.html");

        LogoutFilter logoutFilter = new LogoutFilter();
        logoutFilter.setRedirectUrl("/login.html");

        RestFilter restfulFilter = new RestFilter();
        shiroFilterFactoryBean.getFilters().put("authc", restfulFilter);
        shiroFilterFactoryBean.getFilters().put("logout", logoutFilter);

        shiroFilterFactoryBean.setFilterChainDefinitionMap(filterChainDefinitionMap);
        return shiroFilterFactoryBean;
    }
}
