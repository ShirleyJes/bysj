package com.zzt.model;

import java.util.Date;
import java.util.List;

//维修领料单
public class ApplyOrder {
    //申领单号
    private Integer num;
    //申领日期
    private Date createdate;
    //领用类型
    private String type;
    //总费用
    private long totalCost;
    //备注
    private String comm;
    //审批人
    private User approver;

    private Integer approverid;
    //申领人
    private User applicant;

    private Integer applicantid;

    //一个申领单下有多个领用物料细节
    private List<Item> itemList;
    //操作
    private String operation;
    //状态
    private Integer sid;
    private State state;

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }


    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public long getTotalCost() {
        return totalCost;
    }

    public void setTotalCost(long totalCost) {
        this.totalCost = totalCost;
    }

    public String getComm() {
        return comm;
    }

    public void setComm(String comm) {
        this.comm = comm;
    }

    public User getApprover() {
        return approver;
    }

    public void setApprover(User approver) {
        this.approver = approver;
    }

    public Integer getApproverid() {
        return approverid;
    }

    public void setApproverid(Integer approverid) {
        this.approverid = approverid;
    }

    public User getApplicant() {
        return applicant;
    }

    public void setApplicant(User applicant) {
        this.applicant = applicant;
    }

    public Integer getApplicantid() {
        return applicantid;
    }

    public void setApplicantid(Integer applicantid) {
        this.applicantid = applicantid;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public List<Item> getItemList() {
        return itemList;
    }

    public void setItemList(List<Item> itemList) {
        this.itemList = itemList;
    }

    public String getOperation() {
        return operation;
    }

    public void setOperation(String operation) {
        this.operation = operation;
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public State getState() {
        return state;
    }

    public void setState(State state) {
        this.state = state;
    }
}

