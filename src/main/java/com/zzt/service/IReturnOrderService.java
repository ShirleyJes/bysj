package com.zzt.service;

import com.github.pagehelper.PageInfo;
import com.zzt.model.ReturnOrder;

import java.util.List;

public interface IReturnOrderService {
    //List<ReturnOrder> showReturnOrders();
    Integer deleteReturnOrder(Integer rid);
   // List<ReturnOrder> selectByState(Integer vsid);
    PageInfo<ReturnOrder> showReturnOrders(int page);
    PageInfo<ReturnOrder> selectByState(int page,Integer vsid);
}
