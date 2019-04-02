package com.zzt.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zzt.dao.IDepartmentDao;
import com.zzt.model.DeptMatDetail;
import com.zzt.model.DeptMatParams;
import com.zzt.service.IDepartmentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
@Service("departmentService")
public class DepartmentServiceImpl implements IDepartmentService {
    @Resource
    private IDepartmentDao iDepartmentDao;
    private  int pageSize=5;

    @Override
    public PageInfo<DeptMatDetail> findAll(int page, DeptMatParams deptMatParams) {
        PageHelper.startPage(page,pageSize);
        List<DeptMatDetail> deptMatDetailList=iDepartmentDao.findAll(deptMatParams);
        System.out.println("dept service中都得到的长度:"+deptMatDetailList.size());
        return new PageInfo<DeptMatDetail>(deptMatDetailList);
    }

    @Override
    public PageInfo<DeptMatDetail> findDayAll(int page, DeptMatParams deptMatParams) {
        PageHelper.startPage(page,pageSize);
        List<DeptMatDetail> deptMatDetailList=iDepartmentDao.findDayAll(deptMatParams);
        return new PageInfo<DeptMatDetail>(deptMatDetailList);
    }

    @Override
    public PageInfo<DeptMatDetail> findMonthAll(int page, DeptMatParams deptMatParams) {
        PageHelper.startPage(page,pageSize);
        List<DeptMatDetail> deptMatDetailList=iDepartmentDao.findMonthAll(deptMatParams);
        return new PageInfo<DeptMatDetail>(deptMatDetailList);
    }
    @Override
    public List<DeptMatDetail> findDayAll1(DeptMatParams deptMatParams) {
        return iDepartmentDao.findDayAll(deptMatParams);
    }
    /* @Override
    public List<DeptMatDetail> findAll(DeptMatParams deptMatParams) {
        return iDepartmentDao.findAll(deptMatParams);
    }



    @Override
    public List<DeptMatDetail> findMonthAll(DeptMatParams deptMatParams) {
        return iDepartmentDao.findMonthAll(deptMatParams);
    }*/
}
