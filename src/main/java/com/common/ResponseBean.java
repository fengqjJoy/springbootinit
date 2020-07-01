package com.common;

import java.io.Serializable;

/**
 * @Project: springbootinit
 * @Package: com.common
 * @Author: 冯前进
 * @Date: 2020-06-29 16:35
 * @Description: TODO
 **/
public class ResponseBean implements Serializable {

    private static final long serialVersionUID = 15668746746548643L;

    private Integer responseCode;

    private String msg;

    private Object data;

    public ResponseBean() {
    }

    public ResponseBean(Integer responseCode, String msg, Object data) {
        this.responseCode = responseCode;
        this.msg = msg;
        this.data = data;
    }

    public ResponseBean(Integer responseCode, String msg) {
        this.responseCode = responseCode;
        this.msg = msg;
    }

    public static ResponseBean success() {
        return new ResponseBean(ResponseCode.SUCCESS.getCode(), null, null);
    }

    public static ResponseBean success(String msg) {
        return new ResponseBean(ResponseCode.SUCCESS.getCode(), msg, null);
    }

    public static ResponseBean success(Object data) {
        return new ResponseBean(ResponseCode.SUCCESS.getCode(), null, data);
    }

    public static ResponseBean success(String msg, Object data) {
        return new ResponseBean(ResponseCode.SUCCESS.getCode(), msg, data);
    }

    public static ResponseBean error(String msg) {
        return new ResponseBean(ResponseCode.ERROR.getCode(), msg, null);
    }

    public static ResponseBean error(Object data) {
        return new ResponseBean(ResponseCode.ERROR.getCode(), null, data);
    }

    public static ResponseBean error(String msg, Object data) {
        return new ResponseBean(ResponseCode.ERROR.getCode(), msg, data);
    }

    public Integer getResponseCode() {
        return responseCode;
    }

    public void setResponseCode(Integer responseCode) {
        this.responseCode = responseCode;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}