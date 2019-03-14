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
    private IApplyOrderService applyOrderService;
    @Test
    public void addApplyOrderTest() throws Exception{
        ApplyOrder applyOrder =new ApplyOrder();
        SimpleDateFormat sp = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        Date sqlDate = sp.parse(sp.format(new Date()));
        applyOrder.setCreatedate(sqlDate);
        applyOrder.setType("无");
        applyOrder.setComm("tesing  add applyOrder");
        applyOrder.setApproverid(2);
        applyOrder.setApplicantid(1);
        applyOrder.setOperation("增加");
        applyOrder.setSid(1);
        applyOrderService.addApplyOrder(applyOrder);
    }
    @Test
    public void deleteApplyOrderTest(){
        applyOrderService.deleteApplyOrder(8);
    }
}
