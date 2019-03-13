package com.zzt.dao;

import com.zzt.model.Item;


public interface IItemDao {
    Integer addItem(Item item);
    Integer deleteItem(Integer itemid);
}
