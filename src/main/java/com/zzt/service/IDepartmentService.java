package com.zzt.service;

import com.zzt.model.DeptMatDetail;
import com.zzt.model.DeptMatParams;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface IDepartmentService {
    List<DeptMatDetail> findAll(DeptMatParams deptMatParams);
    List<DeptMatDetail> findDayAll( DeptMatParams deptMatParams);
    List<DeptMatDetail> findMonthAll(DeptMatParams deptMatParams);
}
