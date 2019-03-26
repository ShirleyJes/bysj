package com.zzt.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zzt.dao.IRepertoryDao;
import com.zzt.model.Repertory;
import com.zzt.service.IRepertoryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("repertoryService")
public class RepertoryServiceImpl implements IRepertoryService {
    @Resource
    private IRepertoryDao repertoryDao;
    @Override
    public List<Repertory> selectRepertory(Integer wNumber) {
        return repertoryDao.selectRepertory(wNumber);
    }

    /*@Override
    public PageInfo<Repertory> findAll(int page, int pageSize) {
        PageHelper.startPage(page,pageSize);
        List<Repertory> list=repertoryDao.findAll();
        return new PageInfo<Repertory>(list);
    }*/

    @Override
    public List<Repertory> findAll() {
        return repertoryDao.findAll();
    }
}
