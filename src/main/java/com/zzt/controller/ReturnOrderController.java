package com.zzt.controller;

import com.zzt.model.ReturnOrder;
import com.zzt.service.IReturnOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/returnOrder")
public class ReturnOrderController {
    @Autowired
    private IReturnOrderService returnOrderService;
    @RequestMapping("returnOrderList")
    public ModelAndView findAllReturnOrder(){
        ModelAndView modelAndView=new ModelAndView();
        List<ReturnOrder> returnOrderList=returnOrderService.showReturnOrders();
        modelAndView.addObject("returnOrderList",returnOrderList);
        modelAndView.setViewName("returnOrderManage");
        return modelAndView;
    }
    @RequestMapping("selectByState/{vsid}")
    public ModelAndView selectByState(@PathVariable("vsid")Integer vsid){
        ModelAndView modelAndView=new ModelAndView();
        List<ReturnOrder> returnOrderList=returnOrderService.selectByState(vsid);
        modelAndView.addObject("returnOrderList",returnOrderList);
        modelAndView.setViewName("returnOrderManage");
        return modelAndView;
    }
}
