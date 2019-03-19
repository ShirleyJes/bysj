package com.zzt.service;

import com.zzt.model.ReturnOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:test.xml"})
public class ReturnOrderTest {
    @Resource
    private IReturnOrderService iReturnOrderService;
    @Test
    public void showReturnOrdersTest(){
        List<ReturnOrder> list=iReturnOrderService.showReturnOrders();
        System.out.println(list.size());
    }
    @Test
    public void deleteReturnOrderTest(){
        iReturnOrderService.deleteReturnOrder(3);
    }
}
