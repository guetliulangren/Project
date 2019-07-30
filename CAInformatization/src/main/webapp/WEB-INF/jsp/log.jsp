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
<link href="${app_context}/bootstrap/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="${app_context}/lib/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="${app_context}/js/xadmin.js"></script>
</head>
  <body>
<div class="x-nav">

		<a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			onclick="location.reload()"> <i
			class="layui-icon layui-icon-refresh" style="line-height: 30px"></i>
		</a>
	</div>
	<div class="layui-fluid">
		<div class="layui-row layui-col-space15">
			<div class="layui-col-md12">
				<div class="layui-card">

					<div class="layui-card-body " id="mytable">
						<table class="table table-hover" id="mytable">
							<thead>

							</thead>
							<tbody>

							</tbody>
						</table>
					</div>
					<div class="layui-card" id="removediv">
						<div class="layui-col-md6" id="pageinfo_area"></div>
						<div class="layui-col-md6" id="pageinfonav"></div>
					</div>
					<!--分页end-->
				</div>

			</div>
		</div>
	</div>
	<!-- 显示分页  -->
	<!-- 显示分页  -->

	<script type="text/javascript">
	 to_logpage(1);
	 function to_logpage(pn) {
			$.ajax({

				url : "${app_context}/log/querylog",
				data : "pn=" + pn,
				type : "GET",
				dataType: "json",
				success : function(result) {
					//解析日志信息数据
					buildlogpage(result);
					//解析并显示分页信息
					rebuildlog_page_info(result);
					/* 显示导航栏数据 */
					rebuild_logpagenav_info(result);
				}
			});

		}
	 function buildlogpage(result) {
		 
		 /* 每次发送请求前将Thead清空 */
			$("#mytable thead").empty();
			var head1=$("<th></th>").append("操作人");
			var head2=$("<th></th>").append("操作日志");
			var head3=$("<th></th>").append("操作时间");
			 /* 创建Thead样式 */
			$("<tr></tr>").append(head1).append(head2).append(head3).appendTo("#mytable thead");
			/* 每次发送请求前将Tbody清空 */
			$("#mytable tbody").empty();
			var loginfo=result.extend.pageinfo.list;
			$.each(loginfo, function(index, items) {
				var Namelog= $("<td> </td>").append(items.namelog); 
				var loginfo= $("<td> </td>").append(items.loginfo);
				var logtime= $("<td> </td>").append(items.logtime);  
				/* 将解析的数据追加到tbody */
				$("<tr></tr>").append(Namelog).append(loginfo).append(logtime).appendTo("#mytable tbody");

			});

		
	}
	 function rebuildlog_page_info(result) {
			var pagetotal;
			$("#pageinfo_area").empty();
			$("#pageinfo_area").append(
					"当前" + result.extend.pageinfo.pageNum + ",总"
							+ result.extend.pageinfo.pages + "页,总"
							+ result.extend.pageinfo.total + "条记录");
			pagetotal = result.extend.pageinfo.pages;

		}
		/*end*/

		/*显示导航栏*/
		function rebuild_logpagenav_info(result) {
			$("#pageinfonav").empty();
			var ur = $("<ul></ul>").addClass("pagination");
			var firstpage = $("<li></li>").append(
					$("<a></a>").append("首页").attr("href", "#"));
			var prepage = $("<li></li>").append($("<a></a>").append("&raquo;"));
		 /* 如果没有前一页，将按钮禁用*/
			if (result.extend.pageinfo.hasPreviousPage == false) {
				firstpage.addClass("disabled");
				prepage.addClass("disabled");

			} else {

				firstpage.click(function() {
					to_logpage(1);
				});
				prepage.click(function() {
					to_logpage(result.extend.pageinfo.pageNum + 1);
				});

			}
			var nextpage = $("<li></li>").append($("<a></a>").append("&laquo;"));
			var lastpage = $("<li></li>").append(
					$("<a></a>").append("末页").attr("href", "#"));
			if (result.extend.pageinfo.hasNextPage == false) {

				lastpage.addClass("disabled");

				nextpage.addClass("disabled");

			} else {
				nextpage.click(function() {
					to_logpage(result.extend.pageinfo.pageNum - 1);
				});
				lastpage.click(function() {
					to_logpage(result.extend.pageinfo.pages);
				});

			}

			ur.append(firstpage).append(nextpage);
			var emp = result.extend.pageinfo.navigatepageNums;
			$.each(emp, function(index, items) {

				var f = $("<li></li>").append($("<a></a>").append(items));
				if (result.extend.pageinfo.pageNum == items) {
					f.addClass("active");
				}
				f.click(function() {

					to_logpage(items);

				});
				ur.append(f);

			});
			ur.append(prepage).append(lastpage);
			var nav = $("<nav></nav>").append(ur);
			nav.appendTo("#pageinfonav");
		} 
	/* end */
	 
	</script>
</body>
</html>