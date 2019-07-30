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
							<p>查看已上架商品</p>
						</a>
					</li>
					<li>
						<a data-toggle="collapse" href="#" class="collapsed" aria-expanded="false">
							<i class="ti-bar-chart-alt"></i>
							<p>图表分析
								<b class="caret"></b>
							</p>
						</a>
						<div class="collapse" id="charts" role="navigation" aria-expanded="false" style="height: 0px;">
							<ul class="nav">
								<li>
									<a href="charts/chart-js-charts.html">图表分析</a>
								</li>
								
							</ul>
						</div>
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
						<a data-toggle="collapse" class="bottom-btn5" href="#" class="collapsed" aria-expanded="false">
							<i class="ti-view-list-alt"></i>
							<p>查看日志
								<b class="caret"></b>
							</p>
						</a>
					</li>
					<li>
						<a data-toggle="collapse" href="#" class="collapsed addinfomation" aria-expanded="false">
							<i class="ti-gift"></i>
							<p>添加商品
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
                        <a class="navbar-brand" href="#"> 欢迎你 ${msguser}</a>
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
<!-- 添加销售数据模态框 -->
<div>
 <div class="modal fade addmodal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"  id="addsale">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form class="form-horizontal " role="form"   id="saledata" method="post"  action="${app_context}/AddProduct/product">
                <div class="modal-body"  >
                    <div class="form-group">
                        <label  class="col-sm-4 control-label" for="productsType">类型:</label>
                         <div class="col-sm-7" >
                               <select class="form-control"  name="productsType" id="productsType">
									<option>水果</option>
									<option>蔬菜</option>
									<option>其他</option>
							   </select>
                        </div> 
                    </div>
                    <div class="form-group">
                        <label   class="col-sm-4 control-label" for="productsPrice">价格：</label>
                        <div  class="col-sm-7">
                       
                        <input type="text" name="productsPrice" class="form-control" id="productsPrice">
                        </div>
                    </div>
                    <div class="form-group">
                        <label   class="col-sm-4 control-label" for="productsNumber">数量：</label>
                        <div  class="col-sm-7">
                       
                        <input type="text" name="productsNumber" class="form-control" id="productsNumber">
                        </div>
                    </div>
                    <div class="form-group">
                        <label   class="col-sm-4 control-label" for="productsName">产品名称：</label>
                        <div  class="col-sm-7">

                        <input type="text" name="productsName" class="form-control" id="productsName">
                        </div>
                    </div>
                     <div class="form-group">
                        <label   class="col-sm-4 control-label" for="productsfamername">农户名：</label>
                        <div  class="col-sm-7">

                        <input type="text" name="productsfamername" id="productsfamername" class="form-control" readonly="readonly" value="${msguser}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label   class="col-sm-4 control-label" for="productsphone">电话：</label>
                        <div  class="col-sm-7">

                        <input type="text" name="productsphone" class="form-control" id="productsphone">
                        </div>
                    </div>
                    <div class="form-group">
                        <label   class="col-sm-4 control-label" for="productsaddress">产品地址：</label>
                        <div  class="col-sm-7">

                        <input type="text" name="productsaddress" class="form-control" id="productsaddress">
                        </div>
                    </div>
                <div class="modal-footer"   style="text-align:center;">
                    <button type="button" class="btn btn-primary .btn-mini " data-dismiss="modal">关闭</button>
                    <button type="submit" class="btn btn-primary .btn-mini "  id="datainfo">确认</button>
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
    <div class="modal-dialog modal-sm">
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
                    <button type="button" class="btn btn-primary .btn-mini" data-dismiss="modal">Close</button>
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
                    <button type="button" class="btn btn-primary .btn-mini" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary .btn-mini"  id="reset">define</button>
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

   var name='<%=session.getAttribute("msguser")%>';
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
/* 添加销售数据 */
$(".addinfomation").on("click",function(){
	 $("#addsale").modal({
			backdrop : "static"
		}); 
	
});
/* 查看已上架商品 */
 $(".bottom-btn1").on("click",function(){
	  
	  /* 点击商品管理按钮,立即发送ajax请求到第一页的数据 */
	
	   pageto();
	  
	  
	});

function pageto() {
	 $(function() {

			to_page(1);

		});
	  

	}

	/* 发送ajax请求 */
	function to_page(pn) {
		var productsfamername='<%=session.getAttribute("msguser")%>';
		$.ajax({

			url : "${app_context}/Query/products",
			data : {"pn":pn,"productsfamername":productsfamername},
			type : "GET",
			dataType: "json",
			success : function(result) {

				//解析并显示商品数据
				build_user_info(result);
				//解析并显示分页信息
				build_page_info(result);
				/* 显示导航栏数据 */
				build_pagenav_info(result);
			}
		});

	}
	/* end */

	//解析并显示产品数据
	function build_user_info(result)

	{
		/* 每次发送请求前将Thead清空 */
		$("#mytable thead").empty();
		
		var head1=$("<th></th>").append("类型");
		var head2=$("<th></th>").append("价格/元");
		var head3=$("<th></th>").append("数量/斤");
		var head4=$("<th></th>").append("名字");
		var head5=$("<th></th>").append("上架时间");
		var head6=$("<th></th>").append("商家名字");
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
			/* 将解析的数据追加到tbody */
			$("<tr></tr>").append(productsType).append(productsPrice).append(
					productsNumber).append(productsName).append(productstime).append(productsfamername).append(productsphone).append(productsaddress)
					.appendTo("#mytable tbody");

		});

	}
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
/* end */
</script>
</body>
</html>
