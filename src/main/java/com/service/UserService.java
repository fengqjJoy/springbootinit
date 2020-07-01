package com.service;

import com.dto.UserDto;
import com.entity.User;
import com.entity.UserExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Project: springbootinit
 * @Package: com.service
 * @Author: 冯前进
 * @Date: 2020-06-29 8:59
 * @Description: TODO
 **/

public interface UserService {
    List<User> selectByExample(UserExample example);

    User getUserByUserName(@Param("username") String username);

    UserDto getUserRoleByUserName(@Param("username") String username);
}
