<?xml version="1.0" encoding="UTF-8" ?>
<%@ page isELIgnored="false" %>
  <!--  获取项目当前路径-->
<%  pageContext.setAttribute("app_context", request.getContextPath());%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>

<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport"
		  content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>管理员界面</title>
	<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
   <script src="${app_context}/js/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</head>
<body>

<div class="navbar navbar-duomi navbar-static-top" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand"  id="logo">农业信息管理系统
			</a>
		</div>
	</div>
</div>
<div class="container-fluid">
	<div class="row">
	<!-- 页面左侧占3个单位 -->
		<div class="col-md-3" style="height:800px;overflow:scroll;">
			<ul id="main-nav" class="nav nav-tabs nav-stacked" style="">
				<li class="active">
					<a href="#">
						<i class="glyphicon glyphicon-th-large"></i>
						首页
					</a>
				</li>
				<li>
					<a href="#systemSetting" class="nav-header collapsed" data-toggle="collapse">
						<i class="glyphicon glyphicon-cog"></i>
						系统管理
						<span class="pull-right glyphicon glyphicon-chevron-down"></span>
					</a>
					<ul id="systemSetting" class="nav nav-list collapse secondmenu" style="height: 0px;">
						<li><a href="#" class="bottom-btn1"><i class="glyphicon glyphicon-user"></i>用户管理</a></li>
						<li><a href="#" class="bottom-btnR"><i class="glyphicon glyphicon-asterisk"></i>角色管理</a></li>
						<li><a href="#" class="bottom-btn4"><i class="glyphicon glyphicon-edit"></i>修改密码</a></li>
						<li><a href="#" class="bottom-btn5"><i class="glyphicon glyphicon-eye-open"></i>日志查看</a></li>
					</ul>
				</li>
				<li>
					<a href="./plans.html">
						<i class="glyphicon glyphicon-credit-card"></i>
						物料管理
					</a>
				</li>
				<li>
					<a href="./grid.html">
						<i class="glyphicon glyphicon-globe"></i>
						分发配置
						<span class="label label-warning pull-right"></span>
					</a>
				</li>
				<li>
					<a href="./charts.html">
						<i class="glyphicon glyphicon-calendar"></i>
						图表统计
					</a>
				</li>
				<li>
					<a href="${app_context}/user/logout">
						<i class="glyphicon glyphicon-fire"></i>
						退出登录
					</a>
				</li>
			</ul>
		</div>
        <!--  页面右侧偏移9个单位-->
      <div class="col-md-9" col-md-offset-8  id="showResult">
			<table  class="table table-hover"   id="mytable">
				<thead>
				
				</thead>
				<tbody>

				</tbody>
			</table>

		</div>
		
		
		<!-- 显示分页  -->
 <div class="row"   id="removediv">
    <div class="col-md-6"  id="pageinfo_area">

    </div> 
    <div class="col-md-6"  id="pageinfog">

    </div> 
</div>
	<!--分页end-->
	
</div>
</div>
<!--修改用户信息模态框-->
<div>
 <div class="modal fade addmodal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"  id="buildinfo">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <form class="form-horizontal " role="form"   id="repassword" method="post"  action="${app_context}/upinfo/update">
                <div class="modal-body"  >
                    <div class="form-group">
                        <label  class="col-sm-4 control-label" for="tuser">用户名:</label>
                         <div class="col-sm-7" >
                               <select class="form-control"  name="userName" id="buildusername">
									
							   </select>
                        </div> 
                    </div>
                    <div class="form-group">
                        <label   class="col-sm-4 control-label" for="address">地址：</label>
                        <div  class="col-sm-7">
                        <i class="fa fa-lock fa-lg"></i>
                        <input type="text" name="address" class="form-control" id="address">
                        </div>
                    </div>
                    <div class="form-group">
                        <label   class="col-sm-4 control-label" for="phoneNumber">电话：</label>
                        <div  class="col-sm-7">
                        <i class="fa fa-lock fa-lg"></i>
                        <input type="text" name="phoneNumber" class="form-control" id="phoneNumber">
                        </div>
                    </div>
                <div class="modal-footer"   style="text-align:center;">
                    <button type="button" class="btn btn-default .btn-small  col-sm-4" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary .btn-mini  "  id="buildagain">define</button>
                </div>
            </form>
            
        </div>
    </div>
