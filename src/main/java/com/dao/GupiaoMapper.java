package com.dao;

import com.controller.worm.Gu;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

/**
 * @Project: springbootinit
 * @Package: com.dao
 * @Author: 冯前进
 * @Date: 2020-07-09 16:17
 * @Description: TODO
 **/
@Mapper
public interface GupiaoMapper {

    @Insert("insert into gu(markettype, name, code, xjfh, allocationplan, gqdjr, rate, nowprice)" +
            "values (#{markettype}, #{name}, #{code}, #{xjfh}, #{allocationplan}, #{gqdjr}, #{rate}, #{nowprice})")
     void insert(Gu gu);
}
