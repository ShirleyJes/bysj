<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/20
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<html>
<head>
    <title>部门领料明细表</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/department/departmentDetail" method="post">
    <table width="100%" border=1>
        <tr>
            <td >部门编号:<input type="text" name="deptNo"></td>
            <td>部门名称:<input type="text" name="deptName"></td>
            <td><input type="submit" value="查询"/></td>
        </tr>
    </table>
    <table width="100%" border=1>
        <tr>
            <td>No.</td>
            <td>申领日期</td>
            <td>申领部门</td>
            <td>物料编码</td>
            <td>物料名称</td>
            <td>类别名称</td>
            <td>规格型号</td>
            <td>单位</td>
            <td>单价</td>
            <td>领料数量</td>
            <td>领料金额</td>
        </tr>
        <%! int count = 1;%>
        <c:forEach items="${deptMatDetailList }" var="item">
            <tr>
                <td><%= count++%></td>
                <td><fmt:formatDate value="${item.createdate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td>${item.department.deptName }</td>
                <td>${item.material.matCode}</td>
                <td>${item.material.mName}</td>
                <td>${item.material.type}</td>
                <td>${item.material.specifications}</td>
                <td>${item.material.unitsOfMeasurement}</td>
                <td>${item.material.price}</td>
                <td>${item.amount}</td>
                <td>${item.cost}</td>
            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>
