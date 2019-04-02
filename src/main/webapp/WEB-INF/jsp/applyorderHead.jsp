<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/21
  Time: 12:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>layout 后台大布局 - Layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui-v2.4.5/layui/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui-v2.4.5/layui/layui.all.js">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">维修领料管理系统</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">

        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="${pageContext.request.contextPath}/static/layui-v2.4.5/layui/images/1.JPG" class="layui-nav-img">
                    贤心
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">退出</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item"><a href="${pageContext.request.contextPath }/repertory/findAll">库存查询</a></li>
                <li class="layui-nav-item"><a href="${pageContext.request.contextPath }/applyorder/applyorderList">维修领料单</a></li>
                <li class="layui-nav-item"><a href="${pageContext.request.contextPath }/department/departmentDetail">部门领料明细表</a></li>
                <li class="layui-nav-item"><a href="${pageContext.request.contextPath }/department/departmentDayDetail">部门领料日报表</a></li>
                <li class="layui-nav-item"><a href="${pageContext.request.contextPath }/department/departmentMonDetail">部门领料月报表</a></li>
                <li class="layui-nav-item"><a href="${pageContext.request.contextPath }/returnOrder/returnOrderList">退料单管理</a></li>
            </ul>
        </div>
    </div>
    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
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
                                <th ><a href="#">添加领用物资</a></th>
                                <th ><a href="#">保存</a></th>

                                <th ><a href="${pageContext.request.contextPath }/applyorder/showMaterial">物资查询</a></th>
                                <td><input type="text" name="" value=""/></td>
                            </tr>
                        </table>
                    </form>
                    <rapid:block name="content">
                    </rapid:block>
                </div>
                <div class="push"></div> 
            </div>
        </div>
    </div>
    <div class="layui-footer">
        <!-- 底部固定区域 -->

    </div>
</div>
<script src="${pageContext.request.contextPath}/static/layui-v2.4.5/layui/layui.js" charset="utf-8"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>


