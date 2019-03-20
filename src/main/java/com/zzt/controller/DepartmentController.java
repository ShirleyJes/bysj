package com.zzt.controller;

import com.zzt.model.DeptMatDetail;
import com.zzt.model.DeptMatParams;
import com.zzt.service.IDepartmentService;
import com.zzt.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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


}
