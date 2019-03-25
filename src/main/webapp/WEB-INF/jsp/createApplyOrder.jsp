<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/20
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<rapid:override name="content">
    <div class="layui-body" name="content">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
        <form>
            <table>---申请单
                <table width="100%" border=1>
                    <tr>
                        <td>申请单号:<input type="text" value=""/></td>
                        <td>申请日期:<input type="text" value=""/></td>
                        <td>领用类型:<input type="text" value=""/></td>
                        <td>总费用:<input type="text" value=""/></td>
                        <td>备注:<input type="text" value=""/></td>
                        <td>特定仓库:<input type="text" value=""/></td>
                    <tr>
                </table >
                <br>
                <br>
                <table width="20%" border=1>
                    <tr>
                        <td><input type="button" value="添加领用物资" width="50%"/></td>
                        <td><input type="submit" value="保存"/></td>
                        <td><input type="button" value="删除"/></td>
                    <tr>
                </table>

                ---物资列表
                <table width="100%" border=1>
                    <tr>
                        <td></td>
                        <td>物料编码</td>
                        <td>物料名称</td>
                        <td>规格型号</td>
                        <td>剩余可用库存</td>
                        <td>计量单位</td>
                        <td>单价</td>
                        <td>本次申请数量</td>
                        <td>使用说明</td>
                        <td>使用部门</td>
                        <td>项目总额</td>
                    </tr>
                    <td>1</td>
                    <td>1</td>
                    <td>电路板</td>
                    <td>A</td>
                    <td>100</td>
                    <td>50</td>
                    <td>测试</td>
                    <td>测试部门</td>
                    <td>块</td>
                    <td>1000</td>
                    <td>50000</td>
                    </tr>
                </table>
                <br>
                <br>
                ---操作信息
                <table width="100%" border=1>
                    <tr>
                        <td>申请人:<input type="text" value=""/></td>
                        <td>申请部门:<input type="text" value=""/></td>
                        <td>审批人:<input type="text" value=""/></td>
                        <td>审批部门:<input type="text" value=""/></td>

                    </tr>
                </table>
            </table>
        </form>
    </div>
    </div>
</rapid:override>
<%@ include file="../../index.jsp"%>
