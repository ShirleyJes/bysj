package com.zzt.controller;

import com.github.pagehelper.PageInfo;
import com.zzt.model.Repertory;
import com.zzt.service.IRepertoryService;
import com.zzt.service.impl.RepertoryServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/repertory")
public class RepetoryController {
    @Autowired
    private IRepertoryService repertoryService;
    @RequestMapping("/select")
    public ModelAndView selectRepertory(String wNumber){
        ModelAndView modelAndView =  new ModelAndView();
        System.out.println(wNumber);
        List<Repertory> repertories=repertoryService.selectRepertory(Integer.valueOf(wNumber));
        modelAndView.addObject("repertories",repertories);
        modelAndView.setViewName("repertory");
        return modelAndView;
    }
    @RequestMapping("/findAll")
    public ModelAndView findAllRepertory(){
        ModelAndView modelAndView=new ModelAndView();
        List<Repertory> repertories=repertoryService.findAll();
        modelAndView.addObject("repertories",repertories);
        modelAndView.setViewName("repertory");
        return modelAndView;
    }
    /*@RequestMapping("/findAll")
    @ResponseBody
    public Map<String, Object> findAllRepertory(int page, int pageSize){
        Map<String, Object> resultMap = new HashMap<String, Object>();
        PageInfo<Repertory> repertoryPageInfo=repertoryService.findAll(page,pageSize);
        resultMap.put("total", repertoryPageInfo.getTotal());
        //获取每页数据
        resultMap.put("rows", repertoryPageInfo.getList());
        return resultMap;
    }*/
}
