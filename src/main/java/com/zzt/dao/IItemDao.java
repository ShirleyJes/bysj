package com.zzt.dao;

import com.zzt.model.Item;
import com.zzt.model.Material;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IItemDao {
    Integer addItem(Item item);
    Integer deleteItem(Integer itemid);
    Integer updateItem(Item item);
    //通过订单号查找所有订单下的item
    List<Item> findByNum(Integer num);
    //显示material的一些属性
    List<Material> showMaterial();
}
