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
			onclick="location.reload()" title="å·æ°"> <i
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

</body>
<script text/javascript>
	to_page(1);

	/* 发送ajax请求 */
	function to_page(pn) {
		$.ajax({

			url : "${app_context}/role/uprole",
			data : "pn=" + pn,
			type : "GET",
			dataType : "json",
			success : function(result) {

				//解析并显示用户数据
				build_user_info(result);
				//解析并显示分页信息
				build_page_info(result);
				/* 显示导航栏数据 */
				build_pagenav_info(result);
			}
		});

	}
	/* end */

	//解析并显示用户数据
	/*[{"userID":1,"userName":"gmli","password":"12345a","address":"桂林","phoneNumber":1507734724,"roleID":1,"r":null},*/
	function build_user_info(result)

	{
		/* 每次发送请求前将Thead清空 */
		$("#mytable thead").empty();

		var head1 = $("<th></th>").append("姓名");
		var head2 = $("<th></th>").append("密码");
		var head3 = $("<th></th>").append("地址");
		var head4 = $("<th></th>").append("电话");
		var head5 = $("<th></th>").append("角色");
		var head6 = $("<th></th>").append("操作");
		/* 创建Thead样式 */
		$("<tr></tr>").append(head1).append(head2).append(head3).append(head4)
				.append(head5).append(head6).appendTo("#mytable thead");
		/* 每次发送请求前将Tbody清空 */
		$("#mytable tbody").empty();
		var role = result.extend.pageinfo.list;
		$.each(role, function(index, items) {

			var userName = $("<td> </td>").append(items.userName);
			var password = $("<td> </td>").append(items.password);
			var address = $("<td> </td>").append(items.address);
			var phoneNumber = $("<td> </td>").append(items.phoneNumber);
			var roleID = $("<td> </td>").append(items.roleID);
			var dbutton = $("<button></button>").addClass(
					"btn btn-primary btn-xs   edi_dutton").append(
					$(" <span></span>").addClass("glyphicon glyphicon-pencil"))
					.append("修改用户角色").attr("uproleName", items.userName).attr(
							"uproleID", items.roleID);
			//为按钮添加一个attr标识当前用户名称
			var debutton = $("<button></button>").addClass(
					"btn btn-danger btn-xs  dele_dutton").append(
					$(" <span></span>").addClass(
							"glyphicon glyphicon-remove-circle"))
					.append("注销用户").attr("del-id", items.userName);
			//为按钮添加一个attr标识当前用户名称

			var dbbutton = $("<td></td>").append(dbutton).append(" ").append(
					debutton);

			/* 将解析的数据追加到tbody */
			$("<tr></tr>").append(userName).append(password).append(address)
					.append(phoneNumber).append(roleID).append(dbbutton)
					.appendTo("#mytable tbody");

		});

	}
	/* end */
	function build_page_info(result) {
		var pagetotal;
		$("#pageinfo_area").empty();
		$("#pageinfo_area").append(
				"当前第" + result.extend.pageinfo.pageNum + "页" + ",总"
						+ result.extend.pageinfo.pages + "页,总"
						+ result.extend.pageinfo.total + "条记录");
		pagetotal = result.extend.pageinfo.pages;

	}
	/*end*/

	/*显示导航栏*/
	function build_pagenav_info(result) {
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
				to_page(1);
			});
			prepage.click(function() {
				to_page(result.extend.pageinfo.pageNum + 1);
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
				to_page(result.extend.pageinfo.pageNum - 1);
			});
			lastpage.click(function() {
				to_page(result.extend.pageinfo.pages);
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

				to_page(items);

			});
			ur.append(f);

		});
		ur.append(prepage).append(lastpage);
		var nav = $("<nav></nav>").append(ur);
		nav.appendTo("#pageinfonav");
	}
	/*end*/
	/* 修改用户角色 */
	$(document).on("click", ".edi_dutton", function() {

		var t = confirm("确定修改用户角色吗");
		if (t == true) {
			var r = $(this).attr("uproleName");
			var id = $(this).attr("uproleID");
			uprole(r, id);
		} else {

			alert("取消操作成功");

		}

	});
	function uprole(username,id) {
		$.ajax({
		   	url : "${app_context}/role/Atrole",
				type : "GET",
				data:{"username":username,"id":id},
				dataType: "json",
				success : function(result) {
					
					console.log(result.code);
					if (result.code==100) {
						to_page(1);
						alert("修改成功");
						
					}else {
						to_page(1);
						alert("修改失败");
					}
					
					
				
					
				}
		   }); 

		}

		/* end */	
		/* 注销用户 */
$(document).on("click",".dele_dutton",function(){
  
  var t= confirm("确定注销用户吗");
  if(t==true)
{
  var removename=$(this).attr("del-id");
  removerole(removename);
} else{
	 
	 
	 alert("取消操作成功");
	 
	 
}
    
  
});


function removerole(removename) {
$.ajax({
   	url : "${app_context}/role/remove",
		type : "GET",
		data:"username="+removename,
		dataType: "json",
		success : function(result) {
			
			console.log(result.code);
			if (result.code==100) {
				to_page(1);
				alert("注销成功");
				
			}else {
				to_page(1);
				alert("注销失败");
			}
			
			
		
			
		}
   }); 

}

/* end */
</script>


</html>