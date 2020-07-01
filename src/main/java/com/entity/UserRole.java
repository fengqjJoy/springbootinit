package com.entity;

import java.io.Serializable;

/**
 * t_user_role
 * @author fengqj
 * @date 2020-06-26 11:23:54
 */
public class UserRole implements Serializable {
    /**
     */
    private Integer userid;

    /**
     */
    private Integer roleid;

    private static final long serialVersionUID = 1L;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }
}