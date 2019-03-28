package com.zzt.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zzt.dao.IRepertoryDao;
import com.zzt.model.Repertory;
import com.zzt.model.Warehouse;
import com.zzt.service.IRepertoryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("repertoryService")
public class RepertoryServiceImpl implements IRepertoryService {
    @Resource
    private IRepertoryDao repertoryDao;
    private int pageSize=5;
    @Override
    public PageInfo<Repertory> selectRepertory(int page,Warehouse warehouse) {
        PageHelper.startPage(page,pageSize);
        List<Repertory> list=repertoryDao.selectRepertory(warehouse);
        return new PageInfo<Repertory>(list);
    }

    @Override
    public PageInfo<Repertory> findAll(int page) {
        PageHelper.startPage(page,pageSize);
        List<Repertory> list=repertoryDao.findAll();
        return new PageInfo<Repertory>(list);
    }

   /* @Override
    public List<Repertory> findAll() {
        return repertoryDao.findAll();
    }*/
}
