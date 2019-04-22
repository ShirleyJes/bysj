package com.zzt.model;

import java.util.Date;

//领料物资
public class Item {
    private Integer itemid;
    //物料编码
    private Integer matCode;

    private Material material;
    //申请单号（order）;
    private Integer num;
    //申领数量
    private Integer amount;
    //使用说明
    private String description;
    //使用部门
    private Department department;
    private Integer deptNo;

    //项目总额
    private long cost;

    public Integer getMatCode() {
        return matCode;
    }

    public void setMatCode(Integer matCode) {
        this.matCode = matCode;
    }

    public Material getMaterial() {
        return material;
    }

    public void setMaterial(Material material) {
        this.material = material;
    }

    public Integer getItemid() {
        return itemid;
    }

    public void setItemid(Integer itemid) {
        this.itemid = itemid;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    public Integer getDeptNo() {
        return deptNo;
    }

    public void setDeptNo(Integer deptNo) {
        this.deptNo = deptNo;
    }

    public long getCost() {
        return cost;
    }

    public void setCost(long cost) {
        this.cost = cost;
    }

    @Override
    public String toString() {
        return "Item{" +
                "matCode=" + matCode +
                ", amount=" + amount +
                ", description='" + description + '\'' +
                ", deptNo='" + deptNo + '\'' +
                ", cost=" + cost +
                '}';
    }
}
