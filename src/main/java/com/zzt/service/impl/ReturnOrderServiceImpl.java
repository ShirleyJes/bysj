package com.zzt.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zzt.dao.IReturnOrderDao;
import com.zzt.model.ReturnOrder;
import com.zzt.service.IReturnOrderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("returnOrderService")
public class ReturnOrderServiceImpl implements IReturnOrderService {
    @Resource
    private IReturnOrderDao iReturnOrderDao;
    private int pageSize=5;
    @Override
    public PageInfo<ReturnOrder> showReturnOrders(int page) {
        PageHelper.startPage(page,pageSize);
        List<ReturnOrder> returnOrderList=iReturnOrderDao.showReturnOrders();
        return new PageInfo<ReturnOrder>(returnOrderList);
    }

    @Override
    public PageInfo<ReturnOrder> selectByState(int page, Integer vsid) {
        PageHelper.startPage(page,pageSize);
        List<ReturnOrder> returnOrderList=iReturnOrderDao.selectByState(vsid);
        return new PageInfo<ReturnOrder>(returnOrderList);
    }
    /*@Override
    public List<ReturnOrder> showReturnOrders() {
        return iReturnOrderDao.showReturnOrders();
    }*/

    @Override
    public Integer deleteReturnOrder(Integer rid) {
        return iReturnOrderDao.deleteReturnOrder(rid);
    }

  /*  @Override
    public List<ReturnOrder> selectByState(Integer vsid) {
        return iReturnOrderDao.selectByState(vsid);
    }
    */
}
