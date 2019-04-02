package com.zzt.service;

import com.github.pagehelper.PageInfo;
import com.zzt.dao.IDepartmentDao;
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
    public void findAll(){
        DeptMatParams deptMatParams=new DeptMatParams();
        PageInfo<DeptMatDetail> deptMatDetailPageInfo=iDepartmentService.findAll(1,deptMatParams);
        System.out.println("第2页长度: "+deptMatDetailPageInfo.getList().size());
        for(DeptMatDetail deptMatDetail:deptMatDetailPageInfo.getList()){
            System.out.println(deptMatDetail.getMatCode());
        }
    }
   /* @Test
    public void findAllTest(){
        DeptMatParams deptMatParams=new DeptMatParams();
        deptMatParams.setDeptNo(2);
        List<DeptMatDetail> list=iDepartmentService.findAll(deptMatParams);
        for(DeptMatDetail deptMatDetail:list){
            System.out.println(deptMatDetail.getMatCode());
        }
        System.out.println(list.size());
    }*/
    @Test
    public void findDayAll() throws Exception{
        DeptMatParams deptMatParams=new DeptMatParams();
        SimpleDateFormat sp = new SimpleDateFormat("yyyy-MM-dd");
        Date start = sp.parse("2019-03-07");
        deptMatParams.setStart(start);
        List<DeptMatDetail> list=iDepartmentService.findDayAll1(deptMatParams);
        System.out.println(list.size());

    }

  /*  @Test
    public void findMonthAll() throws Exception{
        DeptMatParams deptMatParams=new DeptMatParams();
        SimpleDateFormat sp = new SimpleDateFormat("yyyy-MM");
        Date start = sp.parse("2018-04");
        deptMatParams.setStart(start);
        List<DeptMatDetail> list=iDepartmentService.findMonthAll(deptMatParams);
        System.out.println(list.size());

    }*/

}
