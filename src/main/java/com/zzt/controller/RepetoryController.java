package com.zzt.controller;

import com.zzt.model.Repertory;
import com.zzt.service.IRepertoryService;
import com.zzt.service.impl.RepertoryServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/repetory")
public class RepetoryController {
    @Autowired
    private IRepertoryService repertoryService;
    @RequestMapping("/select")
    public ModelAndView selectRepertory(){
        Integer wNumber=1;
        ModelAndView mv=new ModelAndView();
        List<Repertory> repertoryList=repertoryService.selectRepertory(wNumber);
        mv.addObject("repertory",repertoryList);
        mv.setViewName("repetory");
        return  mv;
    }
}
