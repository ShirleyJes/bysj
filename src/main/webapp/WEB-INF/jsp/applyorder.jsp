<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/19
  Time: 21:08
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>维修领料单</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/applyorder/select" method="post">
    查询维修领料单：
    <table width="10%" border=1>
        <tr>
            <td><input type="button" value="制单" /></td>
            <td><input type="button" value="审核"/></td>
            <td><input type="button" value="完成"/></td>
            <td><input type="button" value="作废"/></td>
        </tr>
    </table>
    <table width="5%" border=1>
        <tr>
            <td><input type="button" value="创建维修领料单" /></td>
        </tr>
    </table>
    维修领料单列表：
    <table width="100%" border=1>
        <tr>
            <td>操作</td>
            <td>状态</td>
            <td>申领日期</td>
            <td>申领单号</td>
            <td>领用类型</td>
            <td>申领人</td>
            <td>申领部门</td>
            <td>总费用</td>
            <td>审批人</td>
            <td>审批人部门</td>
            <td>备注</td>
        </tr>
        <c:forEach items="${applyOrderList }" var="item">
            <tr>
                <td>
                    <a href="${pageContext.request.contextPath }/applyorder/deleteApplyorder?num=${item.num}">删除</a>
                </td>
                <td>${item.state.sname }</td>
                <td>${item.createdate }</td>
                <td>${item.num }</td>
                <td>${item.type }</td>
                <td>${item.applicant.username }</td>
                <td>${item.applicant.department.deptName}</td>
                <td>${item.totalCost}</td>
                <td>${item.approver.username }</td>
                <td>${item.approver.department.deptName }</td>
                <td>${item.comm}</td>
            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>