</div>
</div>
<!--end-->
<!--修改密码模态框-->
<div class="modal fade addmodal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"  id="upword">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <form class="form-horizontal " role="form"   id="repassword" method="post"  action="${app_context}/up/uppassword">
                <div class="modal-body"  >
                    <div class="form-group">
                        <label  class="col-sm-4 control-label" for="tuser">用户名:</label>
                         <div class="col-sm-7" >
                       
                        <!-- <input type="text" name="username" class="form-control" id="tuser"> -->
                       <select class="form-control"  name="userName" id="deptadd">
									
									</select>
                        </div> 
                    </div>
                    <div class="form-group">
                        <label   class="col-sm-4 control-label" for="tpassword">旧密码：</label>
                        <div  class="col-sm-7">
                        <i class="fa fa-lock fa-lg"></i>
                        <input type="password" name="oldpassword" class="form-control" id="tpassword">
                        </div>
                    </div>
                    <div class="form-group">
                        <label   class="col-sm-4 control-label" for="tpassword1">新密码：</label>
                        <div  class="col-sm-7">
                        <i class="fa fa-lock fa-lg"></i>
                        <input type="password" name="freshpassword" class="form-control" id="tpassword1">
                        </div>
                    </div>
                       <div class="form-group">
                        <label   class="col-sm-4 control-label" for="tpassword2">确认：</label>
                        <div  class="col-sm-7">
                        <i class="fa fa-lock fa-lg"></i>
                        <input type="password" name="depassword" class="form-control" id="tpassword2">
                        </div>
                    </div>
                
            
                <div class="modal-footer"   style="text-align:center;">
                    <button type="button" class="btn btn-default .btn-small  col-sm-4" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary .btn-mini  "  id="reset">define</button>
                </div>
            </form>
            
        </div>
    </div>
