package com.zzt.service.impl;
import com.zzt.dao.IOrderDao;
import org.springframework.stereotype.Service;
import com.zzt.model.ApplyOrder;
import com.zzt.service.IOrderService;

import javax.annotation.Resource;

@Service("orderService")
public class OrderServiceImpl implements IOrderService {
    @Resource
    private IOrderDao orderDao;
    @Override
    public Integer addOrder(ApplyOrder applyOrder) {
        return orderDao.addOrder(applyOrder);
    }
}
