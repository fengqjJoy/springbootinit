package com.dto;

import com.entity.Role;
import com.entity.User;

import java.util.List;

/**
 * @Project: springbootinit
 * @Package: com.dto
 * @Author: 冯前进
 * @Date: 2020-06-26 16:43
 * @Description: TODO
 **/
public class UserDto extends User {
    private List<RoleDto> roleList;

    public List<RoleDto> getRoleList() {
        return roleList;
    }

    public void setRoleList(List<RoleDto> roleList) {
        this.roleList = roleList;
    }
}
