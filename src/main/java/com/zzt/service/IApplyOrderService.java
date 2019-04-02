package com.zzt.service;

import com.github.pagehelper.PageInfo;
import com.zzt.model.ApplyOrder;

import java.util.List;

public interface IApplyOrderService {
    Integer addApplyOrder(ApplyOrder applyOrder);
    Integer deleteApplyOrder(Integer num);
    //List<ApplyOrder> findAllApplyOrder();
    //List<ApplyOrder> findByApplyOrderState(Integer sid);
    PageInfo<ApplyOrder> findAllApplyOrder(int page);
    PageInfo<ApplyOrder> findByApplyOrderState(int page,Integer sid);
}
