package com.controller.daoTest;

import com.dao.TestMapper;
import com.dao.UserMapper;
import com.dto.UserDto;
import com.entity.User;
import com.entity.UserExample;
import com.service.UserService;
import com.system.annotation.AccessLimit;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Project: springbootinit
 * @Package: com.controller.daoTest
 * @Author: 冯前进
 * @Date: 2020-06-26 11:32
 * @Description: TODO
 **/
@RestController
@RequestMapping("/dao")
public class DaoTestController {

    @Resource
    private UserMapper userMapper;

    @Resource
    TestMapper testMapper;
    @Autowired
    UserService userService;

    @RequiresPermissions("user:query")
    @RequestMapping("/getAllUsers.do")
    public Object getAllUsers() {
        List<User> userList2 = testMapper.select();
        List<User> userList = userMapper.selectByExample(new UserExample());
        return userList;
    }

    @RequiresPermissions("user:query2")
    @RequestMapping("/getAllUsers2.do")
    public Object getAllUsers2() {
        List<User> userList = userService.selectByExample(new UserExample());
        userList = userService.selectByExample(new UserExample());
        userList = userService.selectByExample(new UserExample());
        return userList;
    }

    @Transactional(rollbackFor = Exception.class)
    @RequestMapping("/insert.do")
    public Object insert() {
        User user = new User();
        try {
            user.setUsername("张是2");
            user.setPassword("123566");
            testMapper.insert(user);
            testMapper.insert(user);
            testMapper.insert2(user);//错误，测试事务回滚
        } catch (RuntimeException e) {
            e.printStackTrace();
            throw new RuntimeException();
        }
        return user;
    }

    @RequestMapping("getUserByUserName.do")
    @AccessLimit(maxCount=5,seconds = 1)
    public Object getUserByUserName(String username) {
        User user = userMapper.getUserByUserName(username);
//        UserDto userDto = userMapper.getUserRoleByUserName(username);
        return user;
    }
}
