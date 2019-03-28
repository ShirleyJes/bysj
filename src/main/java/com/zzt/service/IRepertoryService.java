package com.zzt.service;

import com.github.pagehelper.PageInfo;
import com.zzt.model.Repertory;
import com.zzt.model.Warehouse;

import java.util.List;

public interface IRepertoryService {
   PageInfo<Repertory> selectRepertory(int page,Warehouse warehouse);
   PageInfo<Repertory> findAll(int page);
    //List<Repertory> findAll();
}
