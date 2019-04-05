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
                   <%-- 订单信息--%>
                    <table class="gridtable" style="width:100%;">
                        <tr>
                            <th colspan="12">维修领料单信息 - [<a href="javascript:;" id="list">展开/收缩</a>]</th>
                        </tr>
                        <tr class="itemDetail">
                            <th>操作</th>
                            <th>序号</th>
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
                        <tbody id="itemDetailBody">

                        </tbody>
                    </table>

                    <table class="gridtable" style="width:100%;">
                        <tr>
                            <th><input type="button" value="添加领用物资" onclick="showMaterial(1)"/></th>
                            <th ><a href="#">保存</a></th>

                            <th ><a href="#">物料查询</a></th>
                            <td><input type="text" name="" value=""/></td>
                        </tr>
                    </table>
                        <%--物料信息--%>
                    <table id="result" class="gridtable" style="width:100%;">
                        <thead>
                        <tr>
                            <th>操作</th>
                            <th>序号</th>
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
                        </thead >

                        <tbody id="tbody">

                        </tbody>
                    </table>
                        <%--以下是分页--%>
                    <table  id="pageTable" class="gridtable" style="width:100%;text-align: center;">

                    </table>

                </form>

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
        alert("JSON Data: " + data);
        var a=document.getElementById('count').value;
        var b=document.getElementById('price').value;
        var c=document.getElementById('total');
        c.value=Number(a)*Number(b);


    }
</script>
<script>
    function addItem(no) {
        var tableId = document.getElementById("result");
        var i=no%5;
        if(i==0){
            i=5;
        }
        var col2=tableId.rows[i].cells[1].innerHTML;
        var col3=tableId.rows[i].cells[2].innerHTML;
        var col4=tableId.rows[i].cells[3].innerHTML;
        var col5=tableId.rows[i].cells[4].innerHTML;
        var col6=tableId.rows[i].cells[5].innerHTML;
        var col7=tableId.rows[i].cells[6].innerHTML;
        var col8=tableId.rows[i].cells[7].innerHTML;
        // input 申领数量
        var col9=tableId.rows[i].cells[8].getElementsByTagName("input")[0].value;
        // textarea 使用说明
        var col10=tableId.rows[i].cells[9].getElementsByTagName("textarea")[0].value;
        //select 部门
        var myselect=tableId.rows[i].cells[10].getElementsByTagName("select")[0];
        var index=myselect.selectedIndex ;
        var col11=myselect.options[index].text;
        //input 总价
        var col12=tableId.rows[i].cells[11].getElementsByTagName("input")[0].value;
        var detail= {
            no      : col2,
            matCode : col3,
            mName   : col4,
            specifications : col5,
            totalAmount:col6,
            unitsOfMeasurement:col7,
            price: col8,
            amount:col9,
            description:col10,
            dept:col11,
            total:col12
        }
        paint(detail);
    }
</script>
<script>
    //绘制维修领料单的具体信息
    function paint(detail) {
        var htmlTable="";
        htmlTable=htmlTable+"<tr class='itemDetail'>";
        htmlTable=htmlTable+" <td style=\"text-align:center;\">\n" +
            "                                    <a href='#'>删除</a>\n" +
            "                                </td>";
        htmlTable=htmlTable+"<td>";
        htmlTable=htmlTable+detail.no;
        htmlTable=htmlTable+"</td>";
        htmlTable=htmlTable+"<td>";
        htmlTable=htmlTable+ detail.matCode;
        htmlTable=htmlTable+"</td>";
        htmlTable=htmlTable+"<td>";
        htmlTable=htmlTable+ detail.mName;
        htmlTable=htmlTable+"</td>";
        htmlTable=htmlTable+"<td>";
        htmlTable=htmlTable+ detail.specifications;
        htmlTable=htmlTable+"</td>";
        htmlTable=htmlTable+"<td>";
        htmlTable=htmlTable+ detail.totalAmount;
        htmlTable=htmlTable+"</td>";
        htmlTable=htmlTable+"<td>";
        htmlTable=htmlTable+ detail.unitsOfMeasurement;
        htmlTable=htmlTable+"</td>";
        htmlTable=htmlTable+"<td>";
        htmlTable=htmlTable+ detail.price;
        htmlTable=htmlTable+"</td>";
        htmlTable=htmlTable+"<td>";
        htmlTable=htmlTable+ detail.amount;
        htmlTable=htmlTable+"</td>";
        htmlTable=htmlTable+"<td>";
        htmlTable=htmlTable+ detail.description;
        htmlTable=htmlTable+"</td>";
        htmlTable=htmlTable+"<td>";
        htmlTable=htmlTable+ detail.dept;
        htmlTable=htmlTable+"</td>";
        htmlTable=htmlTable+"<td>";
        htmlTable=htmlTable+ detail.total;
        htmlTable=htmlTable+"</td>";
        htmlTable=htmlTable+"</tr>";
        $('#itemDetailBody').append(htmlTable);
    }
