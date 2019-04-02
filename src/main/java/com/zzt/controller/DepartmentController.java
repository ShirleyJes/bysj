package com.zzt.controller;

import com.github.pagehelper.PageInfo;
import com.zzt.model.DeptMatDetail;
import com.zzt.model.DeptMatParams;
import com.zzt.service.IDepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
    public ModelAndView findAll(@RequestParam(value = "page" ,defaultValue="1") int page,DeptMatParams deptMatParams){
        ModelAndView modelAndView=new ModelAndView();
        System.out.println("明细表 ："+deptMatParams.toString());
        PageInfo<DeptMatDetail> deptMatDetailPageInfo=departmentService.findAll(page,deptMatParams);
        modelAndView.addObject("deptMatDetailPageInfo",deptMatDetailPageInfo);
        System.out.println(deptMatDetailPageInfo.getList().size());
        modelAndView.setViewName("departmentDetail");
        return modelAndView;
    }
    @RequestMapping("departmentDayDetail")
    public ModelAndView findDayAll(@RequestParam(value = "page" ,defaultValue="1") int page,DeptMatParams deptMatParams) throws Exception{
        ModelAndView modelAndView=new ModelAndView();
        System.out.println("日报表: "+deptMatParams.toString());
        PageInfo<DeptMatDetail> deptMatDetailPageInfo=departmentService.findDayAll(page,deptMatParams);
        modelAndView.addObject("deptMatDetailPageInfo",deptMatDetailPageInfo);
        modelAndView.setViewName("departmentDayDetail");
        return modelAndView;
    }

    @RequestMapping("departmentMonDetail")
    public ModelAndView findMonthAll(@RequestParam(value = "page" ,defaultValue="1") int page,DeptMatParams deptMatParams) throws Exception{
        ModelAndView modelAndView=new ModelAndView();
        System.out.println("月报表: "+deptMatParams.toString());
        PageInfo<DeptMatDetail> deptMatDetailPageInfo=departmentService.findMonthAll(page,deptMatParams);
        modelAndView.addObject("deptMatDetailPageInfo",deptMatDetailPageInfo);
        modelAndView.setViewName("departmentMonDetail");
        return modelAndView;
    }

  /* @RequestMapping("departmentDetail")
   public ModelAndView findAll(DeptMatParams deptMatParams){
       ModelAndView modelAndView=new ModelAndView();
       System.out.println("明细表 ："+deptMatParams.toString());
       List<DeptMatDetail> deptMatDetailPageInfo=departmentService.findAll(deptMatParams);
       modelAndView.addObject("deptMatDetailPageInfo",deptMatDetailPageInfo);
       System.out.println(deptMatDetailPageInfo.size());
       modelAndView.setViewName("departmentDetail");
       return modelAndView;
   }
    @RequestMapping("departmentDayDetail")
    public ModelAndView findDayAll(DeptMatParams deptMatParams) throws Exception{
        ModelAndView modelAndView=new ModelAndView();
        System.out.println("日报表: "+deptMatParams.toString());
        List<DeptMatDetail> deptMatDetailPageInfo=departmentService.findDayAll(deptMatParams);
        modelAndView.addObject("deptMatDetailPageInfo",deptMatDetailPageInfo);
        modelAndView.setViewName("departmentDayDetail");
        return modelAndView;
    }

    @RequestMapping("departmentMonDetail")
    public ModelAndView findMonthAll(DeptMatParams deptMatParams) throws Exception{
        ModelAndView modelAndView=new ModelAndView();
        System.out.println("月报表: "+deptMatParams.toString());
       *//* SimpleDateFormat sp = new SimpleDateFormat("yyyy-MM");
        if(deptMatParams.getStart()!=null){
            Date t=deptMatParams.getStart();

        }*//*
        List<DeptMatDetail> deptMatDetailPageInfo=departmentService.findMonthAll(deptMatParams);
        modelAndView.addObject("deptMatDetailPageInfo",deptMatDetailPageInfo);
        modelAndView.setViewName("departmentMonDetail");
        return modelAndView;
    }
*/


}
