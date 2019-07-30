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

</body>
<script text/javascript>
to_pageproduct(1);
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
	nav.appendTo("#pageinfonav");
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


</html>