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
            </form>
            <table class="layui-hide" id="test"></table>
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

        </div>
    </div>
</rapid:override>

<%--
<script>
    layui.use('table', function(){
        var table = layui.table;

        table.render({
            elem: '#test'
            ,url:'${pageContext.request.contextPath }/repertory/findAll'
            ,cols: [[
                {field:'wNumber', width:80, title: '仓库编号'}
                ,{field:'wName', width:80, title: '仓库名称'}
                ,{field:'matCode', width:80, title: '物料编码'}
                ,{field:'mName', width:80, title: '物料名称'}
                ,{field:'mnemonicCode', title: '助记码'}
                ,{field:'typeCode', width:80, title: '类型编码'}
                ,{field:'type', width:80, title: '类型'}
                ,{field:'specifications', width:80, title: '规格型号'}
                ,{field:'manufacturer', width:135, title: '生产厂家'}
                ,{field:'unitsOfMeasurement', width:135, title: '单位'}
                ,{field:'price', width:135, title: '单价'}
                ,{field:'amount', width:135, title: '库存数量'}
            ]]
            ,page: true
        });
    });
</script>
--%>
<%@ include file="base.jsp"%>


