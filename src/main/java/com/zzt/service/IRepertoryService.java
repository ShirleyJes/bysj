package com.zzt.service;

import com.github.pagehelper.PageInfo;
import com.zzt.model.Repertory;

import java.util.List;

public interface IRepertoryService {
    List<Repertory> selectRepertory(Integer wNumber);
//    PageInfo<Repertory> findAll(int page,int pageSize);
    List<Repertory> findAll();
}
