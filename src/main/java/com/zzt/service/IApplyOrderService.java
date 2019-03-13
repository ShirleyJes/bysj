package com.zzt.service;

import com.zzt.model.ApplyOrder;

public interface IApplyOrderService {
    Integer addApplyOrder(ApplyOrder applyOrder);
    Integer deleteApplyOrder(Integer num);
}
