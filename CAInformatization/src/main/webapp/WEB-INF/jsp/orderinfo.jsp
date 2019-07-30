<?xml version="1.0" encoding="UTF-8" ?>
<%@ page isELIgnored="false"%>
<!--  获取项目当前路径-->
<% pageContext.setAttribute("app_context", request.getContextPath());
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
	to_page(1);

	function to_page(pn) {
		$.ajax({

			url : "${app_context}/QueryOrder/order1",
			data : "pn=" + pn,
			type : "GET",
			dataType : "json",
			success : function(result) {
				
				//解析并显示用户数据
				rebuild_user_info(result);
				rebuild_page_info(result);
				rebuild_pagenav_info(result);
				
			}
		});

	}
	function rebuild_user_info(result)

	{
		/* 每次发送请求前将Thead清空 */
		$("#mytable thead").empty();

		var head1 = $("<th></th>").append("ID");
		var head2 = $("<th></th>").append("类型");
		var head3 = $("<th></th>").append("价格");
		var head4 = $("<th></th>").append("数量");
		var head5 = $("<th></th>").append("出售状态");
		var head6 = $("<th></th>").append("产品名称");
		var head7 = $("<th></th>").append("收购时间");
		var head8 = $("<th></th>").append("收购人");
		var head9 = $("<th></th>").append("联系地址");
		var head10 = $("<th></th>").append("产品地址");
		/* 创建Thead样式 */
		$("<tr></tr>").append(head1).append(head2).append(head3).append(head4)
				.append(head5).append(head6).append(head7).append(head8).append(head9)
				.append(head10).appendTo("#mytable thead");
		/* 每次发送请求前将Tbody清空 */
		$("#mytable tbody").empty();
		var role = result.extend.pageinfo.list;
		$.each(role, function(index, items) {

			var productsID = $("<td> </td>").append(items.productsID);
			var productsType = $("<td> </td>").append(items.productsType);
			var productsPrice = $("<td> </td>").append(items.productsPrice);
			var productsNumber = $("<td> </td>").append(items.productsNumber);
			var productsStatus = $("<td> </td>").append(items.productsStatus);
			var productsName = $("<td> </td>").append(items.productsName);
			var productstime = $("<td> </td>").append(items.productstime);
			var productsfamername = $("<td> </td>").append(items.productsfamername);
			var productsphone = $("<td> </td>").append(items.productsphone);
			var productsaddress = $("<td> </td>").append(items.productsaddress);
			var dbutton = $("<button></button>").addClass(
					"btn btn-primary btn-xs   uporder_dutton").append(
					$(" <span></span>").addClass("glyphicon glyphicon-pencil"))
					.append("修改订单信息").attr("productsuuid", items.productsuuid);
			//为按钮添加一个attr标识当前用户名称
			var dbbutton = $("<td></td>").append(dbutton);

			/* 将解析的数据追加到tbody */
			$("<tr></tr>").append(productsID).append(productsType).append(productsPrice).append(productsNumber)
					.append(productsStatus).append(productsName).append(productstime).append(productsfamername).append(productsphone)
					.append(productsaddress).append(dbbutton)
					.appendTo("#mytable tbody");

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

	/*显示导航栏*/
	function rebuild_pagenav_info(result) {
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
	
</script>


</html>