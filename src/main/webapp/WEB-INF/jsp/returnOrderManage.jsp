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
<html>
<head>
    <title>退料单管理</title>
</head>
<body>
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
        <%! int count = 1;%>
        <c:forEach items="${returnOrderList}" var="item">
            <tr>
                <td><%= count++%></td>
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
</body>
</html>
