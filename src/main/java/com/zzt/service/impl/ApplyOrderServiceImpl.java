package com.zzt.service.impl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
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
    private int pageSize=5;
    @Override
    public Integer addApplyOrder(ApplyOrder applyOrder) {
        return applyOrderDao.addApplyOrder(applyOrder);
    }

    @Override
    public Integer deleteApplyOrder(Integer num) {
        return applyOrderDao.deleteApplyOrder(num);
    }

    @Override
    public PageInfo<ApplyOrder> findAllApplyOrder(int page) {
        PageHelper.startPage(page,pageSize);
        List<ApplyOrder> applyOrderList=applyOrderDao.findAllApplyOrder();
        return new PageInfo<ApplyOrder>(applyOrderList);
    }

    @Override
    public PageInfo<ApplyOrder> findByApplyOrderState(int page,Integer sid) {
        PageHelper.startPage(page,pageSize);
        List<ApplyOrder> applyOrderList=applyOrderDao.findByApplyOrderState(sid);
        return new PageInfo<ApplyOrder>(applyOrderList);
    }

    /* @Override
    public List<ApplyOrder> findAllApplyOrder() {
        return applyOrderDao.findAllApplyOrder();
    }

    @Override
    public List<ApplyOrder> findByApplyOrderState(Integer sid) {
        return applyOrderDao.findByApplyOrderState(sid);
    }*/
}
