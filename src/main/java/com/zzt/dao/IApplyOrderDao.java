package com.zzt.dao;

import com.zzt.model.ApplyOrder;

import java.util.List;

public interface IApplyOrderDao {
    Integer addApplyOrder(ApplyOrder applyOrder);
    Integer deleteApplyOrder(Integer num);
    //维修领料单查询
    //查询全部/
}
