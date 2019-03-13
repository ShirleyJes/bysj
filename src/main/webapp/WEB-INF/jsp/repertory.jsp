<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/12
  Time: 18:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<html>
<head>
    <title>库存</title>
</head>

<body>
<table border="1" width="95%" align="center">
    <tr>
        <td></td>
        <td>仓库编号</td>
        <td>仓库名字</td>
        <td>物料编号</td>
        <td>物料名称</td>
        <td>助记码</td>
        <td>类型编码</td>
        <td>类型</td>
        <td>规格说明</td>
        <td>生产厂家</td>
        <td>助记码</td>
        <td>单价</td>
        <td>计量单位</td>
        <td>库存数量</td>
    </tr>
    <c:choose>
        <c:when test="${rows!=null }">
            <c:forEach var="ins" items="${rows }" varStatus="vs">
                <tr>
                    <td></td>
                    <td>${vs.index }</td>
                    <td>${ins.pname }</td>
                    <td>${ins.pnumber }</td>
                    <td>${ins.psex }</td>
                    <td>${ins.psr }</td>
                    <td>${ins.pmz }</td>
                    <td>${ins.pstate }</td>
                </tr>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <c:forEach begin="1" step="1" end="10">
                <tr>
                    <td>&nbsp;</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </c:forEach>
        </c:otherwise>
    </c:choose>
</table>
:${requestScope.repertory.warehouse.wNumber}<br/>
:${requestScope.repertory.warehouse.wName}<br/>
:${requestScope.repertory.material.matCode}<br/>
:${requestScope.repertory.material.matName}<br/>
:  ${requestScope.repertory.material.mnemonicCode}<br/>
:${requestScope.repertory.material.typeCode}<br/>
：   ${requestScope.repertory.material.type}<br/>
:${requestScope.repertory.material.specifications}<br/>
:${requestScope.repertory.material.manufacturer}<br/>
：   ${requestScope.repertory.material.price}<br/>
:${requestScope.repertory.material.unitsOfMeasurement}<br/>
:${requestScope.repertory.amount}<br/>

</body>
</html>
