<?xml version="1.0" encoding="UTF-8" ?>
<%@ page isELIgnored="false" %>
  <!--  获取项目当前路径-->
<%  pageContext.setAttribute("app_context", request.getContextPath());%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport"
		  content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>管理员界面</title>
  <script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.js"></script>
  <link href="${app_context}/bootstrap/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="${app_context}/bootstrap/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
<!-- 员工更新框 -->
<div class="modal fade" id="updatemodel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">员工修改</h4>
      </div>
      <div class="modal-body">
	        <form class="form-horizontal">
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">员工名字</label>
				    <div class="col-sm-10">
				      <input type="text"   name="empName" class="form-control" id="updateempname" placeholder="empName">
				      <span id="helpBlock" class="help-block">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">性别</label>
				    <div class="col-sm-10">
				      <label class="radio-inline">
						  <input type="radio" name="gender" id="updatesex" value="男"> 男
						</label>
						<label class="radio-inline">
						  <input type="radio" name="gender" id="updatesex" value="女"> 女
						</label>
				    </div>
				  </div>
				   <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">邮箱</label>
				    <div class="col-sm-10">
				      <input type="email"     name="email" class="form-control" id="updateemail" placeholder="email">
				       <span id="hlpBlock" class="help-block">
				    </div>
				  </div>
				
			      <div class="form-group">
				             <label for="inputEmail3" class="col-sm-2 control-label">部门ID</label>
							  <div class="col-sm-5">
							    <select class="form-control"  name="deptId"  id="updateaddid">
									
									</select>
							    </div>
				  </div> 
				  
				  <div class="form-group">
				   <label for="inputEmail3" class="col-sm-2 control-label">部门名</label>
							  <div class="col-sm-5">
							    <select class="form-control"  name="department"  id="updatdepartment">
									
									</select>
							    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-10 col-sm-10">
				      <button type="submit" class="btn btn-default">提交</button>
				    </div>
				  </div>
				</form>
    
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary"    id="emp_update">更新</button>
      </div>
    </div>
  </div>
</div>



<!-- 员工添加的模态框 -->
<div class="modal fade" id="empaddmodel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">员工添加</h4>
      </div>
      <div class="modal-body">
	        <form class="form-horizontal">
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">员工名字</label>
				    <div class="col-sm-10">
				      <input type="text"   name="empName" class="form-control" id="inputempname" placeholder="empName">
				      <span id="helpBlock" class="help-block">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">性别</label>
				    <div class="col-sm-10">
				      <label class="radio-inline">
						  <input type="radio" name="gender" id="inlineRadio1" value="男"> 男
						</label>
						<label class="radio-inline">
						  <input type="radio" name="gender" id="inlineRadio2" value="女"> 女
						</label>
				    </div>
				  </div>
				   <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">邮箱</label>
				    <div class="col-sm-10">
				      <input type="email"     name="email" class="form-control" id="inputemail" placeholder="email">
				       <span id="hlpBlock" class="help-block">
				    </div>
				  </div>
			  <div class="form-group">
				   <label for="inputEmail3" class="col-sm-2 control-label">部门ID</label>
							  <div class="col-sm-5">
							    <select class="form-control"  name="deptId"  id="deptaddid">
									
									</select>
							    </div>
				  </div> 
				  <div class="form-group">
				   <label for="inputEmail3" class="col-sm-2 control-label">部门名</label>
							  <div class="col-sm-5">
							    <select class="form-control"  name="de"  id="deptadd">
									
									</select>
							    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-10 col-sm-10">
				      <button type="submit" class="btn btn-default">提交</button>
				    </div>
				  </div>
				</form>
    
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary"    id="emp_save">保存</button>
      </div>
    </div>
  </div>
</div>




<div   class="container">
			 
      <!-- 表格 -->
     <div class="row">
      <div class="col-md-12">
        <table  class="table table-hover"  id="mytable">
       <thead>
         
         
         
       </thead>
        <tbody>
      
        </tbody>
         </table>
       
 
     </div>
  
   </div>  
  
<!-- 显示分页  -->
 <div class="row">
    <div class="col-md-6"  id="pageinfo_area">

    </div> 
    <div class="col-md-6"  id="pageinfog">

    </div> 
</div>
</div>

<script  type="text/javascript">



$(function() {

	to_page(1);

});

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
			build_pagenav_info(result);
		}
	});

}

//解析并显示用户数据
/*[{"userID":1,"userName":"gmli","password":"12345a","address":"桂林","phoneNumber":1507734724,"roleID":1,"r":null},*/
function build_user_info(result)

{
	/* 每次发送请求前将Thead清空 */
	$("#mytable thead").empty();
	var head0=$("<th></th>").append("#");
	var head1=$("<th></th>").append("姓名");
	var head2=$("<th></th>").append("密码");
	var head3=$("<th></th>").append("地址");
	var head4=$("<th></th>").append("电话");
	var head5=$("<th></th>").append("角色");
	var head6=$("<th></th>").append("操作");
	 /* 创建Thead样式 */
	$("<tr></tr>").append(head0).append(head1).append(head2).append(
			head3).append(head4).append(head5)
			.append(head6).appendTo("#mytable thead");
	/* 每次发送请求前将Tbody清空 */
	$("#mytable tbody").empty();
	var role=result.extend.pageinfo.list;
	$.each(role, function(index, items) {
		
		var d = $("<td> </td>").append("#");
		var userName= $("<td> </td>").append(items.userName);
		var password = $("<td> </td>").append(items.password);
		var address = $("<td> </td>").append(items.address);
		var phoneNumber = $("<td> </td>").append(items.phoneNumber);
		var roleID = $("<td> </td>").append(items.roleID);
		var dbutton = $("<button></button>").addClass(
				"btn btn-primary btn-xs   edi_dutton").append(
				$(" <span></span>").addClass("glyphicon glyphicon-pencil"))
				.append(" 编辑");
		var debutton = $("<button></button>").addClass(
				"btn btn-danger btn-xs  dele_dutton").append(
				$(" <span></span>").addClass(
						"glyphicon glyphicon-remove-circle")).append("删除");
		var dbbutton = $("<td></td>").append(dbutton).append(" ").append(
				debutton);
       
		/* 将解析的数据追加到tbody */
		$("<tr></tr>").append(d).append(userName).append(password).append(
				address).append(phoneNumber).append(roleID)
				.append(dbbutton).appendTo("#mytable tbody");

	});

}

function build_page_info(result) {
	var pagetotal;
	$("#pageinfo_area").empty();
	$("#pageinfo_area").append(
			"当前" + result.extend.pageinfo.pageNum + ",总"
					+ result.extend.pageinfo.pages + "页,总"
					+ result.extend.pageinfo.total + "条记录");
	pagetotal = result.extend.pageinfo.pages;

}

function build_pagenav_info(result) {
	$("#pageinfog").empty();
	var ur = $("<ul></ul>").addClass("pagination");
	var firstpage = $("<li></li>").append(
			$("<a></a>").append("首页").attr("href", "#"));
	var prepage = $("<li></li>").append($("<a></a>").append("&raquo;"));

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


</script>