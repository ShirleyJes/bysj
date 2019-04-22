package com.zzt.service;

import com.zzt.model.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:test.xml"})
public class UserTest {

    @Resource
    private IUserService userService;

    @Test
    public void loginTest(){
        String username="张智涛";
        String psw="123456";
        System.out.println(userService.loginByName(username,psw));
    }
    @Test
    public void getUserId(){
        String username="张智涛";
        Integer deptNo=1;
        System.out.println(userService.getUserId(username,deptNo));
    }
}
