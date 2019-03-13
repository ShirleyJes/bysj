package com.zzt.service;

import com.zzt.model.Item;

public interface IItemService {
    Integer addItem(Item item);
    Integer deleteItem(Integer itemid);
}
