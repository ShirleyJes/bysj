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
    public void selectUserTest(){
        User user = userService.selectUser(1);
        System.out.println(user.toString());
    }

}
