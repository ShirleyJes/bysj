package com.zzt.service;

import com.zzt.model.User;

public interface IUserService {

    //检验用户登录
    boolean loginByName(String username,String psw);
    boolean loginByEmail(String email,String psw);
    boolean loginByMobile(String mobile,String psw);
    //注册
    void register(User user);
    //查询主键
    Integer getUserId(String username,Integer deptNo);
}
