<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/12
  Time: 18:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<rapid:override name="content">
    库存查询
    <div class="layui-body" name="content">
    <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <form action="${pageContext.request.contextPath }/repertory/select" method="post">
                查询仓库编号：
                <table width="100%" border=1>
                    <tr>
                        <td><input type="text" name="wNumber">
                        <td><input type="submit" value="查询"/></td>
                    </tr>
                </table>
                库存列表：
                <table width="100%" border=1>
                    <tr>
                        <td>No.</td>
                        <td>仓库编号</td>
                        <td>仓库名字</td>
                        <td>物料编号</td>
                        <td>物料名称</td>
                        <td>助记码</td>
                        <td>类型编码</td>
                        <td>类型</td>
                        <td>规格说明</td>
                        <td>生产厂家</td>
                        <td>计量单位</td>
                        <td>单价</td>
                        <td>库存数量</td>
                    </tr>

                    <c:forEach items="${repertories }" var="item"  varStatus="status">
                        <tr>
                            <td>${status.index+1}</td>
                            <td>${item.warehouse.wNumber }</td>
                            <td>${item.warehouse.wName }</td>
                            <td>${item.material.matCode }</td>
                            <td>${item.material.mName }</td>
                            <td>${item.material.mnemonicCode }</td>
                            <td>${item.material.typeCode }</td>
                            <td>${item.material.type }</td>
                            <td>${item.material.specifications }</td>
                            <td>${item.material.manufacturer}</td>
                            <td>${item.material.unitsOfMeasurement }</td>
                            <td>${item.material.price }</td>
                            <td>${item.amount}</td>
                        </tr>
                    </c:forEach>
                </table>
            </form>
        </div>
    </div>
</rapid:override>
<%@ include file="../../index.jsp"%>


