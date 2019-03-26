package com.zzt.dao;

import com.zzt.model.User;

public interface IUserDao {
    //Integer deleteUser(Integer id);
    //添加用户
    Integer insertUser(User user);
    //登录查找密码
    User selectUser(User user);




}
