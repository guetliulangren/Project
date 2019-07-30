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
<script src="${app_context}/js/jquery.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<!-- Bootstrap core CSS     -->
<link
	href="${app_context}/bootstrap/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="${app_context}/lib/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="${app_context}/js/xadmin.js"></script>
</head>
<body>
<div class="lunbo123" style="position: relative; height: 50%; overflow: hidden; background-color: white";>
		<ul id="myul" style="margin: 6px; padding: 0px; position: absolute; width: auto; height:50%;">
		
		</ul>
	</div>
	<script src="//cdn.bootcss.com/jquery/2.2.2/jquery.js"></script>
	<script>
		function lunbo123(id, height) {
			var ul = $(id);
			var liFirst = ul.find('li:first');
			$(id).animate({
				top : height
			}).animate({
				"top" : 0
			}, 0, function() {
				var clone = liFirst.clone();
				$(id).append(clone);
				liFirst.remove();
			})
		}
		setInterval("lunbo123('#myul','-45px')", 2500)
	</script>
	<style>
#myul {
	list-style-type: none;
	width: 300px;
	height:200px;
	font-size: 20px;
}
</style>

	<SCRIPT type="text/javascript">
	    report();
		function report()

		{
			$.ajax({

				url : "${app_context}/addcomment/reportstart",
				type : "get",
				dataType : "json",
				success : function(result) {
                    var reportone=result.extend.report;
					$.each(reportone, function(index, items) {

						$("<li></li>").append($("<a></a>").attr('style','color: #000000'))
                        .append("发布者:").append(items.reportname).append("").append("主题:").append(items.reporttitle).append("").append("公告内容:").append(items.reportcomment).append("").append("发布时间:").append(items.reporttime).appendTo("#myul");
					});
					

				}
			});
		}
	</SCRIPT>
</body>

</html>