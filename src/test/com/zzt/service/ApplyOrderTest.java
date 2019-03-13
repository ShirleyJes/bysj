package com.zzt.service;
import com.zzt.model.ApplyOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:test.xml"})
public class ApplyOrderTest {
    @Resource
    private IApplyOrderService orderService;
    @Test
    public void addApplyOrderTest() throws Exception{
        ApplyOrder applyOrder =new ApplyOrder();
        applyOrder.setNum(3);
        SimpleDateFormat sp = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        Date sqlDate = sp.parse(sp.format(new Date()));
        applyOrder.setDate(sqlDate);
        applyOrder.setType("无");
        applyOrder.setComm("tesing  add applyOrder");
        applyOrder.setApproverid(2);
        applyOrder.setApplicantid(1);
        orderService.addApplyOrder(applyOrder);
    }
    @Test
    public void deleteApplyOrderTest(){
        orderService.deleteApplyOrder(3);
    }
}
