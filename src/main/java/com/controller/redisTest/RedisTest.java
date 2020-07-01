package com.controller.redisTest;

import com.config.redis.JedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Project: springbootinit
 * @Package: com.controller.redisTest
 * @Author: 冯前进
 * @Date: 2020-06-25 11:12
 * @Description: TODO
 **/
@RestController
@RequestMapping("/redis")
public class RedisTest {

    @Autowired
    JedisUtil jedisUtil;

    @RequestMapping("/put")
    public String put(String key){
       return jedisUtil.set(key,"999999"+key);
    }

//    @Autowired
//    RedisTemplate redisTemplate;
//
//    @Resource(name = "baseRedisHandle")
//    private BaseRedisDao baseRedisDao;
//
//    @Resource(name = "sessionRedisHandle")
//    private BaseRedisDao sessionRedisHandle;
//
//
//    @Resource(name = "baseRedisTemplate")
//    private RedisTemplate baseRedisTemplate;
//
//    @Resource(name = "sessionRedisTemplate")
//    private RedisTemplate sessionRedisTemplate;
//
//    @RequestMapping("/get.do")
//    public Object getByKey(String key) {
//        Object res = redisTemplate.opsForValue().get(key);
//        Object res2 = baseRedisDao.get(key);
//        System.out.println(res);
//        System.out.println(res2);
//        System.out.println(res.equals(res2));
//        return res;
//    }
//
//    @RequestMapping("/put.do")
//    public String putByKey(String key) {
//        baseRedisTemplate.opsForValue().set(key, "这是中文");
//        baseRedisTemplate.opsForValue().set(key + "1", "for english");
//        return "success";
//    }
//    @RequestMapping("/put122.do")
//    public String putByKey122(String key) {
//        baseRedisTemplate.opsForValue().set(key, "这是中文122");
//        baseRedisTemplate.opsForValue().set(key + "1", "for english122");
//        return "success";
//    }
//    @RequestMapping("/put13.do")
//    public String putByKey13(String key) {
//        sessionRedisTemplate.opsForValue().set(key, "这是中文133");
//        sessionRedisTemplate.opsForValue().set(key + "1", "for english133");
//        return "success";
//    }
//
//    @RequestMapping("/put12.do")
//    public String putByKey12(String key) {
//        sessionRedisHandle.set(key, "这是中文12");
//        sessionRedisHandle.set(key + "1", "for english123");
//        return "success";
//    }
}
