<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/20
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<script src="${pageContext.request.contextPath}\static\js\jquery-1.11.1.min.js" charset="utf-8"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}\static\css\style.css" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<rapid:override name="content">
    <div class="layui-body" name="content">
    <!-- 内容主体区域 -->
    <div class="wrapper">
        <div class="middle">
            <h1 style="padding: 50px 0 20px;">创建维修领料单</h1>

            <form action="#" method="post">
                <table class="gridtable" style="width:100%;">
                    <tr>
                        <th>申领单号：</th>
                        <td><input type="text" name="" value=""/></td>
                        <th>申领日期：</th>
                        <td><input type="text" name="" value=""/></td>
                        <th>领用类型：</th>
                        <td><input type="text" name="" value=""/></td>
                    </tr>
                    <tr>
                        <th>总费用：</th>
                        <td><input type="text" name="" value=""/></td>
                        <th>备注：</th>
                        <td><input type="text" name="" value=""/></td>
                        <th>特定仓库：</th>
                        <td><input type="text" name="" value=""/></td>
                    </tr>
                </table>
                <table class="gridtable" style="width:100%;">
                    <tr>
                        <th><input type="button" value="添加领用物资" onclick="showMaterial()"/></th>
                        <th ><a href="#">保存</a></th>

                        <th ><a href="#">物料查询</a></th>
                        <td><input type="text" name="" value=""/></td>
                    </tr>
                </table>
            </form>
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
        </div>
        <div class="push"></div>

         
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->

    </div>
    </div>
</rapid:override>
<script>

    function cheng(){//乘法

        var a=document.getElementById('count').value;
        var b=document.getElementById('price').value;
        var c=document.getElementById('total');
        c.value=Number(a)*Number(b);


    }

</script>
<script>
    function showMaterial(){
        $.ajax({
                type:"post",
                url:"/applyorder/showMaterial",
                data:null,
                contentType:'application/json;charset=utf-8',
                success:function(data){
                    var htmlTable="";
                }
        }

        );
    }
</script>
<%@ include file="base.jsp"%>
