package com.zzt.service.impl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zzt.dao.IApplyOrderDao;
import com.zzt.dao.IItemDao;
import com.zzt.dao.IMaterialDao;
import com.zzt.dao.IRepertoryDao;
import com.zzt.model.Item;
import org.springframework.stereotype.Service;
import com.zzt.model.ApplyOrder;
import com.zzt.service.IApplyOrderService;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("applyOrderService")
public class ApplyOrderServiceImpl implements IApplyOrderService {
    @Resource
    private IApplyOrderDao applyOrderDao;
    @Resource
    private IItemDao itemDao;
    @Resource
    private IMaterialDao materialDao;
    @Resource
    private IRepertoryDao repertoryDao;
    private int pageSize=5;
    @Transactional
    @Override
    public Map<String,String> addApplyOrder(ApplyOrder applyOrder) {
        if(applyOrder.getApplicantid()!=null && applyOrder.getApproverid()!=null){
            //添加申请单
            applyOrderDao.addApplyOrder(applyOrder);
            //得到主键
            Integer num=applyOrder.getNum();
            System.out.println("申领单主键： "+num);
            //存储申请单中的特定仓库
            StringBuilder warehouse=new StringBuilder();
            //插入item
            List<Item> itemList=applyOrder.getItemList();
            System.out.println("开始插入Item");
            for(Item item:itemList){
                item.setNum(num);
                itemDao.addItem(item);
                //更新Material总数量以及Repertory中对应的Material的库存数量
                Integer matCode=item.getMatCode();
                Integer amount=item.getAmount();
                Integer totalAmount=materialDao.getMaterialTotalAmount(matCode);
                //更新数量
                totalAmount-=amount;
                materialDao.updateMatetial(matCode,totalAmount);
                //得到仓库
                String wName=repertoryDao.getWName(matCode);
                warehouse.append(wName+",");
            }
            warehouse.deleteCharAt(warehouse.length()-1);
            Map<String,String> result=new HashMap<>();
            result.put("num",String.valueOf(num));
            result.put("warehouse",warehouse.toString());
            return result;
        }else{
            return null;
        }


    }

    @Override
    public Integer deleteApplyOrder(Integer num) {
        return applyOrderDao.deleteApplyOrder(num);
    }

    @Override
    public PageInfo<ApplyOrder> findAllApplyOrder(int page) {
        PageHelper.startPage(page,pageSize);
        List<ApplyOrder> applyOrderList=applyOrderDao.findAllApplyOrder();
        return new PageInfo<ApplyOrder>(applyOrderList);
    }

    @Override
    public PageInfo<ApplyOrder> findByApplyOrderState(int page,Integer sid) {
        PageHelper.startPage(page,pageSize);
        List<ApplyOrder> applyOrderList=applyOrderDao.findByApplyOrderState(sid);
        return new PageInfo<ApplyOrder>(applyOrderList);
    }

    /* @Override
    public List<ApplyOrder> findAllApplyOrder() {
        return applyOrderDao.findAllApplyOrder();
    }

    @Override
    public List<ApplyOrder> findByApplyOrderState(Integer sid) {
        return applyOrderDao.findByApplyOrderState(sid);
    }*/
}
