package com.zzt.service;

import com.github.pagehelper.PageInfo;
import com.zzt.model.ApplyOrder;

import java.util.List;
import java.util.Map;

public interface IApplyOrderService {
    Map<String,String> addApplyOrder(ApplyOrder applyOrder);
    Integer deleteApplyOrder(Integer num);
    //List<ApplyOrder> findAllApplyOrder();
    //List<ApplyOrder> findByApplyOrderState(Integer sid);
    PageInfo<ApplyOrder> findAllApplyOrder(int page);
    PageInfo<ApplyOrder> findByApplyOrderState(int page,Integer sid);
}
