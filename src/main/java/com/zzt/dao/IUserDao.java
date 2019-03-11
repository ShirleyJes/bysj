package com.zzt.dao;

import com.zzt.model.User;
import org.apache.ibatis.annotations.Select;

public interface IUserDao {

    User selectUser(long id);

}
