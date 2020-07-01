package com.controller.Login;

import com.common.ResponseBean;
import com.config.shiro.ShiroUserNamePasswordToken;
import com.config.shiro.UserUtil;
import com.dto.UserDto;
import com.entity.User;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.subject.Subject;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.security.auth.login.LoginException;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * @Project: springbootinit
 * @Package: com.controller.Login
 * @Author: 冯前进
 * @Date: 2020-06-29 20:06
 * @Description: TODO
 **/
@Slf4j
@RestController
@RequestMapping("sys")
public class LoginController {

    @RequestMapping("/login.do")
    public ResponseBean login(String username, String password,HttpSession session) {
        if (StringUtils.isBlank(username)) {
            return ResponseBean.error("用户名不能为空！");
        }
        if (StringUtils.isBlank(password)) {
            return ResponseBean.error("密码不能为空！");
        }
        ShiroUserNamePasswordToken usernamePasswordToken;
        try {
            // 获取Subject实例对象，用户实例
            Subject subject = SecurityUtils.getSubject();
            usernamePasswordToken= new ShiroUserNamePasswordToken(username, password, "");
            subject.login(usernamePasswordToken);//登录
        } catch (UnknownAccountException e) {
//            log.error("账户不存在异常：", e);
            return ResponseBean.error("账号不存在!");
        } catch (IncorrectCredentialsException e) {
//            log.error("凭据错误（密码错误）异常：", e);
            return ResponseBean.error("密码不正确!");
        } catch (AuthenticationException e) {
//            log.error("身份验证异常:", e);
            return ResponseBean.error("用户验证失败!");
        }
        Map<String,Object> res= new HashMap();
        User user = UserUtil.getCurrentUser();
        res.put("user",user);
        res.put("token",session.getId());
        return ResponseBean.success("登录成功！",res);
    }
    @GetMapping("/getLoginInfo.do")
    public UserDto getLoginInfo() {
        UserDto sysUser = UserUtil.getCurrentUser();
        if (sysUser != null) {
            sysUser.setSalt("");
            sysUser.setPassword("");
        }
        return sysUser;
    }
}
