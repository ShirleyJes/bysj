package com.zzt.dao;

import com.zzt.model.ApplyOrder;

import java.util.List;

public interface IApplyOrderDao {
    Integer addApplyOrder(ApplyOrder applyOrder);
    Integer deleteApplyOrder(Integer num);
    //维修领料单查询
    //查询全部/
    List<ApplyOrder> findAllApplyOrder();
    //根据领料单状态查询
    List<ApplyOrder> findByApplyOrderState(Integer sid);
}