</div>
<!-- 修改密码end -->

 
<SCRIPT type="text/javascript">

	alert("登录成功");
	 /* 修改密码*/
	 $(".bottom-btn4").on("click",function(){
		/* 获取后台登录时携带的用户名 */

        var name= '<%=session.getAttribute("msgadmin")%>';
		$.ajax({
			url : "${app_context}/up/getName",
			type : "GET",
			data : "name=" + name,
			dataType : "json",
			success : function(result) {
				/*  {"code":100,"msg":"成功","extend":{"results":{"userID":26,"userName":"sss","password":"12345a","address":"1233","phoneNumber":12333,"roleID":2,"r":{"roleID":2,"role":"user"}}}}*/
				/*  清空可选框的值表单重置不能达到理想的结果*/
				/*  $("#upword form")[0].reset(); */
				$("#deptadd").empty();
				var data = result.extend.results.userName;
				/* 获取后台返回的用户名 */
				var option = $("<option></option>").append(data);
				/* 追加到文本框中 */
				option.appendTo("#deptadd");
                /* 弹出模态框 */
				$("#upword").modal({
					backdrop : "static"
				});

			}

		});

	});

	/* 3用户角色查看 */
   $(".bottom-btnR").on("click",function(){
	   
	   /* 点击角色管理按钮,立即发送ajax请求到第一页的数据 */
	  
	    pageto();
	   
	   
   });
  function pageto() {
	  $(function() {

			to_page(1);

		});
	   
	
}
	
  /* 发送ajax请求 */
   function to_page(pn) {
		$.ajax({

			url : "${app_context}/role/uprole",
			data : "pn=" + pn,
			type : "GET",
			dataType: "json",
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
		
		var head1=$("<th></th>").append("姓名");
		var head2=$("<th></th>").append("密码");
		var head3=$("<th></th>").append("地址");
		var head4=$("<th></th>").append("电话");
		var head5=$("<th></th>").append("角色");
		var head6=$("<th></th>").append("操作");
		 /* 创建Thead样式 */
		$("<tr></tr>").append(head1).append(head2).append(
				head3).append(head4).append(head5)
				.append(head6).appendTo("#mytable thead");
		/* 每次发送请求前将Tbody清空 */
		$("#mytable tbody").empty();
		var role=result.extend.pageinfo.list;
		$.each(role, function(index, items) {
			
		
			var userName= $("<td> </td>").append(items.userName);
			var password = $("<td> </td>").append(items.password);
			var address = $("<td> </td>").append(items.address);
			var phoneNumber = $("<td> </td>").append(items.phoneNumber);
			var roleID = $("<td> </td>").append(items.roleID);
			var dbutton = $("<button></button>").addClass(
					"btn btn-primary btn-xs   edi_dutton").append(
					$(" <span></span>").addClass("glyphicon glyphicon-pencil"))
					.append("修改用户角色").attr("uproleName",items.userName).attr("uproleID",items.roleID);
			                              //为按钮添加一个attr标识当前用户名称
			var debutton = $("<button></button>").addClass(
					"btn btn-danger btn-xs  dele_dutton").append(
					$(" <span></span>").addClass(
							"glyphicon glyphicon-remove-circle")).append("注销用户").attr("del-id",items.userName);
			                 //为按钮添加一个attr标识当前用户名称
			
			var dbbutton = $("<td></td>").append(dbutton).append(" ").append(
					debutton);
	       
			/* 将解析的数据追加到tbody */
			$("<tr></tr>").append(userName).append(password).append(
					address).append(phoneNumber).append(roleID)
					.append(dbbutton).appendTo("#mytable tbody");

		});

	}
/* end */
	function build_page_info(result) {
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
	function build_pagenav_info(result) {
		$("#pageinfog").empty();
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
		nav.appendTo("#pageinfog");
	}
	/*end*/
   /* 修改用户角色 */
   $(document).on("click",".edi_dutton",function(){
	   
	   var t= confirm("确定修改吗");
	   if(t==true)
	 {
	   var r=$(this).attr("uproleName");
	   var id=$(this).attr("uproleID");
	   uprole(r,id);
	 } else{
		 
		 
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
	   
	   var t= confirm("确定注销吗");
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
/*用户信息查看*/
 $(".bottom-btn1").on("click",function(){
	  
	   /* 点击角色管理按钮,立即发送ajax请求到第一页的数据 */
	   $("#showResult").empty;
	   $("#removediv").empty;
	   $(function() {

			to_userpage(1);
		
		});   
   });
 /* 发送ajax请求 */
 function to_userpage(pn) {
		$.ajax({

			url : "${app_context}/role/uprole",
			data : "pn=" + pn,
			type : "GET",
			dataType: "json",
			success : function(result) {
				//解析并显示用户数据
				rebuild_user_info(result);
				//解析并显示分页信息
				rebuild_page_info(result);
				/* 显示导航栏数据 */
				rebuild_pagenav_info(result);
			}
		});

	}
/* end */

	//解析并显示用户数据
	/*[{"userID":1,"userName":"gmli","password":"12345a","address":"桂林","phoneNumber":1507734724,"roleID":1,"r":null},*/
	function rebuild_user_info(result)

	{
		/* 每次发送请求前将Thead清空 */
		$("#mytable thead").empty();
		
		var head1=$("<th></th>").append("姓名");
		var head2=$("<th></th>").append("密码");
		var head3=$("<th></th>").append("地址");
		var head4=$("<th></th>").append("电话");
		var head5=$("<th></th>").append("角色");
		var head6=$("<th></th>").append("操作");
		 /* 创建Thead样式 */
		$("<tr></tr>").append(head1).append(head2).append(
				head3).append(head4).append(head5)
				.append(head6).appendTo("#mytable thead");
		/* 每次发送请求前将Tbody清空 */
		$("#mytable tbody").empty();
		var role=result.extend.pageinfo.list;
		$.each(role, function(index, items) {
			
		
			var userName= $("<td> </td>").append(items.userName);
			var password = $("<td> </td>").append(items.password);
			var address = $("<td> </td>").append(items.address);
			var phoneNumber = $("<td> </td>").append(items.phoneNumber);
			var roleID = $("<td> </td>").append(items.roleID);
			var dbutton = $("<button></button>").addClass(
					"btn btn-primary btn-xs   up_dutton").append(
					$(" <span></span>").addClass("glyphicon glyphicon-pencil"))
					.append("修改用户信息").attr("ReroleName",items.userName);
			                              //为按钮添加一个attr标识当前用户名称
			var dbbutton = $("<td></td>").append(dbutton);
	       
			/* 将解析的数据追加到tbody */
			$("<tr></tr>").append(userName).append(password).append(
					address).append(phoneNumber).append(roleID)
					.append(dbbutton).appendTo("#mytable tbody");

		});

	}
/* end */
	function rebuild_page_info(result) {
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
	function rebuild_pagenav_info(result) {
		$("#pageinfog").empty();
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
				to_userpage(1);
			});
			prepage.click(function() {
				to_userpage(result.extend.pageinfo.pageNum + 1);
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
				to_userpage(result.extend.pageinfo.pageNum - 1);
			});
			lastpage.click(function() {
				to_userpage(result.extend.pageinfo.pages);
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

				to_userpage(items);

			});
			ur.append(f);

		});
		ur.append(prepage).append(lastpage);
		var nav = $("<nav></nav>").append(ur);
		nav.appendTo("#pageinfog");
	} 
	
	$(document).on("click",".up_dutton",function(){
		/* 获取后台登录时携带的用户名 */

        var name=$(this).attr("ReroleName");
		$.ajax({
			
			url : "${app_context}/upinfo/upinfomation",
			type : "GET",
			data : "name="+name,
			dataType : "json",
			success : function(result) {
				/*  {"code":100,"msg":"成功","extend":{"results":{"userID":26,"userName":"sss","password":"12345a","address":"1233","phoneNumber":12333,"roleID":2,"r":{"roleID":2,"role":"user"}}}}*/
				/*  清空可选框的值表单重置不能达到理想的结果*/
				/*  $("#upword form")[0].reset(); */
				$("#buildusername").empty();
				var data = result.extend.results.userName;
				/* 获取后台返回的用户名 */
				var option = $("<option></option>").append(data);
				/* 追加到文本框中 */
				option.appendTo("#buildusername");
                /* 弹出模态框 */
                 
				 $("#buildinfo").modal({
					backdrop : "static"
				}); 

			}

		});

	});

/*  end*/



</SCRIPT>

</body>
</html>
