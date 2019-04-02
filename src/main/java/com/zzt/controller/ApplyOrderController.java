package com.zzt.controller;

import com.github.pagehelper.PageInfo;
import com.zzt.model.ApplyOrder;
import com.zzt.model.Material;
import com.zzt.service.IApplyOrderService;
import com.zzt.service.IItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/applyorder")
public class ApplyOrderController {
    @Autowired
    private IApplyOrderService applyOrderService;
    @Autowired
    private IItemService itemService;
    @RequestMapping("applyorderList")
    public ModelAndView findAllApplyOrder(@RequestParam(value = "page" ,defaultValue="1") int page){
        ModelAndView modelAndView=new ModelAndView();
        PageInfo<ApplyOrder> applyOrderPageInfo=applyOrderService.findAllApplyOrder(page);
        modelAndView.addObject("applyOrderPageInfo",applyOrderPageInfo);
        modelAndView.setViewName("applyorder");
        return modelAndView;
    }
    /*@RequestMapping("deleteApplyorder")
    public ModelAndView deleteApplyOrder(Integer num){
        ModelAndView modelAndView=new ModelAndView();
        applyOrderService.deleteApplyOrder(num);
        List<ApplyOrder> applyOrderList=applyOrderService.findAllApplyOrder();
        modelAndView.addObject("applyOrderList",applyOrderList);
        modelAndView.setViewName("applyorder");
        return modelAndView;
    }*/
    @RequestMapping("findByApplyOrderState/{sid}")
    public ModelAndView findByApplyOrderState(@RequestParam(value = "page" ,defaultValue="1") int page,@PathVariable("sid") Integer sid){
        ModelAndView modelAndView=new ModelAndView();
        PageInfo<ApplyOrder> applyOrderPageInfo=applyOrderService.findByApplyOrderState(page,sid);
        modelAndView.addObject("applyOrderPageInfo",applyOrderPageInfo);
        modelAndView.setViewName("applyorder");
        return modelAndView;
    }
    /*@RequestMapping("showMaterial")
    public ModelAndView showMaterial(@RequestParam(value = "page" ,defaultValue="1")int page){
        ModelAndView modelAndView=new ModelAndView();
        PageInfo<Material> materialPageInfo=itemService.showMaterial(page);
        modelAndView.addObject("materialPageInfo",materialPageInfo);
        modelAndView.addObject("applyOrderPageInfo",null);
        modelAndView.setViewName("createApplyOrder");
        return  modelAndView;
    }*/
    @RequestMapping("showMaterial")
    public @ResponseBody  PageInfo<Material> showMaterial(@RequestParam(value = "page" ,defaultValue="1")int page){
        PageInfo<Material> materialPageInfo=itemService.showMaterial(page);
        return  materialPageInfo;
    }
    @RequestMapping("createApplyOrder")
    public ModelAndView createApplyOrder(){
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("createApplyOrder");
        return  modelAndView;
    }
    @RequestMapping("deleteApplyOrder/{num}")
    public String deleteApplyOrder(@PathVariable("num")Integer num){
        applyOrderService.deleteApplyOrder(num);
        return "redirect:/applyorder/applyorderList";
    }

}
