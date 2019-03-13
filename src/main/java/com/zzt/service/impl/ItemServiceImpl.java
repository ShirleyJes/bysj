package com.zzt.service.impl;

import com.zzt.dao.IItemDao;
import com.zzt.model.Item;
import com.zzt.service.IItemService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("itemService")
public class ItemServiceImpl implements IItemService {
    @Resource
    private IItemDao iItemDao;
    @Override
    public Integer addItem(Item item) {
        return iItemDao.addItem(item);
    }

    @Override
    public Integer deleteItem(Integer itemid) {
        return iItemDao.deleteItem(itemid);
    }
}
