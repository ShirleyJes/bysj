package com.zzt.dao;

import com.zzt.model.Item;
import com.zzt.model.Material;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IItemDao {
    Integer addItem(Item item);
    Integer deleteItem(Integer itemid);

}
