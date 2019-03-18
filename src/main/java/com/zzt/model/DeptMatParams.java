package com.zzt.model;

import java.util.Date;

public class DeptMatParams {
    //部门编码
    private Integer deptNo;
   //查询部门
    private String deptName;
    //物料编码
    private Integer matCode;
    //物料名称
    private String mName;
    //类型名称
    private String mtype;
    //规格型号
    private String specifications;
    public Integer getDeptNo() {
        return deptNo;
    }

    public void setDeptNo(Integer deptNo) {
        this.deptNo = deptNo;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public Integer getMatCode() {
        return matCode;
    }

    public void setMatCode(Integer matCode) {
        this.matCode = matCode;
    }

    public String getmName() {
        return mName;
    }

    public void setmName(String mName) {
        this.mName = mName;
    }

    public String getMtype() {
        return mtype;
    }

    public void setMtype(String mtype) {
        this.mtype = mtype;
    }

    public String getSpecifications() {
        return specifications;
    }

    public void setSpecifications(String specifications) {
        this.specifications = specifications;
    }
}
