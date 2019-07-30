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
</body>
<script text/javascript>


var name='<%=session.getAttribute("superman")%>';
to_userpage();
function to_userpage() {
	$.ajax({

		url : "${app_context}/user/querybyname",
		data : "name=" + name,
		type : "GET",
		dataType: "json",
		success : function(result) {
			//解析并显示用户数据
			rebuild_user_info(result);
		
		}
	});

}
/* end */

//解析并显示用户数据
/*[{"userID":1,"userName":"gmli","password":"12345a","address":"桂林","phoneNumber":1507734724,"roleID":1,"r":null},*/
function rebuild_user_info(result)

{
	console.log(result);
	
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
	
		items=result.extend.results;	
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
}


/*  修改用户信息*/
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

</script>


</html>