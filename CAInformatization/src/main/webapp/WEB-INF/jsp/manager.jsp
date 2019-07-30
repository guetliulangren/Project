<?xml version="1.0" encoding="UTF-8" ?>
<%@ page isELIgnored="false"%>
<!--  获取项目当前路径-->
<%pageContext.setAttribute("app_context", request.getContextPath());%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html class="x-admin-sm">
<head>
<meta charset="UTF-8">
<title>公司管理系统</title>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="stylesheet" href="${app_context}/css/font.css">
<link rel="stylesheet" href="${app_context}/css/xadmin.css">

<script src="${app_context}/lib/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="${app_context}/js/xadmin.js"></script>
</head>
<body class="index">
        <!-- 顶部开始 -->
        <div class="container">
            <div class="logo">
                <a href="./index.html">公司农户信息化管理系统</a></div>
            <div class="left_open">
                <a><i title="展开左侧栏" class="iconfont">&#xe699;</i></a>
            </div>
            <ul class="layui-nav left fast-add" lay-filter="">
                <li class="layui-nav-item">
                    <dl class="layui-nav-child">
                        <!-- 二级菜单 -->
                        <dd>
                            <a onclick="xadmin.open('最大化','http://www.baidu.com','','',true)">
                                <i class="iconfont">&#xe6a2;</i>弹出最大化</a></dd>
                        <dd>
                            <a onclick="xadmin.open('弹出自动宽高','http://www.baidu.com')">
                                <i class="iconfont">&#xe6a8;</i>弹出自动宽高</a></dd>
                        <dd>
                            <a onclick="xadmin.open('弹出指定宽高','http://www.baidu.com',500,300)">
                                <i class="iconfont">&#xe6a8;</i>弹出指定宽高</a></dd>
                        <dd>
                            <a onclick="xadmin.add_tab('在tab打开','member-list.html')">
                                <i class="iconfont">&#xe6b8;</i>在tab打开</a></dd>
                        <dd>
                            <a onclick="xadmin.add_tab('在tab打开刷新','member-del.html',true)">
                                <i class="iconfont">&#xe6b8;</i>在tab打开刷新</a></dd>
                    </dl>
                </li>
            </ul>
            <ul class="layui-nav right" lay-filter="">
                <li class="layui-nav-item">
                    <a href="javascript:;"> ${msgadmin}</a>
                    <dl class="layui-nav-child">
                        <!-- 二级菜单 -->
                        <dd>
                            <a  onclick="xadmin.add_tab('个人信息','  ${app_context}/first/info',true)">个人信息</a></dd>
                        <dd>
                            <a href="${app_context}/user/logout">切换账号</a></dd>
                        <dd>
                            <a href="${app_context}/user/logout">退出</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item to-index">
                    <a href="/">前台首页</a></li>
            </ul>
        </div>
	<!-- 顶部结束 -->
	<!-- 中部开始 -->
	<!-- 左侧菜单开始 -->
	<div class="left-nav">
		<div id="side-nav">
			<ul id="nav">
				<li><a href="javascript:;"> <i class="iconfont left-nav-li"
						lay-tips="用户管理">&#xe6b8;</i> <cite>用户管理</cite> <i
						class="iconfont nav_right">&#xe697;</i></a>
					<ul class="sub-menu">

						<li><a
							onclick="xadmin.add_tab('用户管理','  ${app_context}/first/user',true)"> 
							<i class="iconfont">&#xe6a7;</i> 
							<cite>用户管理</cite>
							</a>
						</li>
						<li>
						<a onclick="xadmin.add_tab('角色管理','${app_context}/first/role')">
								<i class="iconfont">&#xe6a7;</i>
								 <cite>角色管理</cite>
						</a>
						</li>
						<li>
						<a href="javascript:;"> 
						<cite>导出Excel</cite> 
						<i class="iconfont nav_right">&#xe697;</i>
						</a>
							<ul class="sub-menu">
								<li>
								<a onclick="xadmin.add_tab('导出Excel','${app_context}/first/Excel')">
										<i class="iconfont">&#xe6a7;</i> 
										<cite>导出Ecxel</cite>
								</a>
								</li>
								
							</ul>
							</li>
					</ul>
					</li>
				<li>
				<a href="javascript:;"> 
				<i class="iconfont left-nav-li" lay-tips="订单管理">&#xe723;</i> 
				<cite>订单管理</cite> 
				<i class="iconfont nav_right">&#xe697;</i>
				</a>
					<ul class="sub-menu">
						<li>
						<a onclick="xadmin.add_tab('订单记录列表','${app_context}/first/orderinfo')">
						<i class="iconfont">&#xe6a7;</i>
						<cite>订单列表</cite>
						</a>
						</li>
						<li>
						<a onclick="xadmin.add_tab('订单列表1','${app_context}/first/queryall')">
						<i class="iconfont">&#xe6a7;</i> 
						<cite>查看库存</cite>
						</a>
						</li>
					</ul>
					</li>
				<li>
				<a href="javascript:;"> 
				<i class="iconfont left-nav-li" lay-tips="收购管理">&#xe723;</i> 
				<cite>收购管理</cite> 
				<i class="iconfont nav_right">&#xe697;</i>
				</a>
					<ul class="sub-menu">
						<li>
						<a onclick="xadmin.add_tab('收购','${app_context}/first/buy')">
						 <i class="iconfont">&#xe6a7;</i> <cite>收购管理</cite>
						 </a>
						 </li>
					</ul>
					</li>
				<li>
				<!--  end-->
				<a href="javascript:;"> 
				<i class="iconfont left-nav-li" lay-tips="图表分析">&#xe723;</i> 
				<cite>图表分析</cite> 
				<i class="iconfont nav_right">&#xe697;</i>
				</a>
					<ul class="sub-menu">
						<li>
						<a onclick="xadmin.add_tab('收购图表分析','${app_context}/first/graph')">
						 <i class="iconfont">&#xe6a7;</i> <cite>收购数据图表分析</cite>
						 </a>
						 </li>
						
						 <li>
						<a onclick="xadmin.add_tab('收购图表分析','${app_context}/first/orderchart')">
						 <i class="iconfont">&#xe6a7;</i> <cite>应付款数据统计分析</cite>
						 </a>
						 </li>
						  <li>
						<a onclick="xadmin.add_tab('详细图表分析','${app_context}/first/orderdetai')">
						 <i class="iconfont">&#xe6a7;</i> <cite>详细图表分析</cite>
						 </a>
						 </li>
					</ul>
					</li>
				<li>
				<!--  end-->
				<!--  start-->
				<a href="javascript:;"> 
				<i class="iconfont left-nav-li" lay-tips="查看日志">&#xe723;</i> 
				<cite>查看日志</cite> 
				<i class="iconfont nav_right">&#xe697;</i>
				</a>
					<ul class="sub-menu">
						<li>
						<a onclick="xadmin.add_tab('查看日志','${app_context}/first/log')">
						 <i class="iconfont">&#xe6a7;</i> 
						 <cite>查看日志</cite>
						 </a>
						 </li>
					</ul>
					</li>
				<li>
			<!-- 	end -->
			<!--  start-->
				<a href="javascript:;"> 
				<i class="iconfont left-nav-li" lay-tips="发布公告">&#xe723;</i> 
				<cite>修改密码</cite> 
				<i class="iconfont nav_right">&#xe697;</i>
				</a>
					<ul class="sub-menu">
						<li>
						<a onclick="xadmin.add_tab('修改密码','${app_context}/first/manegerpassword')">
						 <i class="iconfont">&#xe6a7;</i> 
						 <cite>修改密码</cite>
						 </a>
						 </li>
					</ul>
					</li>
				<li>
			<!-- 	end -->
				 </li>
			</ul>
		</div>
	</div>
	<!-- <div class="x-slide_left"></div> -->
	<!-- 左侧菜单结束 -->
	<!-- 右侧主体开始 -->
	<div class="page-content">
		<div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
			<ul class="layui-tab-title">
				<li class="home"><i class="layui-icon">&#xe68e;</i>我的桌面</li>
			</ul>
			<div class="layui-unselect layui-form-select layui-form-selected"
				id="tab_right">
				<dl>
					<dd data-type="this">关闭当前</dd>
					<dd data-type="other">关闭其它</dd>
					<dd data-type="all">关闭全部</dd>
				</dl>
			</div>
			<div class="layui-tab-content">
				<div class="layui-tab-item layui-show">
					<iframe src='${app_context}/first/theone' frameborder="0" scrolling="yes"
						class="x-iframe"></iframe>
				</div>
			</div>
			<div id="tab_show"></div>
		</div>
	</div>
	<div class="page-content-bg"></div>
	<style id="theme_style"></style>
	<!-- 右侧主体结束 -->
	<!-- 中部结束 -->
	<script>
</body>
</html>
	