package com.zzt.model;

import java.util.HashMap;
import java.util.List;

public class Warehouse {
    //仓库编号
    private Integer wNumber;
    //仓库名称
    private String wName;

    //仓库库存
    private List<Repertory> repertoryList;

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

    public List<Repertory> getRepertoryList() {
        return repertoryList;
    }

    public void setRepertoryList(List<Repertory> repertoryList) {
        this.repertoryList = repertoryList;
    }

    @Override
    public String toString() {
        return "Warehouse{" +
                "wNumber=" + wNumber +
                ", wName='" + wName + '\'' +
                '}';
    }
}
