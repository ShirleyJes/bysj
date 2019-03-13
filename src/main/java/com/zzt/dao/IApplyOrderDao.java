package com.zzt.dao;

import com.zzt.model.ApplyOrder;

public interface IApplyOrderDao {
    Integer addApplyOrder(ApplyOrder applyOrder);
    Integer deleteApplyOrder(Integer num);
}
