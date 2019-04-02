<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<script src="${pageContext.request.contextPath}\static\js\jquery-1.11.1.min.js" charset="utf-8"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}\static\css\style.css" />
<rapid:override name="content">
    <div class="layui-body" name="content">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <div class="wrapper">
                <div class="middle">
                    <h1 style="padding: 50px 0 20px;">部门领料日报表</h1>
                    <form action="${pageContext.request.contextPath}/department/departmentDayDetail" method="post" >
                        <table class="gridtable" style="width:100%;">
                            <tr>
                                <th>查询日期：</th>
                                <td><input type="date" name="start" value=""/></td>
                                <th>部门名称：</th>
                                <td><input type="text" name="deptName" value=""/></td>
                                <th>部门编码：</th>
                                <td><input type="text" name="deptNo" value=""/></td>
                            </tr>
                            <tr>
                                <th>物料名称</th>
                                <td><input type="text" name="mName" value=""/></td>
                                <th>物料编码</th>
                                <td><input type="text" name="matCode" value=""/></td>
                                <th>物料类型</th>
                                <td><input type="text" name="type" value=""/></td>
                            </tr>
                        </table>
                        <table class="gridtable" style="width:100%;">
                            <tr>
                                <th rowspan="3" ><input type="submit" value="查询"/></th>
                            </tr>
                        </table>
                            <%--<table class="gridtable" style="width:100%;">
                                <tr>
                                    <th>部门名称：</th>
                                    <td><input type="text" name="deptName" value=""/></td>
                                    <th>部门编码：</th>
                                    <td><input type="text" name="deptNo" value=""/></td>
                                    <td rowspan="2"><input type="submit" value="查询"/></td>
                                </tr>
                            </table>--%>
                    </form>
                    <c:if test="${deptMatDetailPageInfo!=null}">

                        <table class="gridtable" style="width:100%;">
                            <thead>
                            <tr>
                                <th colspan="11">查询结果</th>
                            </tr>
                            <tr>
                                <th>No.</th>
                                <th>申领日期</th>
                                <th>申领部门</th>
                                <th>物料编码</th>
                                <th>物料名称</th>
                                <th>类别名称</th>
                                <th>规格型号</th>
                                <th>单位</th>
                                <th>单价</th>
                                <th>领料数量</th>
                                <th>领料金额 </th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${deptMatDetailPageInfo.list}" var="item" varStatus="status">
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
                            </tbody>
                        </table>
                        <table class="gridtable" style="width:100%;text-align: center;">
                            <tr>
                                <c:if test="${deptMatDetailPageInfo.hasPreviousPage}">
                                    <td>
                                        <a href="${pageContext.request.contextPath}/department/departmentDayDetail?page=${deptMatDetailPageInfo.prePage}">前一页</a>
                                    </td>
                                </c:if>
                                <c:forEach items="${deptMatDetailPageInfo.navigatepageNums}" var="nav">
                                    <c:if test="${nav == deptMatDetailPageInfo.pageNum}">
                                        <td style="font-weight: bold;">${nav}</td>
                                    </c:if>
                                    <c:if test="${nav != deptMatDetailPageInfo.pageNum}">
                                        <td>
                                            <a href="${pageContext.request.contextPath}/department/departmentDayDetail?page=${nav}">${nav}</a>
                                        </td>
                                    </c:if>
                                </c:forEach>
                                <c:if test="${deptMatDetailPageInfo.hasNextPage}">
                                    <td>
                                        <a href="${pageContext.request.contextPath}/department/departmentDayDetail?page=${deptMatDetailPageInfo.nextPage}">下一页</a>
                                    </td>
                                </c:if>
                            </tr>
                        </table>
                    </c:if>
                </div>
                <div class="push"></div>
            </div>
        </div>
    </div>
</rapid:override>
<%@ include file="base.jsp"%>
