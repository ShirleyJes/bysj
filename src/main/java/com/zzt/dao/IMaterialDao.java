package com.zzt.dao;

import org.apache.ibatis.annotations.Param;

public interface IMaterialDao {
    //更新库存
    Integer updateMatetial(@Param("matCode")Integer matCode, @Param("totalAmount")Integer totalAmount);

    //查库存数量
    Integer getMaterialTotalAmount(Integer matCode);
    //用于查库存

}
