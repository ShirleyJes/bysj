package com.zzt.dao;

import com.zzt.model.User;
import org.apache.ibatis.annotations.Param;

public interface IUserDao {
    //Integer deleteUser(Integer id);
    //添加用户
    Integer insertUser(User user);
    //登录查找密码
    User selectUser(User user);
    //获取用户主键
    Integer getUserId(@Param("username") String username, @Param("deptNo")Integer deptNo);



}
