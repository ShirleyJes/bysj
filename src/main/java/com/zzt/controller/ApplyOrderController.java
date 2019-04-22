package com.zzt.controller;

import com.github.pagehelper.PageInfo;
import com.zzt.model.ApplyOrder;
import com.zzt.model.ApplyOrderParams;
import com.zzt.model.Material;
import com.zzt.service.IApplyOrderService;
import com.zzt.service.IItemService;
import com.zzt.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/applyorder")
public class ApplyOrderController {
    @Autowired
    private IApplyOrderService applyOrderService;
    @Autowired
    private IItemService itemService;
    @Autowired
    private IUserService userService;
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
    public @ResponseBody  PageInfo<Material> showMaterial(@RequestBody Map<String,String> map){
        int page=Integer.valueOf(map.get("page"));
        System.out.println(page);
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
    @RequestMapping("insertApplyOrder")
    public @ResponseBody Map insertApplyOrder(@RequestBody ApplyOrderParams applyOrderParams){
        String applicantName=applyOrderParams.getApplicantName();
        Integer applicantDept=applyOrderParams.getApplicantDept();
        String approverName=applyOrderParams.getApproverName();
        Integer approverDept=applyOrderParams.getApproverDept();
//        得到主键
        Integer approverid=userService.getUserId(approverName,approverDept);
        Integer applicantid=userService.getUserId(applicantName,applicantDept);
        //得到申请单对象
        ApplyOrder applyOrder=new ApplyOrder();
        applyOrder.setTotalCost(applyOrderParams.getTotalCost());
        applyOrder.setComm(applyOrderParams.getComm());
        applyOrder.setApplicantid(applicantid);
        applyOrder.setApproverid(approverid);
        applyOrder.setCreatedate(applyOrderParams.getCreatedate());
        applyOrder.setType(applyOrderParams.getType());
        applyOrder.setItemList(applyOrderParams.getItemList());
        //插入申请单,返回申请单主键
        Map result=applyOrderService.addApplyOrder(applyOrder);
        System.out.println(applyOrderParams.toString());
        return result;
    }
}
