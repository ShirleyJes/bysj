package com.zzt.model;

import java.util.Date;
import java.util.List;

public class ApplyOrderParams {
    private Date createdate;
    //领用类型
    private String type;
    //总费用
    private long totalCost;
    //备注
    private String comm;
    private String applicantName;
    private Integer applicantDept;
    private String approverName;
    private Integer approverDept;
    //一个申领单下有多个领用物料细节
    private List<Item> itemList;

    public List<Item> getItemList() {
        return itemList;
    }

    public void setItemList(List<Item> itemList) {
        this.itemList = itemList;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
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

    public String getApplicantName() {
        return applicantName;
    }

    public void setApplicantName(String applicantName) {
        this.applicantName = applicantName;
    }

    public Integer getApplicantDept() {
        return applicantDept;
    }

    public void setApplicantDept(Integer applicantDept) {
        this.applicantDept = applicantDept;
    }

    public String getApproverName() {
        return approverName;
    }

    public void setApproverName(String approverName) {
        this.approverName = approverName;
    }

    public Integer getApproverDept() {
        return approverDept;
    }

    public void setApproverDept(Integer approverDept) {
        this.approverDept = approverDept;
    }

    @Override
    public String toString() {
        return "ApplyOrderParams{" +
                "createdate=" + createdate +
                ", type='" + type + '\'' +
                ", totalCost=" + totalCost +
                ", comm='" + comm + '\'' +
                ", applicantName='" + applicantName + '\'' +
                ", applicantDept=" + applicantDept +
                ", approverName='" + approverName + '\'' +
                ", approverDept=" + approverDept +
                ", itemList=" + itemList.toString() +
                '}';
    }
}
