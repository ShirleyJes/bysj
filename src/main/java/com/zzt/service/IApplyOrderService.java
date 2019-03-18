package com.zzt.service;

import com.zzt.model.ApplyOrder;

import java.util.List;

public interface IApplyOrderService {
    Integer addApplyOrder(ApplyOrder applyOrder);
    Integer deleteApplyOrder(Integer num);
    List<ApplyOrder> findAllApplyOrder();
}
