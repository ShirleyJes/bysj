<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/21
  Time: 12:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>维修领料管理系统</title>
</head>
<body>
<br>
<table width="20%">
    <tr>
        <td><a href="${pageContext.request.contextPath }/repertory/findAll">库存查询</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath }/applyorder/applyorderList">维修领料单</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath }/department/departmentDetail">部门领料明细表</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath }/department/departmentDayDetail">部门领料日报表</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath }/department/departmentMonDetail">部门领料月报表</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath }/returnOrder/returnOrderList">退料单管理</a></td>
    </tr>

</table>
</body>
</html>
