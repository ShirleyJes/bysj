package com.zzt.controller;

import com.zzt.model.Repertory;
import com.zzt.service.IRepertoryService;
import com.zzt.service.impl.RepertoryServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

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
}
