package com.dao;

import com.entity.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

import java.util.List;


/**
 * @Project: springbootinit
 * @Package: com.dao
 * @Author: 冯前进
 * @Date: 2020-06-26 12:29
 * @Description: TODO
 **/
@Mapper
public interface TestMapper {

    @Select("select * from t_user")
    List<User> select();

    @Insert("insert into t_user(username,password) values(#{username},#{password})")
    @Options(useGeneratedKeys=true, keyProperty="id")
    void insert(User user);

    @Insert("insert into t_user2(username,password) values(#{username},#{password})")
    @Options(useGeneratedKeys=true, keyProperty="id")
    void insert2(User user);
}
