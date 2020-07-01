package com.service.implement;

import com.dao.UserMapper;
import com.dto.UserDto;
import com.entity.User;
import com.entity.UserExample;
import com.entity.UserRole;
import com.entity.UserRoleExample;
import com.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Project: springbootinit
 * @Package: com.service
 * @Author: 冯前进
 * @Date: 2020-06-29 8:59
 * @Description: TODO
 **/
@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;

    @Transactional
    public List<User> selectByExample(UserExample example) {
        return userMapper.selectByExample(example);
    }

    @Override
    public User getUserByUserName(String username) {
        return userMapper.getUserByUserName(username);
    }

    @Override
    public UserDto getUserRoleByUserName(String username) {
        return userMapper.getUserRoleByUserName(username);
    }
}
