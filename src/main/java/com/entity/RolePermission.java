package com.entity;

import java.io.Serializable;

/**
 * t_role_permission
 * @author fengqj
 * @date 2020-06-26 11:23:54
 */
public class RolePermission implements Serializable {
    /**
     */
    private Long roleid;

    /**
     */
    private Long permissionid;

    private static final long serialVersionUID = 1L;

    public Long getRoleid() {
        return roleid;
    }

    public void setRoleid(Long roleid) {
        this.roleid = roleid;
    }

    public Long getPermissionid() {
        return permissionid;
    }

    public void setPermissionid(Long permissionid) {
        this.permissionid = permissionid;
    }
}