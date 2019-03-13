package com.zzt.dao;

import com.zzt.model.Repertory;

import java.util.List;

public interface IRepertoryDao {
    List<Repertory> selectRepertory(Integer wNumber);
}
