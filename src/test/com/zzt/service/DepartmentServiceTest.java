package com.zzt.service;

import com.zzt.model.DeptMatDetail;
import com.zzt.model.DeptMatParams;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:test.xml"})
public class DepartmentServiceTest {
    @Resource
    private IDepartmentService iDepartmentService;
    @Test
    public void findAllTest(){
        DeptMatParams deptMatParams=new DeptMatParams();
        deptMatParams.setDeptNo(2);
        List<DeptMatDetail> list=iDepartmentService.findAll(deptMatParams);
        System.out.println(list.size());
    }
    @Test
    public void findDayAll() throws Exception{
        DeptMatParams deptMatParams=new DeptMatParams();
        deptMatParams.setDeptNo(1);
        SimpleDateFormat sp = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        Date start = sp.parse("2019-03-14 00:00:00");
        Date end=sp.parse("2019-03-14 23:59:59");
        List<DeptMatDetail> list=iDepartmentService.findDayAll(start,end,deptMatParams);
        System.out.println(list.size());

    }
}
