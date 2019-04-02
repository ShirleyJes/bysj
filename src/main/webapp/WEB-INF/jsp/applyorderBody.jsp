<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<rapid:override name="content">
<c:if test="${materialPageInfo!=null}">

    <table class="gridtable" style="width:100%;">
        <thead>
        <tr>
            <th>操作</th>
            <th>物料编号</th>
            <th>物料名称</th>
            <th>规格说明</th>
            <th>剩余库存</th>
            <th>计量单位</th>
            <th>单价</th>
            <th>本次申领数量</th>
            <th>使用说明</th>
            <th>使用部门</th>
            <th>项目总额</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${materialPageInfo.list}" var="item">
            <tr>
                <td style="text-align:center;">
                    [<a href="#">添加</a>] -
                    [<a href="#">删除</a>]
                </td>
                <td>${item.matCode}</td>
                <td>${item.mName}</td>
                <td>${item.specifications}</td>
                <td>${item.totalAmount}</td>
                <td>${item.unitsOfMeasurement}</td>
                <td><input style="width:50px;height:30px;"id="price" type="text" onchange="cheng()"></td>
                <td><input style="width:50px;height:30px;" id="count" type="text" onchange="cheng()"></td>
                <td><textarea name="deccription">     </textarea></td>
                <td><select>
                    <option value ="volvo">A部门</option>
                    <option value ="saab">B部门</option>
                    <option value="opel">C部门</option>
                    <option value="audi">D部门</option>
                </select>
                </td>
                <td><input style="width:60px;height:30px;"id="total"type="text"></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <table class="gridtable" style="width:100%;text-align: center;">
        <tr>
            <c:if test="${materialPageInfo.hasPreviousPage}">
                <td>
                    <a href="${pageContext.request.contextPath}/applyorder/createApplyOrder?page=${applyOrderPageInfo.prePage}">前一页</a>
                </td>
            </c:if>
            <c:forEach items="${materialPageInfo.navigatepageNums}" var="nav">
                <c:if test="${nav == materialPageInfo.pageNum}">
                    <td style="font-weight: bold;">${nav}</td>
                </c:if>
                <c:if test="${nav != materialPageInfo.pageNum}">
                    <td>
                        <a href="${pageContext.request.contextPath}/applyorder/createApplyOrder?page=${nav}">${nav}</a>
                    </td>
                </c:if>
            </c:forEach>
            <c:if test="${materialPageInfo.hasNextPage}">
                <td>
                    <a href="${pageContext.request.contextPath}/applyorder/createApplyOrder?page=${materialPageInfo.nextPage}">下一页</a>
                </td>
            </c:if>
        </tr>
    </table>
</c:if>
</rapid:override>
