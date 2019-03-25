<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/22
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<rapid:override name="content">
    <div class="layui-body" name="content">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
        <table width="100%" border=1>
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
            <c:forEach items="${deptMatDetailList }" var="item" varStatus="status">
                <tr>
                    <td>${status.index+1}</td>
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
    </div>
    </div>
</rapid:override>
<%@ include file="../../index.jsp"%>
