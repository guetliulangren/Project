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
<body>

<form class="layui-form"   id="passwordform"> 
  <div class="layui-form-item">
    <label class="layui-form-label">用户名</label>
    <div class="layui-input-block">
      <input type="text" name="username" placeholder=""  value="${superman}"  id="username"  readonly="readonly"   autocomplete="off" class="layui-input">
    </div>
  </div>
 <div class="layui-form-item">
    <label class="layui-form-label">输入旧密码</label>
    <div class="layui-input-block">
      <input type="password" name="oldpassword" placeholder="" autocomplete="off" id="oldpassword" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">输入新密码</label>
    <div class="layui-input-block">
      <input type="password" name="freshpassword" placeholder="" autocomplete="off" id="freshpassword"     class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">确认密码</label>
    <div class="layui-input-block">
      <input type="password" name="depassword" placeholder="" autocomplete="off"   id="depassword"  class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn"  onclick="repassword()"   lay-submit lay-filter="*">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>

</form>
	

<SCRIPT type="text/javascript">
       var layer = layui.layer;
       function repassword()
       {
		/* 获取后台登录时携带的用户名 */
	   var username=$("#username").val();
	   var oldpassword=$("#oldpassword").val();
	   var freshpassword=$("#freshpassword").val();
	   var depassword=$("#depassword").val();
		console.log(name); 
		$.ajax({
			url : "${app_context}/upsuper/upsuper",
			type : "POST",
			data :{"username":username,"oldpassword":oldpassword,"freshpassword":freshpassword,"depassword":depassword},
			dataType : "json",
			success : function(result) {
				
				console.log(result);
				
				if(result.code==100)
				{
					layer.msg("修改成功");
					
				}
				else {
					alert("请检查输入密码是否一致");
				}
				
				
			
			}

		});

       }
	
	</SCRIPT>

</body>
</html>