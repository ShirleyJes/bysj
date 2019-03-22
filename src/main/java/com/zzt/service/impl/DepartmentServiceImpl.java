package com.zzt.service.impl;

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
    @Override
    public List<DeptMatDetail> findAll(DeptMatParams deptMatParams) {
        return iDepartmentDao.findAll(deptMatParams);
    }

    @Override
    public List<DeptMatDetail> findDayAll(DeptMatParams deptMatParams) {
        return iDepartmentDao.findDayAll(deptMatParams);
    }

    @Override
    public List<DeptMatDetail> findMonthAll(DeptMatParams deptMatParams) {
        return iDepartmentDao.findMonthAll(deptMatParams);
    }
}
