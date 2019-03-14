package com.zzt.service.impl;
import com.zzt.dao.IApplyOrderDao;
import org.springframework.stereotype.Service;
import com.zzt.model.ApplyOrder;
import com.zzt.service.IApplyOrderService;

import javax.annotation.Resource;

@Service("applyOrderService")
public class ApplyOrderServiceImpl implements IApplyOrderService {
    @Resource
    private IApplyOrderDao applyOrderDao;
    @Override
    public Integer addApplyOrder(ApplyOrder applyOrder) {
        return applyOrderDao.addApplyOrder(applyOrder);
    }

    @Override
    public Integer deleteApplyOrder(Integer num) {
        return applyOrderDao.deleteApplyOrder(num);
    }
}
