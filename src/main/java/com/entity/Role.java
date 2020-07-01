package com.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * t_role
 * @author fengqj
 * @date 2020-06-26 11:23:54
 */
public class Role implements Serializable {
    /**
     */
    private Integer id;

    /**
     */
    private String name;

    /**
     */
    private String roledescription;

    /**
     */
    private String type;

    /**
     */
    private Long createuser;

    /**
     */
    private String cscode;

    /**
     */
    private Date createtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getRoledescription() {
        return roledescription;
    }

    public void setRoledescription(String roledescription) {
        this.roledescription = roledescription == null ? null : roledescription.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public Long getCreateuser() {
        return createuser;
    }

    public void setCreateuser(Long createuser) {
        this.createuser = createuser;
    }

    public String getCscode() {
        return cscode;
    }

    public void setCscode(String cscode) {
        this.cscode = cscode == null ? null : cscode.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}