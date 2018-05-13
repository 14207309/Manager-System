<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DataGrid Complex Toolbar - jQuery EasyUI Demo</title>
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
</head>
<body>
	<div style="margin: 10px 0;">
		<table id="comment" class="easyui-datagrid"
			data-options="rownumbers:true,singleSelect:true,toolbar:'#tb'">

		</table>
	</div>
	<div id="tb" style="padding: 5px; height: auto">
		<div style="margin-bottom: 5px">
			<a href="#" class="easyui-linkbutton" iconCls="icon-reload"
				plain="true" onclick="reload()">刷新</a> <a href="#"
				class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a> <a
				href="#" class="easyui-linkbutton" iconCls="icon-cancel"
				plain="true">删除</a>
		</div>
		<div>
			日期从: <input class="easyui-datebox" style="width: 80px" /> 到: <input
				class="easyui-datebox" style="width: 80px" /> 语言: <select
				class="easyui-combobox" panelHeight="auto" style="width: 100px">
				<option value="java">Java</option>
				<option value="c">C</option>
				<option value="basic">Basic</option>
				<option value="perl">Perl</option>
				<option value="python">Python</option>
			</select> <a href="#" class="easyui-linkbutton" iconCls="icon-search">搜索</a>
		</div>
	</div>
	<!-- 弹窗显示意见箱信息和回复区 -->
	<div id="detaildlg" class="easyui-dialog" title="意见箱"
		data-options="iconCls:'icon-ok',closed:true"
		style="width: 900px; height: 550px;">
		<div class="easyui-tabs">
			<div title="意见箱内容及回复" style="padding: 10px">
				<div>
					<form id="grid1" method="post" style="height: 420px;" novalidate>
						<table style="margin-top: 20px; margin-bottom: 40px"
							align="center">
							<tr>
								<input type="hidden" name="cid" id="cid"></input>
								<td align="center"><label>提交企业:</label></td>
								<td><input id="ccompany" name="ccompany" class="easyui-textbox"
									readonly="true"
									style="width: 150px; height: 23px; margin-right: 10px"></td>
							</tr>
							<tr>
								<td align="center"><label>提交人:</label></td>
								<td><input id="cname" name="cname" class="easyui-textbox"
									readonly="true"
									style="width: 150px; height: 23px; margin-right: 10px"></td>
							</tr>
							<tr>
								<td align="center"><label>提交日期:</label></td>
								<td><input id="cdate" name="cdate"
									style="width: 180px; height: 32px; margin-right: 10px"
									class="easyui-datebox" readonly="true"
									data-options="required:true,editable:false"> </input></td>
							</tr>
							<tr>
								<td align="center"><label>具体内容:</label></td>
								<td><input id="ccontext" name="ccontext"
									style="width: 300px; height: 150px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
			<div title="意见箱回复" style="padding: 10px">
				<div>
					<form id="grid2" style="height: 420px;">
						<table style="margin-top: 40px; margin-bottom: 75px"
							align="center">
							<tr>
								<input type="hidden" name="cid" id="cid"></input>
								<td align="center"><label>回复人:</label></td>
								<td><input id="crepname" type="text" name="crepname"
									style="width: 150px; height: 23px;" class="easyui-validatebox"
									data-options="required:true"></input></td>
							</tr>
							<tr>
								<td align="center"><label>回复日期:</label></td>
								<td><input id="crepdate" class="easyui-datebox" type="text"
									style="width: 180px; height: 30px; margin-right: 40px;"
									name="crepdate" data-options="required:true,editable:false"></input></td>
							</tr>
							<tr>
								<td align="center"><label>回复内容:</label></td>
								<td><input id="crepcont" name="crepcont" type="text"
									style="width: 300px; height: 150px; margin-right: 10px"
									class="easyui-validatebox" data-options="required:true"></td>
							</tr>
						</table>
						<div id="dlg-buttons" align="center">
							<a href="javascript:void(0)" class="easyui-linkbutton"
								iconCls="icon-ok" onclick="save2()">提交回复</a> <a
								href="javascript:void(0)" class="easyui-linkbutton"
								iconCls="icon-cancel"
								onclick="javascript:$('#detaildlg').dialog('close')">关闭</a>
						</div>
					</form>
				</div>
			</div> 
		</div>
	</div>
	</div>
	<script type="text/javascript">
		$('#comment')
				.datagrid(
						{
							url : '/firstssm/info/commentsearch3',//数据请求地址  
							/* toolbar:'#toolbar',// 数据网格工具栏 比如添加 修改   */
							pagination : true,//分页显示  
							fitColumns : true,//自动适应宽度  
							autoRowHeight : true,//自动行高度  
							loadMsg : '正在加载数据请稍后...',
							nowrap : true,//设置为true 有利于提高性能  
							idField : 'id',//字段标识  
							rownumbers : true,//显示行号  
							singleSelect : true,//只允许选择一行  
							//pageNumber:1,//初始化页面数量  
							pageSize : 10,//初始化显示条数  
							pageList : [ 10, 15, 20 ],//分页列表  
							columns : [ [
									{
										field : 'ccompany',
										title : '提交企业',
										width : 100,
										align : 'center'
									},{
										field : 'cname',
										title : '提交人',
										width : 50,
										align : 'center'
									},
									{
										field : 'cdate',
										title : '提交日期',
										width : 60,
										align : 'center'
									},
									{
										field : 'ccontext',
										title : '具体内容',
										width : 160,
										align : 'center'
									},{
										field : 'crepname',
										title : '回复人',
										width : 50,
										align : 'center'
									},
									{
										field : 'crepdate',
										title : '回复日期',
										width : 60,
										align : 'center'
									},
									{
										field : 'crepcont',
										title : '回复内容',
										width : 160,
										align : 'center'
									},
									{
										field : 'cfa',
										title : '操作信息',
										width : 100,
										align : 'center',
										formatter : function(value, row, index) {
											var a = '<a href="#" class="easyui-linkbutton" style="width: 90px" onclick="detail()">内容回复</a> ';
											return a;
										}
									} ] ]
						});
		/* 详细信息弹框 */
		function detail() {
			var Row = $("#comment").datagrid('getSelected');
			if (Row != null) {
				$('#detaildlg').dialog('open').dialog('center');
				$.post('/firstssm/info/commentsearch2', {
					cid : Row.cid
				}, function(result) {
					var data = eval('(' + result + ')');
					/* console.info(data[0].rshipper); */
					$('#grid1').form('load', {
						cid : data[0].cid,
						ccompany:data[0].ccompany,
						cname : data[0].cname,
						cdate : data[0].cdate,
						ccontext : data[0].ccontext
					});
					 $('#grid2').form('load', {
						cid : data[0].cid
					}); 
				});
			}
		}
		/* function save1() {
			$("#grid1").form("submit", {
				url : "/firstssm/info/commentreply1",
				onSubmit : function() {
					return $(this).form("validate");
				},
				success : function(result) {
					if (result.errorMsg) {
						$.messager.alert("系统提示", "提交失败");
					} else {
						$.messager.alert("系统提示", "提交成功！");
						$("#grid1").form('clear');
					}
				}
			});
			$("#detaildlg").dialog('close')
			$("#comment").datagrid('reload')
		} */
		function save2() {
			$("#grid2").form("submit", {
				url : "/firstssm/info/commentreply2",
				onSubmit : function() {
					return $(this).form("validate");
				},
				success : function(result) {
					if (result.errorMsg) {
						$.messager.alert("系统提示", "提交失败");
					} else {
						$.messager.alert("系统提示", "提交成功！");
						$("#grid2").form('clear');
					}
					/* $("#adde").dialog('close'); */
				}
			});
			$("#detaildlg").dialog('close')
			$("#comment").datagrid('reload')
		}

		/* 刷新 */
		function reload() {
			$("#comment").datagrid("reload")
		}
	</script>
</body>