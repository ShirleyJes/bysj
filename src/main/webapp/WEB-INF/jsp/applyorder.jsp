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
<script src="${pageContext.request.contextPath}\static\js\jquery-1.11.1.min.js" charset="utf-8"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}\static\css\style.css" />
<rapid:override name="content">
    <div class="layui-body" name="content">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
        <div class="wrapper">
            <div class="middle">
                <h1 style="padding: 50px 0 20px;">维修领料单</h1>

                <form action="${pageContext.request.contextPath}/repertory/select" method="post">
                    <table class="gridtable" style="width:100%;">
                        <tr>
                            <th><a href="${pageContext.request.contextPath }/applyorder/findByApplyOrderState/1">制单</a></th>
                            <th><a href="${pageContext.request.contextPath }/applyorder/findByApplyOrderState/2">审核</a></th>
                            <th><a href="${pageContext.request.contextPath }/applyorder/findByApplyOrderState/3">完成</a></th>
                            <th><a href="${pageContext.request.contextPath }/applyorder/findByApplyOrderState/4">作废</a></th>
                        </tr>
                        <tr >
                            <th colspan="4"><a href="${pageContext.request.contextPath }/applyorder/createApplyOrder">创建维修领料单</a></th>
                        </tr>
                    </table>
                </form>
                <c:if test="${applyOrderPageInfo!=null}">

                    <table class="gridtable" style="width:100%;">
                        <thead>
                        <tr>
                            <th colspan="12">查询结果</th>
                        </tr>
                        <tr>
                            <th>No.       </th>
                            <th>操作	  </th>
                            <th>状态	  </th>
                            <th>申领日期  </th>
                            <th>申领单号  </th>
                            <th>领用类型  </th>
                            <th>申领人	  </th>
                            <th>申领部门  </th>
                            <th>总费用	  </th>
                            <th>审批人	  </th>
                            <th>审批人部门</th>
                            <th>备注	  </th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${applyOrderPageInfo.list }" var="item" varStatus="status">
                            <tr>
                                <td>${status.index+1}</td>
                                <td style="text-align:center;">
                                    [<a href="${pageContext.request.contextPath}/applyorder/deleteApplyOrder/${item.num}">删除</a>]
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
                        </tbody>
                    </table>
                    <table class="gridtable" style="width:100%;text-align: center;">
                        <tr>
                            <c:if test="${applyOrderPageInfo.hasPreviousPage}">
                                <td>
                                    <a href="${pageContext.request.contextPath}/applyorder/applyorderList?page=${applyOrderPageInfo.prePage}">前一页</a>
                                </td>
                            </c:if>
                            <c:forEach items="${applyOrderPageInfo.navigatepageNums}" var="nav">
                                <c:if test="${nav == applyOrderPageInfo.pageNum}">
                                    <td style="font-weight: bold;">${nav}</td>
                                </c:if>
                                <c:if test="${nav != applyOrderPageInfo.pageNum}">
                                    <td>
                                        <a href="${pageContext.request.contextPath}/applyorder/applyorderList?page=${nav}">${nav}</a>
                                    </td>
                                </c:if>
                            </c:forEach>
                            <c:if test="${applyOrderPageInfo.hasNextPage}">
                                <td>
                                    <a href="${pageContext.request.contextPath}/applyorder/applyorderList?page=${applyOrderPageInfo.nextPage}">下一页</a>
                                </td>
                            </c:if>
                        </tr>
                    </table>
                </c:if>
            </div>
            <div class="push"></div>

             
        </div>
        <%--<table width="10%" border=1>
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
            </form>--%>
    </div>
    </div>
</rapid:override>
<%@ include file="base.jsp"%>