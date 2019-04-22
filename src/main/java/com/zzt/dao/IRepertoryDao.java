package com.zzt.dao;

import com.zzt.model.Repertory;
import com.zzt.model.Warehouse;

import java.util.List;

public interface IRepertoryDao {
    List<Repertory> selectRepertory(Warehouse warehouse);
    List<Repertory> findAll();
    //查找仓库
    String getWName(Integer matCode);
}
