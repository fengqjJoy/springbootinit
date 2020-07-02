package com.system.exception;

/**
 * 业务逻辑异常
 * @Package: com.system.exception
 * @Class: ServiceException
 * @Author: 冯前进
 * @date: 2020/7/1 21:40
 * @Description: TODO
 * @Param: param
 * @ReturnType:
 * @Exception
 **/
public class ServiceException extends RuntimeException{

    private String code;
    private String msg;

    public ServiceException() {
    }

    public ServiceException(String msg) {
        this.msg = msg;
    }

    public ServiceException(String code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
