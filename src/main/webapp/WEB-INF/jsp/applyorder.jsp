<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/19
  Time: 21:08
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<rapid:override name="content">
    <div class="layui-body" name="content">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
        <table width="10%" border=1>
            <tr>
                <td><a href="${pageContext.request.contextPath }/applyorder/findByApplyOrderState/1">制单</a></td>
                <td><a href="${pageContext.request.contextPath }/applyorder/findByApplyOrderState/2">审核</a></td>
                <td><a href="${pageContext.request.contextPath }/applyorder/findByApplyOrderState/3">完成</a></td>
                <td><a href="${pageContext.request.contextPath }/applyorder/findByApplyOrderState/4">作废</a></td>
            </tr>

        </table>
        <table width="10%" border=1>
        <tr>
            <td><a href="#">创建维修领料单</a></td>
        </tr>
        </table>
            <form action="${pageContext.request.contextPath }/applyorder/select" method="post">
            维修领料单列表：
            <table width="100%" border=1>
                <tr>
                    <td>No.</td>
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
                <c:forEach items="${applyOrderList }" var="item" varStatus="status">
                    <tr>
                        <td>${status.index+1}</td>
                        <td>
                            <a href="${pageContext.request.contextPath }/applyorder/deleteApplyorder?num=${item.num}">删除</a>
                        </td>
                        <td>${item.state.sname }</td>
                        <td><fmt:formatDate value="${item.createdate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
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
    </div>
    </div>
</rapid:override>
<%@ include file="../../index.jsp"%>