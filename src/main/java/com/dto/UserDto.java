package com.dto;

import com.entity.Role;
import com.entity.User;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

import java.util.List;

/**
 * @Project: springbootinit
 * @Package: com.dto
 * @Author: 冯前进
 * @Date: 2020-06-26 16:43
 * @Description: TODO
 **/

@JsonSerialize(include=JsonSerialize.Inclusion.NON_NULL)
public class UserDto extends User {
    private List<RoleDto> roleList;

    public List<RoleDto> getRoleList() {
        return roleList;
    }

    public void setRoleList(List<RoleDto> roleList) {
        this.roleList = roleList;
    }
}
