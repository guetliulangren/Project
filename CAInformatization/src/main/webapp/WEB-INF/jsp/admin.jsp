<?xml version="1.0" encoding="UTF-8" ?>
<%@ page isELIgnored="false" %>
  <!--  获取项目当前路径-->
<%  pageContext.setAttribute("app_context", request.getContextPath());%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="utf-8" >
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png" >
    <link rel="icon" type="image/png" href="assets/img/favicon.png" >
    <meta http-equiv="X-UA-Compatible" content="IE=edge" >

    <title>管理员界面</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no' name='viewport' >
    <meta name="viewport" content="width=device-width" >
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="${app_context}/js/jquery.min.js"></script>
      <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <!-- Bootstrap core CSS     -->
    <link href="${app_context}/assets/css/bootstrap.min.css" rel="stylesheet" >

    <!--  Material Dashboard CSS    -->
    <link href="${app_context}/assets/css/amaze.css" rel="stylesheet" >

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="${app_context}/assets/css/demo.css" rel="stylesheet" >

    <!--     Fonts and icons     -->
    <link href="${app_context}/assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="${app_context}/assets/css/font-muli.css" rel='stylesheet' type='text/css'>
    <link href="${app_context}/assets/css/themify-icons.css" rel="stylesheet">

    <link href="${app_context}/assets/vendors/sweetalert/css/sweetalert2.min.css" rel="Stylesheet" >
</head>
<body>
    <div class="wrapper">
		<div class="sidebar" data-background-color="brown" data-active-color="danger">
	
            <div class="logo">
                <a href="#" class="simple-text">
                    公司农业信息管理系统
                </a>
            </div>
            <div class="logo logo-mini">
                <a href="#" class="simple-text">
                    A
                </a>
            </div>
            <div class="sidebar-wrapper">
				<ul class="nav">
					<li>
						<a href="#" class="bottom-btn1">
							<i class="ti-widget"></i>
							<p>用户管理</p>
						</a>
					</li>
					
					<li>
						<a  class="bottom-btnR" data-toggle="collapse"  href="#" aria-expanded="false">
							<i class="ti-package"></i>
							<p>角色管理
								<b class="caret"></b>
							</p>
						</a>
					</li>
					<li>
						<a data-toggle="collapse"  href="#" class="collapsed  bottom-btn4" aria-expanded="false">
							<i class="ti-clipboard"></i>
							<p>修改密码
								<b class="caret"></b>
							</p>
						</a>
						
					</li>
					<li>
						<a  href="${app_context}/Export/Exportexcel" class="collapsed" >
							<i class="ti-bar-chart-alt"></i>
							<p>导出用户信息
								<b class="caret"></b>
							</p>
						</a>
					</li>
					<li>
						<a  href="${app_context}/Export/exportoder" class="collapsed" >
							<i class="ti-bar-chart-alt"></i>
							<p>导出收购信息
								<b class="caret"></b>
							</p>
						</a>
					</li>
					<li>
						<a  href="${app_context}/chart/chartinfo"  target="_Blank"   class="collapsed" >
							<i class="ti-bar-chart-alt"></i>
							<p>图标分析
								<b class="caret"></b>
							</p>
						</a>
					</li>
					<li>
						<a data-toggle="collapse" class="bottom-btn5" href="#" class="collapsed" aria-expanded="false">
							<i class="ti-view-list-alt"></i>
							<p>查看日志
								<b class="caret"></b>
							</p>
						</a>
					</li>
					<li>
						<a data-toggle="collapse" href="#" class="collapsed queryproduct1" aria-expanded="false">
							<i class="ti-gift"></i>
							<p>查看商品信息
								<b class="caret"></b>
							</p>
						</a>
						
					</li>
					<li>
						<a href="${app_context}/user/logout">
							<i class="ti-calendar"></i>
							<p>退出登录
								<b class="caret"></b>
							</p>
						</a>
					</li>
					
				</ul>

            </div>
        </div>
        <div class="main-panel">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-minimize">
                        <button id="minimizeSidebar" class="btn btn-round btn-white btn-fill btn-just-icon">
							<i class="ti-arrow-left"></i>
                        </button>
                    </div>
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#"> 欢迎你 ${msgadmin}</a>
                    </div>
                   
                </div>
            </nav>
            <div class="content">
                <div class="container-fluid">

                  
                     <!--  页面右侧偏移9个单位-->
      <div class="col-md-12" col-md-offset-8  id="showResult">
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
 </div>