</script>
<script>
    function showMaterial(pageNum){
        $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/applyorder/showMaterial",
                data:JSON.stringify({
                    page : pageNum,
                }),
                contentType:'application/json;charset=utf-8',
                dataType:'json',
                success:function(data){
                    alert("JSON Data: " + JSON.stringify(data));
                    //var json=JSON.stringify(data);
                    //var materialPageInfo=JSON.parse(json);
                    //alert("JSON Data: " + data.pageSize);
                    var result=data.list;
                    var pageNum=data.pageNum;
                    var pageSize=data.pageSize;
                    //alert("JSON Data: " + JSON.stringify(result));
                    var htmlTable="";
                    for(var i=0;i<result.length;i++){
                        var no=((pageNum-1)*pageSize+i+1);
                        htmlTable=htmlTable+"<tr>";
                        htmlTable=htmlTable+" <td style=\"text-align:center;\">\n" +
                            "                                    <a href='javascript:addItem("+no+");"+"'>添加</a>\n"+
                            "                                    <a href='#'>删除</a>\n" +
                            "                                </td>";
                        htmlTable=htmlTable+"<td>";
                        htmlTable=htmlTable+no;
                        htmlTable=htmlTable+"</td>";
                        htmlTable=htmlTable+"<td>";
                        htmlTable=htmlTable+ result[i].matCode;
                        htmlTable=htmlTable+"</td>";
                        htmlTable=htmlTable+"<td>";
                        htmlTable=htmlTable+ result[i].mName;
                        htmlTable=htmlTable+"</td>";
                        htmlTable=htmlTable+"<td>";
                        htmlTable=htmlTable+ result[i].specifications;
                        htmlTable=htmlTable+"</td>";
                        htmlTable=htmlTable+"<td>";
                        htmlTable=htmlTable+ result[i].totalAmount;
                        htmlTable=htmlTable+"</td>";
                        htmlTable=htmlTable+"<td>";
                        htmlTable=htmlTable+ result[i].unitsOfMeasurement;
                        htmlTable=htmlTable+"</td>";
                        htmlTable=htmlTable+"<td>";
                        htmlTable=htmlTable+ result[i].price;
                        htmlTable=htmlTable+"</td>";
                        htmlTable=htmlTable+"<td>";
                        htmlTable=htmlTable+ "<input style=\"width:60px;height:30px;\"id=\"amount\"type=\"text\">";
                        htmlTable=htmlTable+"</td>";
                        htmlTable=htmlTable+"<td>";
                        htmlTable=htmlTable+ "<textarea name=\"description\" ></textarea>";
                        htmlTable=htmlTable+"</td>";
                        htmlTable=htmlTable+"<td>";
                        htmlTable=htmlTable+ "<select>\n" +
                            "                            <option value =\"1\">A部门</option>\n" +
                            "                                <option value =\"2\">B部门</option>\n" +
                            "                                <option value=\"3\">C部门</option>\n" +
                            "                                <option value=\"4\">D部门</option>\n" +
                            "                                </select>";
                        htmlTable=htmlTable+"</td>";
                        htmlTable=htmlTable+"<td>";
                        htmlTable=htmlTable+"<input style=\"width:60px;height:30px;\"id=\"total\"type=\"text\">";
                        htmlTable=htmlTable+"</td>";
                        htmlTable=htmlTable+"</tr>";
                    }
                    $('#tbody').html(htmlTable);
                    parsePageTable(data)

                }
            }
        );
    }
    function parsePageTable(materialPageInfo) {

        var pageTable="";
        pageTable=pageTable+"<tr>";
        if(materialPageInfo.hasPreviousPage){
            var pageNum=materialPageInfo.pageNum-1;
            pageTable=pageTable+" <td>\n" +
                "            <a href='javascript:showMaterial("+pageNum+");' >前一页</a>\n" +
                "            </td>"
        }
        var pageList=materialPageInfo.navigatepageNums;
        for(var i in pageList){
            if(pageList[i]==materialPageInfo.pageNum){
                pageTable=pageTable+"<td style=\"font-weight: bold;\">"+pageList[i]+"</td>"
            }else {
                pageTable=pageTable+"<td>\n" +
                    "                <a href='javascript:showMaterial("+pageList[i]+");' >"+pageList[i]+"</a>\n" +
                    "                 </td>"

            }
        }
        if(materialPageInfo.hasNextPage){
            var pageNum=materialPageInfo.pageNum+1;
            pageTable=pageTable+"<td>\n" +
                "             <a href='javascript:showMaterial("+pageNum+");' >下一页</a>\n" +
                "             </td>"
        }
        pageTable=pageTable+"</tr>"
        $('#pageTable').html(pageTable);
    }
</script>
<style type="text/css">
    .itemDetail {
        display: none;
    }

    .show {
        display: table-row;
    }
</style>
<script>
    $(function () {
        $('#list').click(function () {
            $('.itemDetail').toggleClass('show');
        });
    });

</script>

</script>
<%@ include file="base.jsp"%>