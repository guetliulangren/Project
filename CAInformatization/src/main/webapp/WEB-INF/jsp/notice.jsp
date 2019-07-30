<?xml version="1.0" encoding="UTF-8" ?>
<%@ page isELIgnored="false"%>
<!--  获取项目当前路径-->
<%
    pageContext.setAttribute("app_context", request.getContextPath());
%>
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
<link rel="stylesheet" href="${app_context}/css/reset.css">
<link rel="stylesheet" href="${app_context}/css/index.css">
<script src="${app_context}/js/jquery.min.js"></script>
<script src="${app_context}/lib/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="${app_context}/js/xadmin.js"></script>

</head>
<body style="background-color: white;">

	<div id="container">

		<ul>

			<li><button id="undo" title="撤销"></button></li>
			<li><select id="fontName">
					<option value="">默认</option>
					<option value="STHeiti Light [STXihei]	">华文细黑</option>
					<option value="STHeiti">华文黑体</option>
					<option value="STKaiti">华文楷体</option>
					<option value="STSong">华文宋体</option>
					<option value="STFangsong">华文仿宋</option>
					<option value="Apple LiGothic Medium">苹果丽中黑</option>
			</select></li>
			<li><select name="" id="fontSize">
					<option value="5">选择字号</option>
					<option value="7">7</option>
					<option value="6">6</option>
					<option value="5">5</option>
					<option value="4">4</option>
					<option value="3">3</option>
					<option value="2">2</option>
					<option value="1">1</option>
			</select></li>
			<li>
				<button id="bold" title="加粗">B</button>
			</li>
			<li>
				<button id="italic" title="斜体">
					<span>I</span>
				</button>
			</li>
			<li>
				<button id="underline" title="下划线">U</button>
			</li>


			</button>
			</li>
		</ul>
		<div id="titleone" contenteditable="true"></div>
		<div id="text_box" contenteditable="true"></div>

		<BUTTON type="button" class="layui-btn layui-btn-normal"
			onclick="report()">
			发公告
			<BUTTON />
			<script type="text/javascript" src="${app_context}/js/index.js"></script>
	</div>

	<script type="text/javascript">
		var layer = layui.layer;
		  
		 function report()
		{
			var name='<%=session.getAttribute("superman")%>';
			var title = document.getElementById('titleone').innerHTML;
			var comment = document.getElementById('text_box').innerHTML;
			var reg = /^\s*$/g;
			if (reg.test(title) || reg.test(comment)) {

				layer.msg("输入不能为空值");
				return false;

			}
			
			$.ajax({

				url : "${app_context}/addcomment/comment",
				data : {
					"name" : name,
					"title" : title,
					"comment" : comment
				},
				type : "post",
				dataType : "json",
				success : function(result) {

					if (result.code == 100) {

						layer.msg("发布成功");
					} else {
						layer.msg("发布失败");
					}

				}
			});

		}
	</script>
</body>
</html>