package com.zzt.service;

import com.github.pagehelper.PageInfo;
import com.zzt.model.Item;
import com.zzt.model.Material;

public interface IItemService {
    Integer addItem(Item item);
    Integer deleteItem(Integer itemid);
    PageInfo<Material> showMaterial(int page);

}
