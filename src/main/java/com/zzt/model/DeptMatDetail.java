package com.zzt.model;

import java.util.Date;

public class DeptMatDetail {

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public Integer getDeptNo() {
        return deptNo;
    }

    public void setDeptNo(Integer deptNo) {
        this.deptNo = deptNo;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

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

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public long getCost() {
        return cost;
    }

    public void setCost(long cost) {
        this.cost = cost;
    }

    //    createdate,
//    deptName,
//    matCode,
//    mName,
//    type,
//    specifications,
//    unitsOfMeasurement,
//    price,
//    amount,
//    cost

    //申领日期
    private Date createdate;
    //部门
    private Integer deptNo;
    private Department department;
    //物料
    private Integer matCode;
    private Material material;
    //申领数量
    private Integer amount;
    //金额
    private long cost;

}
