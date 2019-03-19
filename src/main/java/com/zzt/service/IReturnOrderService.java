package com.zzt.service;

import com.zzt.model.ReturnOrder;

import java.util.List;

public interface IReturnOrderService {
    List<ReturnOrder> showReturnOrders();
    Integer deleteReturnOrder(Integer rid);
}
