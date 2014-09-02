<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<jsp:include page="/menu-bootstrap.jsp"></jsp:include>
			<div class="span10">
				<div class="tb-head"></div>
				<div>
					<div id="barCanvas" style="width: 480px; height: 240px; width: 50%; float: left"></div>
					<div id="pieCanvas" style="width: 480px; height: 240px; width: 50%; float: right"></div>
				</div>
				<div>
					<div id="lineCanvas" style="width: 480px; height: 240px; width: 50%; float: left"></div>
				</div>
				<form>
					<button type="submit" class="btn btn-primary">统计</button>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="${ctx}/resource/chart/excanvas.js"></script>
	<script type="text/javascript" src="${ctx}/resource/chart/loongchart.core.js"></script>
	<script type="text/javascript" src="${ctx}/resource/chart/loongchart.histogram3d.js"></script>
	<script type="text/javascript" src="${ctx}/resource/chart/loongchart.pie3d.js"></script>
	<script type="text/javascript" src="${ctx}/resource/chart/loongchart.line.js"></script>

	<script type="text/javascript">
		window.onload = function() {
			var month = [ {
				text : '一月',
				value : 7
			}, {
				text : '二月',
				value : 5
			}, {
				text : '三月',
				value : 12
			}, {
				text : '四月',
				value : 12
			}, {
				text : '五月',
				value : 15
			}, {
				text : '六月',
				value : 13
			}, {
				text : '七月',
				value : 15
			}, {
				text : '八月',
				value : 18
			}, {
				text : '九月',
				value : 12
			}, {
				text : '十月',
				value : 4
			} ];
			var barOptions = {
				valueType : 'n',
				animationSteps : 32,
				bar : {
					useSameColor : true
				},
				histogram : {
					useSameColor : true
				},
				title : {
					content : 'E网管2014年1至10月份的技术支持记录'
				},
				valueAxis : {
					linewidth : 1
				},
				subTitle : {
					content : '结论为：反馈问题最多'
				},
				scale : {
					linewidth : 1,
					backcolors : [ 'rgba(175,199,238,0.2)',
							'rgba(245,222,179,0.2)' ]
				},
				cross : {
					linewidth : 3,
					linecolor : '#ffffff'
				},
				caption : {
					content : '笔'
				},
				footer : {
					content : '网管技术支持统计-柱图',
					fontcolor : '#000000',
					fontsize : 14
				},
				shadow : {
					show : true,
					color : 'rgba(10,10,10,1)',
					blur : 3,
					offsetX : -3,
					offsetY : 3
				}
			};

			window.blchart = new LChart.Histogram3D('barCanvas', 'CN');
			blchart.SetSkin('BlackAndWhite');
			blchart.SetOptions(barOptions);
			blchart.Draw(month);

			/*****************************************************************
			 *	pie charts
			 ****************************************************************/

			var lang = [ {
				text : 'C',
				value : 17.855
			}, {
				text : 'Java',
				value : 17.417
			}, {
				text : 'Objective-C',
				value : 10.283
			}, {
				text : 'C++',
				value : 9.140
			}, {
				text : 'C#',
				value : 6.196
			}, {
				text : 'PHP',
				value : 5.546
			}, {
				text : 'Visual Basic',
				value : 4.749
			}, {
				text : 'Python',
				value : 4.173
			}, {
				text : 'Perl',
				value : 2.264
			}, {
				text : 'Javascript',
				value : 1.976
			}, {
				text : 'Others',
				value : 20.401
			} ];
			var pieOptions = {
					animationSteps : 32,//animation : false,
				title : {
					content : 'Programming Language Ranking List in January 2013.'
				},
				subTitle : {
					content : 'Here\'s Top Ten Languages.'
				},
				legend : {
					sidelength : 10,
					fontsize : 13,
					enablecontrol : true
				},
				tip : {
					content : function(data) {
						return '<div>' + data.text + '<br/>value：'
								+ data.value.toString() + '<br/>percent：'
								+ data.percent.toFixed(3) + '%</div>';
					}
				},
				footer : {
					content : '网管关技术支持统计-饼图',
					fontcolor : '#000000',
					fontsize : 14
				}
			};

			window.plchart = new LChart.Pie3D('pieCanvas', 'CN');
			plchart.SetSkin('BlackAndWhite');
			plchart.SetOptions(pieOptions);
			plchart.Draw(lang);
			/*****************************************************************
			 *	line charts
			 ****************************************************************/
			var site0 = [], labels = [];
			for ( var i = 0; i < 120; i++) {
				site0.push(30 + parseInt(Math.random() * 70));
				if (i % 4 == 0) {
					labels.push((i / 4).toString() + "日");
				}
			}
			var lineData = [ {
				text : 'Site0',
				value : site0,
				color : '#000000',
				click : function(data, e) {
					//alert('Click site0! value is:' + data.vvalue);
				},
				mouseover : function(data, e) {
					//alert('Mouse over site0! value is:' + data.vvalue);
				}
			}];

			var lineOptions = {
				valueType : 'n',
				animationSteps : 30,
				title : {
					content : 'This chart shows traffic of two sites in a day.'
				},
				node : {
					linecolor : "#f3cece",
					linewidth : 1
				},
				subTitle : {
					content : 'The data is apocryphal.'
				},
				valueAxis : {
					linewidth : 1,
					verticalcomputeP : true,
					heap : true
				},
				labelAxis : {
					labels : labels
				},
				legend : {
					elementtype : "l"
				},
				scale : {
					linewidth : 1,
					backcolors : [ 'rgba(12,67,255,0.2)', 'rgba(0,191,255,0.2)' ]
				},
				yAxisTitle : {
					content : 'Calculated by how many clicks by users.'
				},
				tip : {
					merge : true
				},
				footer : {
					content : '网关技术支持统计-线图',
					fontcolor : '#000000',
					fontsize : 14
				}
			};

			window.llchart = new LChart.Line('lineCanvas', 'CN');
			llchart.SetSkin('BlackAndWhite');
			llchart.SetOptions(lineOptions);
			llchart.Draw(lineData);
		};
	</script>
</body>
</html>