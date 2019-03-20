package com.zzt.controller;

import com.zzt.model.ApplyOrder;
import com.zzt.service.IApplyOrderService;
import com.zzt.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/applyorder")
public class ApplyOrderController {
    @Autowired
    private IApplyOrderService applyOrderService;

    @RequestMapping("applyorderList")
    public ModelAndView findAllApplyOrder(){
        ModelAndView modelAndView=new ModelAndView();
        List<ApplyOrder> applyOrderList=applyOrderService.findAllApplyOrder();
        modelAndView.addObject("applyOrderList",applyOrderList);
        modelAndView.setViewName("applyorder");
        return modelAndView;
    }
    @RequestMapping("deleteApplyorder")
    public ModelAndView deleteApplyOrder(Integer num){
        ModelAndView modelAndView=new ModelAndView();
        applyOrderService.deleteApplyOrder(num);
        List<ApplyOrder> applyOrderList=applyOrderService.findAllApplyOrder();
        modelAndView.addObject("applyOrderList",applyOrderList);
        modelAndView.setViewName("applyorder");
        return modelAndView;
    }
}
