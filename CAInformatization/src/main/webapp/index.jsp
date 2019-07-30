<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%  pageContext.setAttribute("app_context", request.getContextPath());%>
<html>
<head>
    <title>Title</title>
    <script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/longinstyle.css">
</head>
<body style="overflow:scroll;">
${msg}
<h2>公司农业信息管理系统</h2>
<div class="container"    >
    <div class="form row"  >
        <form  class="form-horizontal col-md-offset-3" id="login_form"   action="user/loginValidate"  method="post">
            <h3 class="form-title">LOGIN</h3>
            <div class="col-md-9" >
                <div class="form-group">
                    <i class="fa fa-user fa-lg"></i>
                    <input class="form-control required" type="text" placeholder="Username" id="username" name="username" autofocus="autofocus" maxlength="20"/>
                </div>
                <div class="form-group">
                    <i class="fa fa-lock fa-lg"></i>
                    <input class="form-control required" type="password" placeholder="Password" id="password" name="password" maxlength="8"/>
                </div>
                <div class="form-group">
                    <label class="checkbox">
                        <input type="checkbox" name="remember" value="1"/>记住我
                    </label>
                </div>

                <div class="form-group col-md-offset-9">
                    <button type="button" class="btn btn-success pull-right  col-md-offset-5" name="register"  id="register">注册</button>
                    <button type="submit" class="btn btn-success pull-right " name="submit"  id="submit">登录</button>

                </div>

            </div>
        </form>
    </div>
</div>
<!--注册模态   -->
<div class="modal fade addmodal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"  id="mymodel">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <form class="form-horizontal " role="form"   action="user/register"  method="post">
                <div class="modal-body"  >
                    <div class="form-group">
                        <label  class="col-sm-4 control-label" for="tuser">用户名:</label>
                         <div class="col-sm-7">
                         <i class="fa fa-user fa-lg"></i>
                        <input type="text" name="username" class="form-control" id="tuser">
                        </div>
                    </div>
                    <div class="form-group">
                        <label   class="col-sm-4 control-label" for="tpassword">密码：</label>
                        <div  class="col-sm-7">
                        <i class="fa fa-lock fa-lg"></i>
                        <input type="password" name="password" class="form-control" id="tpassword">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4 control-label" for="taddress">住址：</label>
                        <div  class="col-sm-7">
                        <i  class="fa">&#xf286;</i>
                        <input type="text" name="address" class="form-control" id="taddress">
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-4 control-label" for="tphoneNumber">电话：</label>
                        <div class="col-sm-7">
                        <i class="fa fa-phone-square" aria-hidden="true"></i>
                        <input type="text" name="phoneNumber" class="form-control" id="tphoneNumber">
                        </div>
                    </div>
                    
                <div class="modal-footer"   style="text-align:center;">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary"  id="save">register</button>
                </div>
            </form>
            
        </div>
    </div>
</div>
<script type="text/javascript">
    /*登录监听事件*/
    $("#submit").on("click",function(){
        var name = document.getElementById("username").value.trim();
        var  pwd = document.getElementById("password").value.trim();
             reg = /^(\w){6,20}$/;

        if(!name.length){
            alert("用户名不能为空");
        }else if(!reg.test(pwd)){
            alert("密码应为字母、数字、下划线,长度在6到20之间");
        }
       
        
   });
    /*  弹出模态框*/
    $("#register").on("click",function(){

        /*  弹出模态框点其他地方不会关闭static*/
        $("#mymodel").modal({
   		 backdrop:"static" 
   	 });
        
    });
    
    /*  数据校验*/
    $("#tuser").change(function(){
    	var username= this.value;
        $.ajax({
       url:"${app_context}/user/check",
       data:"username="+username,
       type:"GET",
       dataType:'json',
       success:function(result){   
       if(result.code==100)
       {  
    	   show_validate_msg("#tuser","success","用户名可用");
    	   $("#save").attr("ajax_va","success");
       }
       else  if(result.code==200){
       
    	   show_validate_msg("#tuser","error","用户名不可用");
    	   alert("用户名不可用");
        
       }
       
       }
       
       });
       });
   
  //显示校验结果的提示信息
	function show_validate_msg(ele,status,msg){
		//清除当前元素的校验状态
		$(ele).parent().removeClass("has-success has-error");
		$(ele).next("span").text(msg);
		if("success"==status){
			$(ele).parent().addClass("has-success");
			$(ele).next("span").text(msg);
		}else if("error" == status){
			$(ele).parent().addClass("has-error");
			$(ele).next("span").text(msg);
		}
	}
    
    
    
    
    
  

</script>



</body>
</html>
