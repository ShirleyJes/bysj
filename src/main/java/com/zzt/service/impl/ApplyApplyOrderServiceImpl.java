package com.zzt.service.impl;
import com.zzt.dao.IApplyOrderDao;
import org.springframework.stereotype.Service;
import com.zzt.model.ApplyOrder;
import com.zzt.service.IApplyOrderService;

import javax.annotation.Resource;

@Service("orderService")
public class ApplyApplyOrderServiceImpl implements IApplyOrderService {
    @Resource
    private IApplyOrderDao orderDao;
    @Override
    public Integer addApplyOrder(ApplyOrder applyOrder) {
        return orderDao.addApplyOrder(applyOrder);
    }

    @Override
    public Integer deleteApplyOrder(Integer num) {
        return orderDao.deleteApplyOrder(num);
    }
}
