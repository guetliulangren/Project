<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%  pageContext.setAttribute("app_context", request.getContextPath());%>
<html>
<head>
    <title>超级管理员</title>
    <link rel="stylesheet" type="text/css" href="${app_context}/css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="${app_context}/css/demo.css" />
    <!--必要样式-->
    <link rel="stylesheet" type="text/css" href="${app_context}/css/component.css" />
    <link rel="stylesheet" type="text/css" href="${app_context}/lib/layui/css/layui.css" />
    <script type="text/javascript" src="${app_context}/js/jquery.min.js"></script>
    <script src="${app_context}/lib/layui/layui.js" charset="utf-8"></script>
</head>
<body>
<div class="container demo-1">
    <div class="content">
        <div id="large-header" class="large-header">
            <canvas id="demo-canvas"></canvas>
            <div class="logo_box">
                <h3>超级管理员</h3>
                <form action="#" name="f" method="post">
                    <div class="input_outer">
                        <span class="u_user"></span>
                        <input name="username" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入账户">
                    </div>
                    <div class="input_outer">
                        <span class="us_uer"></span>
                        <input name="password" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请输入密码">
                    </div>
                    <div class="mb2"><a id = "sub" lay-filter="sub" class="act-but submit" href="javascript:;" style="color: #FFFFFF">登录</a></div>
                </form>
            </div>
        </div>
    </div>
</div><!-- /container -->
<script src="${app_context}/js/TweenLite.min.js"></script>
<script src="${app_context}/js/EasePack.min.js"></script>
<script src="${app_context}/js/rAF.js"></script>
<script src="${app_context}/js/demo-1.js"></script>
<script type="text/javascript">
//加载弹出层组件
layui.use('layer',function(){

    var layer = layui.layer;

    //登录的点击事件
    $("#sub").on("click",function(){
        login();
    })

    $("body").keydown(function(){
        if(event.keyCode == "13"){
            login();
        }
    })

    //登录函数
    function login(){
        var username = $(" input[ name='username' ] ").val();
        var password = $(" input[ name='password' ] ").val();
        $.ajax({
            url:"${app_context}/login/superman",
            data:{"username":username,"password":password},
            type:"post",
            dataType:"json",
            success:function(data){
                if(data.code==100){
                    window.location = "${app_context}/first/supermanage";
                }else{
                    layer.msg(data.msg);
                }
            }
        })
    }
})
</script>
</body>
</html>
