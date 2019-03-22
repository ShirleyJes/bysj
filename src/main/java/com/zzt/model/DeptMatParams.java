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
    private String type;
    //规格型号
    private String specifications;
    private Date start;
    private Date end;
    public Date getStart() {
        return start;
    }

    public void setStart(Date start) {
        this.start = start;
    }

    public Date getEnd() {
        return end;
    }

    public void setEnd(Date end) {
        this.end = end;
    }

    //

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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSpecifications() {
        return specifications;
    }

    public void setSpecifications(String specifications) {
        this.specifications = specifications;
    }
}