<!--end主体-->
<!-- 订购数量-->
<div>
 <div class="modal fade  " tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"  id="productsform">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form class="form-horizontal " role="form"   id="productsform1" method="post"  action="">
                <div class="modal-body" >
                    <div class="form-group">
                        <label   class="col-sm-4 control-label" for="productsNumber">收购数量：</label>
                        <div  class="col-sm-7">
                       
                        <input type="text" name="productsNumber" class="form-control" id="productsNumber">
                        </div>
                    </div>
                <div class="modal-footer"   style="text-align:center;">
                    <button type="button" class="btn btn-primary .btn-mini " data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary .btn-mini "  id="productsdefine">确认</button>
                </div>
            </form>
            
        </div>
    </div>
</div>
</div>
<!--  end-->
<!--修改用户信息模态框-->
<div>
 <div class="modal fade addmodal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"  id="buildinfo">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form class="form-horizontal " role="form"   id="updateinfo1" method="post"  action="${app_context}/upinfo/update">
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
                       
                        <input type="text" name="address" class="form-control" id="address">
                        </div>
                    </div>
                    <div class="form-group">
                        <label   class="col-sm-4 control-label" for="phoneNumber">电话：</label>
                        <div  class="col-sm-7">

                        <input type="text" name="phoneNumber" class="form-control" id="phoneNumber">
                        </div>
                    </div>
                <div class="modal-footer"   style="text-align:center;">
                    <button type="button" class="btn btn-primary .btn-mini" data-dismiss="modal">关闭</button>
                    <button type="submit" class="btn btn-primary .btn-mini  "  id="buildagain">确定</button>
                </div>
            </form>
            
        </div>
    </div>
</div>
</div>
<!--end-->
<!--修改密码模态框-->
<div class="modal fade addmodal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"  id="upword">
    <div class="modal-dialog modal-md">
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
                        <input type="password" name="oldpassword" class="form-control" id="tpassword">
                        </div>
                    </div>
                    <div class="form-group">
                        <label   class="col-sm-4 control-label" for="tpassword1">新密码：</label>
                        <div  class="col-sm-7">
                        <input type="password" name="freshpassword" class="form-control" id="tpassword1">
                        </div>
                    </div>
                       <div class="form-group">
                        <label   class="col-sm-4 control-label" for="tpassword2">确认：</label>
                        <div  class="col-sm-7">
                        <input type="password" name="depassword" class="form-control" id="tpassword2">
                        </div>
                    </div>
                
            
                <div class="modal-footer"   style="text-align:center;">
                    <button type="button" class="btn btn-primary .btn-mini" data-dismiss="modal">关闭</button>
                    <button type="submit" class="btn btn-primary .btn-mini"  id="reset">确定</button>
                </div>
            </form>
            
        </div>
    </div>
</div>
<!-- 修改密码end -->

