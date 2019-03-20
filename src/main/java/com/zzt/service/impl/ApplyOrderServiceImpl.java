package com.zzt.service.impl;
import com.zzt.dao.IApplyOrderDao;
import org.springframework.stereotype.Service;
import com.zzt.model.ApplyOrder;
import com.zzt.service.IApplyOrderService;

import javax.annotation.Resource;
import java.util.List;

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

    @Override
    public List<ApplyOrder> findAllApplyOrder() {
        return applyOrderDao.findAllApplyOrder();
    }

    @Override
    public List<ApplyOrder> findByApplyOrderState(Integer sid) {
        return applyOrderDao.findByApplyOrderState(sid);
    }
}
