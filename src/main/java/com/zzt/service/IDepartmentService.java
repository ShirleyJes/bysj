package com.zzt.service;

import com.github.pagehelper.PageInfo;
import com.zzt.model.DeptMatDetail;
import com.zzt.model.DeptMatParams;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface IDepartmentService {
    //List<DeptMatDetail> findAll(DeptMatParams deptMatParams);
    List<DeptMatDetail> findDayAll1( DeptMatParams deptMatParams);
    //List<DeptMatDetail> findMonthAll(DeptMatParams deptMatParams);
    PageInfo<DeptMatDetail> findAll(int page,DeptMatParams deptMatParams);
    PageInfo<DeptMatDetail> findDayAll(int page, DeptMatParams deptMatParams);
    PageInfo<DeptMatDetail> findMonthAll(int page,DeptMatParams deptMatParams);
}
