package com.zzt.controller;

import com.zzt.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/user")
@SessionAttributes("uer")
public class UserController {

    @Autowired
    private IUserService userService;


    @RequestMapping("/login")
    public ModelAndView loginByName(String username,String psw)  {
        ModelAndView mv = new ModelAndView();
       boolean flag = userService.loginByName(username,psw);
        if(flag){
            System.out.println("登录成功");
            mv.addObject("msg", "登录成功");
            mv.setViewName("repertory");
        }else {
            mv.addObject("msg", "登录失败");
            mv.setViewName("login");
        }
        return mv;
    }
}
