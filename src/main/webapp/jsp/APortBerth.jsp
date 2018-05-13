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
			<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true"
				onclick="addUser()">添加</a> <a href="#"
				class="easyui-linkbutton" iconCls="icon-reload" plain="true"
				onclick="reload()">刷新</a> <a href="#" class="easyui-linkbutton"
				iconCls="icon-cancel" plain="true" onclick="cancel()">删除</a>
		</div>
	</div>
	<!-- <!-- 弹窗显示意见箱信息和回复区 -->
	<div id="detaildlg" class="easyui-dialog" title="泊位管理"
		data-options="iconCls:'icon-ok',closed:true"
		style="width: 700px; height: 400px;">
		<div class="easyui-tabs">
			<div title="泊位状态更新" style="padding: 10px">
				<div>
					<form id="grid1" method="post" style="height: 250px;" novalidate>
						<table style="margin-top: 20px; margin-bottom: 40px"
							align="center">
							
							<tr>
								<input type="hidden" name="berid" id="berid"></input>
								<td align="center"><label>泊位编号:</label></td>
								<td><input id="bernum" name="bernum" class="easyui-textbox"
									readonly="true"
									style="width: 150px; height: 23px; margin-right: 10px"
									readonly="true"></td>
							</tr>
							<tr>
								<td align="center"><label>泊位名称:</label></td>
								<td><input id="bername" name="bername"
									class="easyui-textbox" readonly="true"
									style="width: 150px; height: 23px; margin-right: 10px"
									readonly="true"></td>
							</tr>
							<tr>
								<td align="center"><label>泊位状态:</label></td>
								<td>
									<!-- <span class="radioSpan">  --> <input type="radio"
									name="beroccupy" style="margin-left: 20px" value="1">此泊位可用</input>
									<input type="radio" name="beroccupy" style="margin-left: 10px"
									value="0">此泊位已被占用，暂不可用</input> <input type="radio"
									name="beroccupy" style="margin-left: 10px" value="2">维修状态</input>
								</td>
							</tr>
							<tr>
								<td align="center"><label>泊位负责人:</label></td>
								<td><input id="berpeople" name="berpeople"
									style="width: 150px; height: 23px; margin-right: 10px"
									class="easyui-textbox" readonly="true"> </input></td>
							</tr>
						</table>
						<div id="dlg-buttons" align="center" style="margin-top: 10px">
							<a href="javascript:void(0)" class="easyui-linkbutton"
								iconCls="icon-ok" onclick="save()">更新</a> <a
								href="javascript:void(0)" class="easyui-linkbutton"
								iconCls="icon-cancel"
								onclick="javascript:$('#detaildlg').dialog('close')">关闭</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 添加 -->
	<div id="adde" class="easyui-dialog"
		style="width: 600px; height: 350px; padding: 10px 20px" closed="true"
		buttons="#dlg-buttons">
		<div>
			<form id="add" method="post" novalidate align="center">
				<table align="center" style="margin-top: 30px">
					<tr align="center"><h1>新增港口泊位</h1></tr>
					<tr>
						<td align="center"><label>泊位编号:</label></td>
						<td><input id="bernum" name="bernum" class="easyui-textbox"
							style="width: 100px; height: 23px; margin-right: 10px"
							data-options="required:true"></td>
					</tr>
					<tr>
						<td align="center"><label>泊位名称:</label></td>
						<td><input id="bername" name="bername" class="easyui-textbox"
							style="width: 100px; height: 23px; margin-right: 10px"
							data-options="required:true"></td>
					</tr>
					
					<tr>
						<td align="center"><label>泊位状态:</label></td>
						<td><input type="radio" name="beroccupy" value="1">此泊位可用</input>
						<input type="radio" name="beroccupy"
							style="margin-left: 5px" value="0">暂不可用</input>
						<input type="radio" name="beroccupy"
							style="margin-left: 5px" value="2">维修状态</input></td>
					</tr>
					<tr>
						<td align="center"><label>泊位负责人:</label></td>
						<td><input id="berpeople" name="berpeople"
							style="width: 100px; height: 23px; margin-right: 10px"
							class="easyui-textbox" > </input></td>
					</tr>
				</table>
				<div id="dlg-buttons" align="center">
					<a href="javascript:void(0)" class="easyui-linkbutton c6"
						iconCls="icon-ok" onclick="save1()">保存</a> <a
						href="javascript:void(0)" class="easyui-linkbutton"
						iconCls="icon-cancel"
						onclick="javascript:$('#dlg').dialog('close')">关闭</a>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		$('#comment')
				.datagrid(
						{
							url : '/firstssm/port/portberthsearch',//数据请求地址  
							/* toolbar:'#toolbar',// 数据网格工具栏 比如添加 修改   */
							pagination : true,//分页显示  
							singleSelect : true,//只允许选择一行  

							columns : [ [
									{
										field : 'bernum',
										title : '泊位编号',
										width : 150,
										align : 'center'
									},
									{
										field : 'bername',
										title : '泊位名称',
										width : 150,
										align : 'center'
									},
									{
										field : 'beroccupys',
										title : '占用情况',
										width : 120,
										align : 'center',
										styler : function(value, row, index) {
											if (value == '可用') {
												return '';
											} else if (value == '维护状态') {
												return 'background-color:#FFA54F;';
											} else
												(value == '已占用')
											return 'background-color:#FF0000';
										}
									},
									{
										field : 'berpeople',
										title : '泊位安检员',
										width : 160,
										align : 'center'
									},
									{
										field : 'cfa',
										title : '操作信息',
										width : 100,
										align : 'center',
										formatter : function(value, row, index) {
											var a = '<a href="#" class="easyui-linkbutton" style="width: 90px" onclick="detail()">泊位状态调整</a> ';
											return a;
										}
									} ] ]
						});
		/* 详细信息弹框 */
		function detail() {
			var Row = $("#comment").datagrid('getSelected');
			if (Row != null) {
				$('#detaildlg').dialog('open').dialog('center');
				$.post('/firstssm/port/berthmaneager', {
					berid : Row.berid
				}, function(result) {
					var data = eval('(' + result + ')');
					/* console.info(data[0].rshipper); */
					$('#grid1').form('load', {
						berid : data[0].berid,
						bernum : data[0].bernum,
						bername : data[0].bername,
						beroccupy : data[0].beroccupy,
						beroccupys : data[0].beroccupys,
						berpeople : data[0].berpeople
					});
					$('#grid2').form('load', {
						berid : data[0].berid,
					});
				});
				$("#comment").datagrid('reload')
			}
		}

		function save() {
			$("#grid1").form("submit", {
				url : "/firstssm/port/berthstate",
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
		}

		/* 刷新 */
		function reload() {
			$("#comment").datagrid("reload")
		}

		/* 弹出添加泊位信息 */
		function addUser() {
			$("#adde").dialog('open').dialog('setTitle', '新增港口泊位');
			$('#add').form('clear');

		}

		/* 添加用户 */
		function save1() {
			$("#add").form("submit", {
				url : "/firstssm/port/addberth",
				onSubmit : function() {
					return $(this).form("validate");
				},
				success : function(result) {
					if (result.errorMsg) {
						$.messager.alert("系统提示", "保存失败");
					} else {
						$.messager.alert("系统提示", "保存成功！");
						$("#add").form('clear');
					}
					$("#adde").dialog('close');
				}
			});
			$("#comment").datagrid("reload")
		}
		/* 删除 */
		function cancel() {
			var row = $('#comment').datagrid('getSelected');
			if (row) {
				$.messager.confirm("系统提示", "您确定要删除这条记录吗?", function(r) {
					if (r) {
						$.post('/firstssm/port/deleteberth', {
							bernum : row.bernum
						}, function(data) {
							if (data.success) {
								$.messager.alert("系统提示", "操作成功!");
							} else {
								$.messager.alert("系统提示", data.errorMsg);
							}
						}, 'json');
						$('#comment').datagrid('reload');
					}
				});
				$('#comment').datagrid('reload');
			}
		}
	</script>
</body>