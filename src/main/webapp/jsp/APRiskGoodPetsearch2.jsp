<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DataGrid Complex Toolbar-jQuery EasyUI Demo</title>
<link rel="stylesheet" type="text/css"
	href="http://www.java1234.com/jquery-easyui-1.3.3/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="http://www.java1234.com/jquery-easyui-1.3.3/themes/icon.css" />
<link rel="stylesheet" type="text/css"
	href="http://www.java1234.com/jquery-easyui-1.3.3/demo/demo.css" />
<script type="text/javascript"
	src="http://www.java1234.com/jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript"
	src="http://www.java1234.com/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="http://www.java1234.com/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/highcharts-3d.js"></script>
</head>
<body>
	<div id="datadlg" style="width:900px;" align="center" class="easyui-dialog"
		title="危险货物审批及紧急审批统计" data-options="iconCls:'icon-ok'">
		<div class="easyui-tabs">
			<div title="审批通过率" style="padding: 10px">
				<div title="审批通过率">
					<button class="easyui-linkbutton" onclick="search()">危险货物审核通过率占比</button>
					<div align="left">
						<div id="container"
							style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
					</div>
				</div>

			</div>
			<div title="审核数目统计" style="padding: 10px">
				<div>
					<button class="easyui-linkbutton" onclick="search2()">各类审核数目统计</button>
					<div id="container1" align="right"
						style="margin-top: 500px; width: 550px; height: 400px; margin: 0 auto"></div>
				</div>
			</div>
			<div title="紧急审批占比" style="padding: 10px">
				<div>
					<button class="easyui-linkbutton" onclick="search3()">危险货物紧急申报比率</button>
					<div align="left">
						<div id="container2"
							style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
					</div>
				</div>
			</div>
		</div>
	</div>




	<script language="JavaScript">
		function search() {
			$.post('/firstssm/info/count', function(result) {
				var marks = result.marks;
				var markArr = new Array();
				for (var i = 0; i < marks.length; i++) {
					markArr.push(marks[i]);
				}
				showChart(markArr);
			}, "json");
		}
		/* 统计图 */
		function showChart(z) {
			var chart1 = new Highcharts.chart(
					'container',
					{
						chart : {
							plotBackgroundColor : null,
							plotBorderWidth : null,
							plotShadow : false,
							type : 'pie'
						},
						title : {
							text : '港口危险货物审批历史统计--2018'
						},
						tooltip : {
							pointFormat : '{series.name}: <b>{point.percentage:.1f}%</b>'
						},
						plotOptions : {
							pie : {
								allowPointSelect : true,
								cursor : 'pointer',
								dataLabels : {
									enabled : true,
									format : '<b>{point.name}</b>: {point.percentage:.1f} %',
									style : {
										color : (Highcharts.theme && Highcharts.theme.contrastTextColor)
												|| 'black'
									}
								//enabled : false
								},
								showInLegend : true
							}
						},
						series : [ {
							name : '港口危险货物审核占比',
							colorByPoint : true,
							data : z
						} ]
					});
		}
	</script>

	<script language="JavaScript">
		function search2() {
			$.post('/firstssm/info/count', function(result) {
				var value = result.value;
				var xArr = new Array();
				console.info(value);
				for (var i = 0; i < value.length; i++) {
					xArr.push(value[i]);
				}
				
				showChart2(xArr);
			}, "json");
		}
		function showChart2(x) { 
			Highcharts.chart('container1', {
				chart: {
						type: 'column'
				},
				title: {
						text: '港口危险货物审核记录-2018'
				},
				xAxis: {
						type: '审核类型'
				},
				yAxis: {
						title: {
								text: '申报审核数量'
						}
				},
				legend: {
						enabled: false
				},
				plotOptions: {
						series: {
								borderWidth: 0,
								dataLabels: {
										enabled: true,
										format: '{point.y}'
								}
						}
				},
				tooltip: {
						headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
						pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}%</b> of total<br/>'
				},
				series: [{
					data: x
				}],
		});
		} 
	</script>
	
	<script language="JavaScript">
		function search3() {
			$.post('/firstssm/info/count', function(result) {
				var rows = result.rows;
				//var marks = result.marks;
				//var xArr = new Array();
				//var yArr = new Array();
				var Rows = new Array();
				//var markArr = new Array();
				//alert(marks.length);
				for (var i = 0; i < rows.length; i++) {
					Rows.push(rows[i]);
				}
				/* for (var i = 0; i < marks.length; i++) {
					markArr.push(marks[i]);
				} */
				showChart3(Rows);
			}, "json");
		}
		/* 统计图 */
		function showChart3(y) {
			var chart1 = new Highcharts.chart(
					'container2',
					{
						chart : {
							plotBackgroundColor : null,
							plotBorderWidth : null,
							plotShadow : false,
							type : 'pie'
						},
						title : {
							text : '港口危险货物紧急审批统计--2018'
						},
						tooltip : {
							pointFormat : '{series.name}: <b>{point.percentage:.1f}%</b>'
						},
						plotOptions : {
							pie : {
								allowPointSelect : true,
								cursor : 'pointer',
								dataLabels : {
									enabled : true,
									format : '<b>{point.name}</b>: {point.percentage:.1f} %',
									style : {
										color : (Highcharts.theme && Highcharts.theme.contrastTextColor)
												|| 'black'
									}
								//enabled : false
								},
								showInLegend : true
							}
						},
						series : [ {
							name : '港口危险货物是否申报占比',
							colorByPoint : true,
							data : y
						} ]
					});
		}
	</script>
</body>
