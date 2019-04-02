<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/20
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<script src="${pageContext.request.contextPath}\static\js\jquery-1.11.1.min.js" charset="utf-8"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}\static\css\style.css" />
<rapid:override name="content">
    <div class="layui-body" name="content">
        <div class="wrapper">
            <div class="middle">
                <h1 style="padding: 50px 0 20px;">退料单管理</h1>

                <form action="${pageContext.request.contextPath}/repertory/select" method="post">
                    <table class="gridtable" style="width:100%;">
                        <tr>
                            <th><a href="${pageContext.request.contextPath }/returnOrder/selectByState/5">未启动</a></th>
                            <th><a href="${pageContext.request.contextPath }/returnOrder/selectByState/6">审批中</a></th>
                            <th><a href="${pageContext.request.contextPath }/returnOrder/selectByState/7">已结束</a></th>

                        </tr>
                    </table>
                </form>
                <c:if test="${returnOrderPageInfo!=null}">

                    <table class="gridtable" style="width:100%;">
                        <thead>
                        <tr>
                            <th colspan="14">查询结果</th>
                        </tr>
                        <tr>
                            <th>No.</th>
                            <th>退料单号</th>
                            <th>申请日期</th>
                            <th>申请部门</th>
                            <th>申请人</th>
                            <th>审核人</th>
                            <th>审核时间</th>
                            <th>审核状态</th>
                            <th>退料说明</th>
                            <th>检验状态</th>
                            <th>申请入库时间</th>
                            <th>入库完成状态</th>
                            <th>入库完成时间</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${returnOrderPageInfo.list}" var="item" varStatus="status">
                            <tr>
                                <td>${status.index+1}</td>
                                <td>${item.rid}</td>
                                <td><fmt:formatDate value="${item.adate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                <td>${item.applicant.department.deptName}</td>
                                <td>${item.applicant.username}</td>
                                <td>${item.approver.username}</td>
                                <td><fmt:formatDate value="${item.verifyDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                <td>${item.vstate.sname}</td>
                                <td>${item.returnDescription}</td>
                                <td>${item.cstate.sname}</td>
                                <td><fmt:formatDate value="${item.rdate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                <td>${item.fstate.sname}</td>
                                <td><fmt:formatDate value="${item.fdate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                <td></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <table class="gridtable" style="width:100%;text-align: center;">
                        <tr>
                            <c:if test="${returnOrderPageInfo.hasPreviousPage}">
                                <td>
                                    <a href="${pageContext.request.contextPath}/returnOrder/returnOrderList?page=${returnOrderPageInfo.prePage}">前一页</a>
                                </td>
                            </c:if>
                            <c:forEach items="${returnOrderPageInfo.navigatepageNums}" var="nav">
                                <c:if test="${nav == returnOrderPageInfo.pageNum}">
                                    <td style="font-weight: bold;">${nav}</td>
                                </c:if>
                                <c:if test="${nav != returnOrderPageInfo.pageNum}">
                                    <td>
                                        <a href="${pageContext.request.contextPath}/returnOrder/returnOrderList?page=${nav}">${nav}</a>
                                    </td>
                                </c:if>
                            </c:forEach>
                            <c:if test="${returnOrderPageInfo.hasNextPage}">
                                <td>
                                    <a href="${pageContext.request.contextPath}/returnOrder/returnOrderList?page=${returnOrderPageInfo.nextPage}">下一页</a>
                                </td>
                            </c:if>
                        </tr>
                    </table>
                </c:if>
            </div>
            <div class="push"></div> 
        </div>
    <!-- 内容主体区域 -->
            <%--<div style="padding: 15px;">

                <table width="10%" border=1>
                    <tr>
                        <td><a href="${pageContext.request.contextPath }/returnOrder/selectByState/5">未启动</a></td>
                        <td><a href="${pageContext.request.contextPath }/returnOrder/selectByState/6">审批中</a></td>
                        <td><a href="${pageContext.request.contextPath }/returnOrder/selectByState/7">已结束</a></td>
                    </tr>
                </table>
                <form action="${pageContext.request.contextPath }/returnOrder/deleteReturnOrder" method="post">
                    <table width="100%" border=1>
                        <tr>
                            <td>No.</td>
                            <td>退料单号</td>
                            <td>申请日期</td>
                            <td>申请部门</td>
                            <td>申请人</td>
                            <td>审核人</td>
                            <td>审核时间</td>
                            <td>审核状态</td>
                            <td>退料说明</td>
                            <td>检验状态</td>
                            <td>申请入库时间</td>
                            <td>入库完成状态</td>
                            <td>入库完成时间</td>
                            <td>操作</td>
                        </tr>
                        <c:forEach items="${returnOrderList}" var="item" varStatus="status">
                            <tr>
                                <td>${status.index+1}</td>
                                <td>${item.rid}</td>
                                <td><fmt:formatDate value="${item.adate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                <td>${item.applicant.department.deptName}</td>
                                <td>${item.applicant.username}</td>
                                <td>${item.approver.username}</td>
                                <td><fmt:formatDate value="${item.verifyDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                <td>${item.vstate.sname}</td>
                                <td>${item.returnDescription}</td>
                                <td>${item.cstate.sname}</td>
                                <td><fmt:formatDate value="${item.rdate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                <td>${item.fstate.sname}</td>
                                <td><fmt:formatDate value="${item.fdate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                <td></td>
                            </tr>
                        </c:forEach>
                    </table>
                </form>
            </div>--%>
    </div>
</rapid:override>
<%@ include file="base.jsp"%>