package com.zzt.controller;

import com.github.pagehelper.PageInfo;
import com.zzt.model.ReturnOrder;
import com.zzt.service.IReturnOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/returnOrder")
public class ReturnOrderController {
    @Autowired
    private IReturnOrderService returnOrderService;
    @RequestMapping("returnOrderList")
    public ModelAndView findAllReturnOrder(@RequestParam(value = "page" ,defaultValue="1") int page){
        ModelAndView modelAndView=new ModelAndView();
        PageInfo<ReturnOrder> returnOrderPageInfo=returnOrderService.showReturnOrders(page);
        modelAndView.addObject("returnOrderPageInfo",returnOrderPageInfo);
        modelAndView.setViewName("returnOrderManage");
        return modelAndView;
    }
    @RequestMapping("selectByState/{vsid}")
    public ModelAndView selectByState(@RequestParam(value = "page" ,defaultValue="1") int page,@PathVariable("vsid")Integer vsid){
        ModelAndView modelAndView=new ModelAndView();
        PageInfo<ReturnOrder> returnOrderPageInfo=returnOrderService.selectByState(page,vsid);
        modelAndView.addObject("returnOrderPageInfo",returnOrderPageInfo);
        modelAndView.setViewName("returnOrderManage");
        return modelAndView;
    }
    @RequestMapping("delete/{rid}")
    public String delete(@PathVariable("rid")Integer rid){

        returnOrderService.deleteReturnOrder(rid);
        return "redirect:/returnOrder/returnOrderList";
    }

}
