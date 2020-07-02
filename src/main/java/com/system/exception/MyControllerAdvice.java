package com.system.exception;

import com.common.ResponseBean;
import com.common.ResponseCode;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @Package: com.system.exception
 * @Class: MyControllerAdvice
 * @Author: 冯前进
 * @date: 2020/7/1 21:40
 * @Description: TODO
 * @Param: param
 * @ReturnType:
 * @Exception
 **/

@ControllerAdvice
@Slf4j
public class MyControllerAdvice {

    @ResponseBody
    @ExceptionHandler(ServiceException.class)
    public ResponseBean serviceExceptionHandler(ServiceException se) {
        return ResponseBean.error(se.getMsg());
    }

    @ResponseBody
    @ExceptionHandler(Exception.class)
    public ResponseBean exceptionHandler(Exception e) {
        log.error("Exception: ", e);
        return ResponseBean.error(ResponseCode.SERVER_ERROR.getMsg());
    }

}
