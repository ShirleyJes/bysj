package com.zzt.service.impl;

import com.zzt.dao.IUserDao;
import com.zzt.model.User;
import com.zzt.service.IUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userService")
public class UserServiceImpl implements IUserService {

    @Resource
    private IUserDao userDao;


    @Override
    public boolean loginByName(String username, String psw) {
        User user=new User();
        user.setUsername(username);
        User u=userDao.selectUser(user);
        if(u!=null && u.getPsw().equals(psw))
            return true;
        return false;
    }

    @Override
    public boolean loginByEmail(String email, String psw) {
        User user=new User();
        user.setEmail(email);
        User u=userDao.selectUser(user);
        if(u!=null && u.getPsw().equals(psw))
            return true;
        return false;
    }

    @Override
    public boolean loginByMobile(String mobile, String psw) {
        User user=new User();
        user.setMobile(mobile);
        User u=userDao.selectUser(user);
        if(u!=null && u.getPsw().equals(psw))
            return true;
        return false;
    }

    @Override
    public void register(User user) {
        userDao.insertUser(user);
    }

    @Override
    public Integer getUserId(String username, Integer deptNo) {
        return  userDao.getUserId(username,deptNo);
    }
}
