package com.zzt.model;

import java.util.HashMap;

public class Warehouse {
    //仓库编号
    private Integer wNumber;
    //仓库名称
    private String wName;
    //库存
    private HashMap<Material,Integer> repertory;

    public Integer getwNumber() {
        return wNumber;
    }

    public void setwNumber(Integer wNumber) {
        this.wNumber = wNumber;
    }
    public String getwName() {
        return wName;
    }

    public void setwName(String wName) {
        this.wName = wName;
    }

    public HashMap<Material, Integer> getRepertory() {
        return repertory;
    }

    public void setRepertory(HashMap<Material, Integer> repertory) {
        this.repertory = repertory;
    }

}
