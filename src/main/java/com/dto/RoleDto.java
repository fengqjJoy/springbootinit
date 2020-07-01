package com.dto;

import com.entity.Permission;
import com.entity.Role;

import java.util.List;

/**
 * @Project: springbootinit
 * @Package: com.dto
 * @Author: 冯前进
 * @Date: 2020-06-26 16:44
 * @Description: TODO
 **/
public class RoleDto extends Role {
    private List<Permission> permissionList;

    public List<Permission> getPermissionList() {
        return permissionList;
    }

    public void setPermissionList(List<Permission> permissionList) {
        this.permissionList = permissionList;
    }
}