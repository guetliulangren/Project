<?xml version="1.0" encoding="UTF-8" ?>
<%@ page isELIgnored="false"%>
<!--  获取项目当前路径-->
<%
    pageContext.setAttribute("app_context", request.getContextPath());
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="${app_context}/js/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>收购图表分析</title>
</head>
<body style="height: 100%; margin: 0">
	<div id="container" style="height: 100%"></div>
	<div id="container" style="height: 100%"></div>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>
	<script type="text/javascript">
		var object;
		

		$.ajax({
			url : "${app_context}/OrderchartController/ordergraph",
			type : "GET",
			dataType : "json",
			success : function(result) {
				
				 var serie = [];
				    for(var i = 0; i <result.length; i++){
				        var item = {
				            name:result[i].name,
				          
				        }
				        serie.push(item);
				    }
				   
				object = result;
				var dom = document.getElementById("container");
				var myChart = echarts.init(dom);
				var app = {};
				option = null;
				option = {
				    title: {
				        text: '收购统计',
				        left: 'center'
				    },
				    tooltip : {
				        trigger: 'item',
				        formatter: "{a} <br/>{b} : {c} ({d}%)"
				    },
				    legend: {
				        // orient: 'vertical',
				        // top: 'middle',
				        bottom: 10,
				        left: 'center',
				        data: serie
				    },
				    series : [
				        {
				            type: 'pie',
				            radius : '65%',
				            center: ['50%', '50%'],
				            selectedMode: 'single',
				            data:object,
				            itemStyle: {
				                emphasis: {
				                    shadowBlur: 10,
				                    shadowOffsetX: 0,
				                    shadowColor: 'rgba(0, 0, 0, 0.5)'
				                }
				            }
				        }
				    ]
				};
				;
				if (option && typeof option === "object") {
				    myChart.setOption(option, true);
				}
			}
		});

	
	</script>
</body>
</html>