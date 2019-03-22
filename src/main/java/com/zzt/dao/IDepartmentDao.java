package com.zzt.dao;

import com.zzt.model.DeptMatDetail;
import com.zzt.model.DeptMatParams;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface IDepartmentDao {
    //1、部门明细查询
    List<DeptMatDetail> findAll(DeptMatParams deptMatParams);
    //2、部门日报表
    List<DeptMatDetail> findDayAll(DeptMatParams deptMatParams);
    //3、部门月报表
    List<DeptMatDetail> findMonthAll(DeptMatParams deptMatParams);
}
