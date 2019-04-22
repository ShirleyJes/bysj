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
                    <table id="applyorderHeadTable" class="gridtable" style="width:100%;">
                        <tr>
                            <th>申领单号：</th>
                            <td><input type="text" name="" value=""/></td>
                            <th>申领日期：</th>
                            <td><input type="date" name="" value=""/></td>
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
                        <tr>
                            <th>申领人：</th>
                            <td><input type="text" name="" value=""/></td>
                            <th>申领部门：</th>
                            <td>
                                <select>
                                    <option value="1">研发部</option>
                                    <option value="2">设计部</option>
                                    <option value="3">外交部</option>
                                    <option value="4">产品部</option>
                                    <option value="5">运维部</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>审批人：</th>
                            <td><input type="text" name="" value=""/></td>
                            <th>审批人部门：</th>
                            <td>
                                <select>
                                    <option value="1">研发部</option>
                                    <option value="2">设计部</option>
                                    <option value="3">外交部</option>
                                    <option value="4">产品部</option>
                                    <option value="5">运维部</option>
                                </select>
                            </td>
                        </tr>
                    </table>
                   <%-- 订单信息--%>
                    <table id="itemDetailTable" class="gridtable" style="width:100%;">
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
                            <th ><a href='javascript:postData();'>保存</a></th>

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
        var tableId2=document.getElementById("applyorderHeadTable");
        tableId2.rows[1].cells[1].getElementsByTagName("input")[0].value=Number(tableId2.rows[1].cells[1].getElementsByTagName("input")[0].value)+Number(col12);

    }
