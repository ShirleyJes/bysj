package com.zzt.controller;

import com.zzt.model.DeptMatDetail;
import com.zzt.model.DeptMatParams;
import com.zzt.service.IDepartmentService;
import com.zzt.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/department")
public class DepartmentController {
    @Autowired
    private IDepartmentService departmentService;

    @RequestMapping("departmentDetail")
    public ModelAndView findAll(DeptMatParams deptMatParams){
        ModelAndView modelAndView=new ModelAndView();
        List<DeptMatDetail> deptMatDetailList=departmentService.findAll(deptMatParams);
        modelAndView.addObject("deptMatDetailList",deptMatDetailList);
        modelAndView.setViewName("departmentDetail");
        return modelAndView;
    }
    @RequestMapping("departmentDayDetail")
    public ModelAndView findDayAll(DeptMatParams deptMatParams) throws Exception{
        ModelAndView modelAndView=new ModelAndView();
        SimpleDateFormat sp = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        Date start = sp.parse("2019-03-14 00:00:00");
        Date end   = sp.parse("2019-03-14 23:59:59");
        deptMatParams.setStart(start);
        deptMatParams.setEnd(end);
        List<DeptMatDetail> deptMatDetailList=departmentService.findDayAll(deptMatParams);
        modelAndView.addObject("deptMatDetailList",deptMatDetailList);
        modelAndView.setViewName("departmentDayDetail");
        return modelAndView;
    }

    @RequestMapping("departmentMonDetail")
    public ModelAndView findMonthAll(DeptMatParams deptMatParams) throws Exception{
        ModelAndView modelAndView=new ModelAndView();
        SimpleDateFormat sp = new SimpleDateFormat("yyyy-MM");
        Date start = sp.parse("2018-04");
        deptMatParams.setStart(start);
        List<DeptMatDetail> deptMatDetailList=departmentService.findMonthAll(deptMatParams);
        modelAndView.addObject("deptMatDetailList",deptMatDetailList);
        modelAndView.setViewName("departmentMonDetail");
        return modelAndView;
    }



}
