package com.config.redis;

import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.GenericJackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;

/**
 * @Project: springbootinit
 * @Package: com.config.redis
 * @Author: 冯前进
 * @Date: 2020-06-25 10:57
 * @Description: TODO
 **/
//@EnableCaching
//@Configuration
public class BaseJediseConfig {



    /**
     * RedisTemplate配置
     *
     * @param connectionFactory
     * @return
     */
//    @Primary
//    @Bean
//    public RedisTemplate sessionRedisTemplate(JedisConnectionFactory connectionFactory) {
//        RedisTemplate<String, Object> redisTemplate = new RedisTemplate<>();
//        connectionFactory.setDatabase(8);
//        connectionFactory.afterPropertiesSet();
//        redisTemplate.setConnectionFactory(connectionFactory);
//        redisTemplate.setKeySerializer(new StringRedisSerializer());//key序列化
//        redisTemplate.setValueSerializer(new GenericJackson2JsonRedisSerializer());//value序列化
//        redisTemplate.afterPropertiesSet();
//        return redisTemplate;
//    }
//    @Bean
//    public RedisTemplate<String, Object> baseRedisTemplate(JedisConnectionFactory connectionFactory) {
//        // 配置redisTemplate
//        RedisTemplate<String, Object> redisTemplate = new RedisTemplate<>();
//        connectionFactory.setDatabase(10);
//        System.out.println("10---------------------");
//        connectionFactory.afterPropertiesSet();
//        redisTemplate.setConnectionFactory(connectionFactory);
//        redisTemplate.setKeySerializer(new StringRedisSerializer());//key序列化
//        redisTemplate.setValueSerializer(new GenericJackson2JsonRedisSerializer());//value序列化
//        redisTemplate.afterPropertiesSet();
//        return redisTemplate;
//    }

}
