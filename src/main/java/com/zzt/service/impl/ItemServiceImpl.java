package com.zzt.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zzt.dao.IItemDao;
import com.zzt.model.Item;
import com.zzt.model.Material;
import com.zzt.service.IItemService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("itemService")
public class ItemServiceImpl implements IItemService {
    @Resource
    private IItemDao iItemDao;
    private  int pageSize=5;
    @Override
    public Integer addItem(Item item) {
        return iItemDao.addItem(item);
    }

    @Override
    public Integer deleteItem(Integer itemid) {
        return iItemDao.deleteItem(itemid);
    }

    @Override
    public PageInfo<Material> showMaterial(int page) {
        PageHelper.startPage(page,pageSize);
        List<Material> list=iItemDao.showMaterial();
        return  new PageInfo<Material>(list);
    }
}
