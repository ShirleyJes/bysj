package com.zzt.model;

import java.util.HashMap;

public class Warehouse {
    //仓库编号
    private Integer wNumber;
    //仓库名称
    private String wName;

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

    @Override
    public String toString() {
        return "Warehouse{" +
                "wNumber=" + wNumber +
                ", wName='" + wName + '\'' +
                '}';
    }
}
