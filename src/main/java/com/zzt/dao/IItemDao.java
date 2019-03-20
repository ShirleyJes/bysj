package com.zzt.dao;

import com.zzt.model.Item;
import org.springframework.stereotype.Repository;

@Repository
public interface IItemDao {
    Integer addItem(Item item);
    Integer deleteItem(Integer itemid);
}
