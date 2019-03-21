package com.zzt.dao;

import com.zzt.model.ReturnOrder;

import java.util.List;

public interface IReturnOrderDao {
 /*  A、退料单管理
    操作：
    1、显示所有退料单
    2、指定id删除
    3、修改
    */
    List<ReturnOrder> showReturnOrders();
    Integer deleteReturnOrder(Integer rid);
    List<ReturnOrder> selectByState(Integer vsid);
}