<script type="text/javascript">
alert("登录成功");
/* 修改密码*/
$(".bottom-btn4").on("click",function(){
	/* 获取后台登录时携带的用户名 */

   var name='<%=session.getAttribute("msgadmin")%>';
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
			"当前第" + result.extend.pageinfo.pageNum+"页"+ ",总"
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
  
  var t= confirm("确定修改用户角色吗");
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
			if (eval(result.code)==eval(100)||eval(result.code)==eval(0)) {
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
/* 查看日志 */
 $(".bottom-btn5").on("click",function(){
	 
	 $(function() {

		 to_logpage(1);
		
		});   
 });
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
		nav.appendTo("#pageinfog");
	} 
/* end */
 
	
/* 查看商品信息*/
 $(".queryproduct1").on("click",function(){
	  
	  /* 点击商品管理按钮,立即发送ajax请求到第一页的数据 */
	
	   pagetoproduct();
	  
	  
	});

function pagetoproduct() {
	 $(function() {

			to_pageproduct(1);

		});
	  

	}

	/* 发送ajax请求 */
	function to_pageproduct(pn) {
		$.ajax({

			url : "${app_context}/Query/bystatus",
			data : "pn="+pn,
			type : "GET",
			dataType: "json",
			success : function(result) {
               
				//解析并显示商品数据
				build_product1_info(result)
				//解析并显示分页信息
				build_product_info(result);
				/* 显示导航栏数据 */
				build_productpagenav_info(result);
			}
		});

	}
	/* end */

	//解析并显示产品数据
	function build_product1_info(result)

	{
		/* 每次发送请求前将Thead清空 */
		$("#mytable thead").empty();
		
		var head1=$("<th></th>").append("类型");
		var head2=$("<th></th>").append("价格/元");
		var head3=$("<th></th>").append("数量/斤");
		var head4=$("<th></th>").append("名字");
		var head5=$("<th></th>").append("上架时间");
		var head6=$("<th></th>").append("农户名字");
		var head7=$("<th></th>").append("联系方式");
		var head8=$("<th></th>").append("产品地址");
		
		 /* 创建Thead样式 */
		$("<tr></tr>").append(head1).append(head2).append(
				head3).append(head4).append(head5)
				.append(head6).append(head7).append(head8).appendTo("#mytable thead");
		/* 每次发送请求前将Tbody清空 */
		$("#mytable tbody").empty();
		var product=result.extend.pageinfo.list;
		$.each(product, function(index, items) {
			
		
			var productsType= $("<td> </td>").append(items.productsType);
			var productsPrice = $("<td> </td>").append(items.productsPrice);
			var productsNumber = $("<td> </td>").append(items.productsNumber);
			var productsName = $("<td> </td>").append(items.productsName);
			var productstime= $("<td> </td>").append(items.productstime);
			var productsfamername = $("<td> </td>").append(items.productsfamername);
			var productsphone= $("<td> </td>").append(items.productsphone);
			var productsaddress= $("<td> </td>").append(items.productsaddress);
			var dbutton = $("<button></button>").addClass(
			"btn btn-primary btn-xs   productsuuid_dutton").append(
			$(" <span></span>").addClass("glyphicon glyphicon-pencil"))
			.append("收购").attr("productsuuid",items.productsuuid);
	                              //为按钮添加一个attr标识当前用户名称
	        var dbutton = $("<td></td>").append(dbutton);
			/* 将解析的数据追加到tbody */
			$("<tr></tr>").append(productsType).append(productsPrice).append(
					productsNumber).append(productsName).append(productstime).append(productsfamername).append(productsphone).append(productsaddress).append(dbutton)
					.appendTo("#mytable tbody");

		});

	}
	function build_product_info(result) {
		var pagetotal;
		$("#pageinfo_area").empty();
		$("#pageinfo_area").append(
				"当前第" + result.extend.pageinfo.pageNum+"页"+ ",总"
						+ result.extend.pageinfo.pages + "页,总"
						+ result.extend.pageinfo.total + "条记录");
		pagetotal = result.extend.pageinfo.pages;

	}
	/*end*/

	/*显示导航栏*/
	function build_productpagenav_info(result) {
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
				to_pageproduct(1);
			});
			prepage.click(function() {
				to_pageproduct(result.extend.pageinfo.pageNum + 1);
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
				to_pageproduct(result.extend.pageinfo.pageNum - 1);
			});
			lastpage.click(function() {
				to_pageproduct(result.extend.pageinfo.pages);
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

				to_pageproduct(items);

			});
			ur.append(f);

		});
		ur.append(prepage).append(lastpage);
		var nav = $("<nav></nav>").append(ur);
		nav.appendTo("#pageinfog");
	}
/* end */

/* 订购按钮定义全局变量*/

var productsuuid;
$(document).on("click",".productsuuid_dutton",function(){
  

  productsuuid=$(this).attr("productsuuid");
  $("#productsform").modal({
		backdrop : "static"
	});
  console.log(productsuuid);

});
/* 订购按钮提交 */
$("#productsdefine").on("click",function(){
	
	
	var productnumber=$("#productsNumber").val();
	var operatename='<%=session.getAttribute("msgadmin")%>';
	res=/^[0-9]*$/;
	if(!res.test(productnumber))
	{
	    alert("输入有误，请输入整数");
	    return;
	}
	$.ajax({

		url : "${app_context}/order/handle",
		data : {"productnumber":productnumber,"productsuuid":productsuuid,"operatename":operatename},
		type : "POST",
		dataType: "json",
		success : function(result) {
			
			console.log(result);
			
			if(result.code==200)
			{
				
				alert("库存不足，请重新输入");
			}
			else if (result.code==100) {
				
				alert("收购成功");
				$("#productsform").modal('hide');
				to_pageproduct(1);
			}
			
			
			
		}
	});


});
/*  end*/

</script>
</body>
</html>