</script>
<script>
    //绘制维修领料单的具体信息
    function paint(detail) {
        var htmlTable="";
        htmlTable=htmlTable+"<tr class='itemDetail' >";
        htmlTable=htmlTable+" <td style=\"text-align:center;\">\n" +
            "                                    <a href='javascript:;' onclick='{if(confirm(\"确认删除？\")){deleteItem(this"+","+detail.no+");}else { }}'>删除</a>\n" +
            "                  </td>";
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
    function deleteItem(obj,no) {
        var index=obj.parentNode.parentNode.rowIndex;
        var table = document.getElementById("itemDetailTable");

        // 改变总费用
        var resultTable=document.getElementById("result");
        var i=no%5;
        if(i==0){
            i=5;
        }
        var money=resultTable.rows[i].cells[11].getElementsByTagName("input")[0].value;
        console.log("momey:"+money);
        var tableId2=document.getElementById("applyorderHeadTable");
        tableId2.rows[1].cells[1].getElementsByTagName("input")[0].value=Number(tableId2.rows[1].cells[1].getElementsByTagName("input")[0].value)-Number(money);
       /* 对result表（从后台得到的显示记录）调整*/
        resultTable.rows[i].cells[11].getElementsByTagName("input")[0].value=null;
        resultTable.rows[i].cells[8].getElementsByTagName("input")[0].value=null;
        /* 删除指定行*/
        table.deleteRow(index);
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
                        htmlTable=htmlTable+ "<input style=\"width:60px;height:30px;\"id=\"amount\"type=\"text\" onchange='cheng("+no+","+result[i].price+","+result[i].totalAmount+")'>";
                        htmlTable=htmlTable+"</td>";
                        htmlTable=htmlTable+"<td>";
                        htmlTable=htmlTable+ "<textarea name=\"description\" ></textarea>";
                        htmlTable=htmlTable+"</td>";
                        htmlTable=htmlTable+"<td>";
                        htmlTable=htmlTable+ "<select>\n" +
                            "                            <option value =\"1\">研发部</option>\n" +
                            "                                <option value =\"2\">设计部</option>\n" +
                            "                                <option value=\"3\">外交部</option>\n" +
                            "                                <option value=\"4\">产品部</option>\n" +
                            "                                 <option value=\"5\">运维部</option>\n" +
                            "                                </select>";
                        htmlTable=htmlTable+"</td>";
                        htmlTable=htmlTable+"<td>";
                        htmlTable=htmlTable+"<input style=\"width:60px;height:30px;\"id=\"total\"type=\"text\" >";
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

<script>
    function cheng(no,price,totalamount){//乘法
        /*只能从Ajax得到的数据的table操纵*/
        var tableId = document.getElementById("result");
        var i=no%5;
        if(i==0){
            i=5;
        }


        var amount=tableId.rows[i].cells[8].getElementsByTagName("input")[0].value;
        if(amount>totalamount){
            alert("该领料数量目前最多只有"+totalamount);
            amount=totalamount;
            tableId.rows[i].cells[8].getElementsByTagName("input")[0].value=amount;
        }
        // console.log(amount);
        var total= tableId.rows[i].cells[11].getElementsByTagName("input")[0];
        total.value=Number(amount)*Number(price);


    }
</script>
<%--申领提交--%>
<script>
    function getItemData(){
       /* var trList = $("#itemDetailBody").children("tr");
        for (var i=0;i<trList.length;i++) {
            var tdArr = trList.eq(i).find("td");
            var matCode = tdArr.eq(2).find("input").val();//收入类别
            alert(matCode);
        }*/
       var table=document.getElementById('itemDetailTable');
       var itemList = [];
       for(var i=2;i<table.rows.length;i++){
           var matCode=table.rows[i].cells[2].innerText;
           var amount= table.rows[i].cells[8].innerText;
           var description=table.rows[i].cells[9].innerText;
           var deptName=table.rows[i].cells[10].innerText;
           var deptNo='';
           switch (deptName) {
               case '研发部':
                   deptNo='1';
                   break;
               case '设计部':
                   deptNo='2';
                   break;
               case '外交部':
                   deptNo='3';
                   break;
               case '产品部':
                   deptNo='4';
                   break;
               case '运维部':
                   deptNo='5';
                   break;
           }
           alert(deptNo);
           var cost=table.rows[i].cells[11].innerText;
           var item={
               matCode:matCode,
               amount:amount,
               description:description,
               deptNo:deptNo,
               cost:cost,
           }
           itemList.push(item);
       }
       return itemList;

    }
    function postData(){
        var table=document.getElementById("applyorderHeadTable");
        var applicantselect=table.rows[2].cells[3].getElementsByTagName("select")[0];
        var index=applicantselect.selectedIndex ;
        var applicantDept=applicantselect.options[index].value;
        var  approverselect=table.rows[3].cells[3].getElementsByTagName("select")[0];
        var index=approverselect.selectedIndex ;
        var approverDept=approverselect.options[index].value;
        // 申领单头
         var createdate=table.rows[0].cells[3].getElementsByTagName("input")[0].value;
         var type=table.rows[0].cells[5].getElementsByTagName("input")[0].value;
         var totalCost=table.rows[1].cells[1].getElementsByTagName("input")[0].value;
         var comm=table.rows[1].cells[3].getElementsByTagName("input")[0].value;
         var applicantName=table.rows[2].cells[1].getElementsByTagName("input")[0].value;
         var approverName=table.rows[3].cells[1].getElementsByTagName("input")[0].value;
        // alert("head Data: " + JSON.stringify(head));
        var itemList=getItemData();
        alert("itemList:"+JSON.stringify(itemList));
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/applyorder/insertApplyOrder",
            data:JSON.stringify({
                createdate:createdate,
                type:type,
                totalCost:totalCost,
                comm:comm,
                itemList:itemList,
                applicantName:applicantName,
                applicantDept:applicantDept,
                approverName:approverName,
                approverDept:approverDept
            }),
            contentType:'application/json;charset=utf-8',
            dataType:'json',
            success:function(data){
                if(data.num>0){
                    table.rows[0].cells[1].getElementsByTagName("input")[0].value=data.num;
                    table.rows[1].cells[5].getElementsByTagName("input")[0].value=data.warehouse;
                }else{
                    alert("创建申领单失败！");
                }
            }
        });
    }
</script>
<%@ include file="base.jsp"%>