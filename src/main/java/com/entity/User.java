package com.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * t_user
 * @author fengqj
 * @date 2020-06-26 11:23:54
 */
public class User implements Serializable {
    /**
     */
    private Long id;

    /**
     * 用户名
     */
    private String username;

    /**
     * 密码
     */
    private String password;

    /**
     */
    private String salt;

    /**
     */
    private String nickname;

    /**
     */
    private String realname;

    /**
     */
    private String headimgurl;

    /**
     */
    private String phone;

    /**
     */
    private String telephone;

    /**
     */
    private String email;

    /**
     */
    private Date birthday;

    /**
     */
    private Integer sex;

    /**
     */
    private Integer status;

    /**
     */
    private String cscode;

    /**
     */
    private String xqcode;

    /**
     */
    private String usertype;

    /**
     */
    private Date createtime;

    /**
     */
    private String bak1;

    /**
     */
    private String bak2;

    /**
     */
    private Integer bak3;

    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt == null ? null : salt.trim();
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname == null ? null : nickname.trim();
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname == null ? null : realname.trim();
    }

    public String getHeadimgurl() {
        return headimgurl;
    }

    public void setHeadimgurl(String headimgurl) {
        this.headimgurl = headimgurl == null ? null : headimgurl.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone == null ? null : telephone.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getCscode() {
        return cscode;
    }

    public void setCscode(String cscode) {
        this.cscode = cscode == null ? null : cscode.trim();
    }

    public String getXqcode() {
        return xqcode;
    }

    public void setXqcode(String xqcode) {
        this.xqcode = xqcode == null ? null : xqcode.trim();
    }

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype == null ? null : usertype.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getBak1() {
        return bak1;
    }

    public void setBak1(String bak1) {
        this.bak1 = bak1 == null ? null : bak1.trim();
    }

    public String getBak2() {
        return bak2;
    }

    public void setBak2(String bak2) {
        this.bak2 = bak2 == null ? null : bak2.trim();
    }

    public Integer getBak3() {
        return bak3;
    }

    public void setBak3(Integer bak3) {
        this.bak3 = bak3;
    }
}