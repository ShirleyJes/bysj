package com.zzt.service.impl;

import com.zzt.dao.IReturnOrderDao;
import com.zzt.model.ReturnOrder;
import com.zzt.service.IReturnOrderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("returnOrderService")
public class ReturnOrderServiceImpl implements IReturnOrderService {
    @Resource private IReturnOrderDao iReturnOrderDao;
    @Override
    public List<ReturnOrder> showReturnOrders() {
        return iReturnOrderDao.showReturnOrders();
    }

    @Override
    public Integer deleteReturnOrder(Integer rid) {
        return iReturnOrderDao.deleteReturnOrder(rid);
    }
}
