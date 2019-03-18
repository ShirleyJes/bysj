package com.zzt.service;
import com.zzt.model.Item;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:test.xml"})
public class ItemTest {
    @Resource
    private IItemService iItemService;
    @Test
    public void addItemTest(){
        Item item=new Item();
        item.setMatCode(3);
        item.setNum(1);
        item.setAmount(30);
        item.setDescription("for testing");
        item.setDeptNo(3);
        item.setCost(300);
        iItemService.addItem(item);
    }
    @Test
    public void deleteItemTest(){
        iItemService.deleteItem(14);
    }
}
