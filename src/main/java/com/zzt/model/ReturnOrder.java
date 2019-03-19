package com.zzt.model;

import java.util.Date;

public class ReturnOrder {
    //退料单号
    private Integer rid;
    //申请日期
    private Date adate;
    //申请人
    private Integer applicantid;
    private User applicant;
    //审核人
    private Integer approverid;
    private User approver;
    //审核时间
    private Date verifyDate;
    //审核状态
    private Integer vsid;
    private State vstate;
    //退料说明
    private String returnDescription;
    //申请入库时间
    private Date rdate;
    //入库完成状态
    private Integer fsid;
    private State fstate;
    //入库完成时间
    private Date fdate;
    //检验状态
    private State cstate;
    private Integer csid;

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public Date getAdate() {
        return adate;
    }

    public void setAdate(Date adate) {
        this.adate = adate;
    }
    public Integer getApplicantid() {
        return applicantid;
    }

    public void setApplicantid(Integer applicantid) {
        this.applicantid = applicantid;
    }

    public User getApplicant() {
        return applicant;
    }

    public void setApplicant(User applicant) {
        this.applicant = applicant;
    }

    public Integer getApproverid() {
        return approverid;
    }

    public void setApproverid(Integer approverid) {
        this.approverid = approverid;
    }

    public User getApprover() {
        return approver;
    }

    public void setApprover(User approver) {
        this.approver = approver;
    }

    public Date getVerifyDate() {
        return verifyDate;
    }

    public void setVerifyDate(Date verifyDate) {
        this.verifyDate = verifyDate;
    }

    public Integer getVsid() {
        return vsid;
    }

    public void setVsid(Integer vsid) {
        this.vsid = vsid;
    }

    public State getVstate() {
        return vstate;
    }

    public void setVstate(State vstate) {
        this.vstate = vstate;
    }

    public String getReturnDescription() {
        return returnDescription;
    }

    public void setReturnDescription(String returnDescription) {
        this.returnDescription = returnDescription;
    }

    public Date getRdate() {
        return rdate;
    }

    public void setRdate(Date rdate) {
        this.rdate = rdate;
    }

    public Integer getFsid() {
        return fsid;
    }

    public void setFsid(Integer fsid) {
        this.fsid = fsid;
    }

    public State getFstate() {
        return fstate;
    }

    public void setFstate(State fstate) {
        this.fstate = fstate;
    }

    public Date getFdate() {
        return fdate;
    }

    public void setFdate(Date fdate) {
        this.fdate = fdate;
    }

    public State getCstate() {
        return cstate;
    }

    public void setCstate(State cstate) {
        this.cstate = cstate;
    }

    public Integer getCsid() {
        return csid;
    }

    public void setCsid(Integer csid) {
        this.csid = csid;
    }
}
