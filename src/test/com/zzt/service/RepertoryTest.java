package com.zzt.service;

import com.zzt.model.Repertory;
import com.zzt.model.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:test.xml"})
public class RepertoryTest {
    @Resource
    private IRepertoryService repertoryService;

    @Test
    public void selectRepertoryTest(){
        List<Repertory> repertoryList = repertoryService.selectRepertory(1);
        System.out.println("data length"+repertoryList.size());
        for(Repertory r:repertoryList) {
            System.out.println(r.toString());
        }
    }
}
