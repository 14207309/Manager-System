<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
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
	<!-- function reload(){
		$("#grid").datagrid("reload");
	} -->
	<div id="en" style="margin: 10px 0;">
		<table id="grid" class="easyui-datagrid"
			data-options=" pagination:true,
				pageSize:10">
			<!-- <thead>
				<tr>
					<th data-options="field:'wnumber',width:100,align:'center'">编号</th>
					<th data-options="field:'wname',width:80,align:'center'">姓名</th>
					<th data-options="field:'wsex',width:50,align:'center'">性别</th>
					<th data-options="field:'wbirth',width:100,align:'center'">入职日期</th>
					<th data-options="field:'wcall',width:100,align:'center'">联系方式</th>
					<th data-options="field:'waddr',width:250,align:'center'">联系地址</th>
					<th data-options="field:'wqq',width:100,align:'center'">QQ号</th>
					<th data-options="field:'wechat',width:100,align:'center'">微信号</th>
					<th data-options="field:'wworkemail',width:180,align:'center'">工作邮箱</th>
					<th data-options="field:'wworkstate',width:80,align:'center'">工作状态</th>
					<th data-options="field:'wworkstyle',width:100,align:'center'">职位类型</th>
				</tr>
			</thead> -->
		</table>
	</div>
	<!-- <div class="easyui-pagination" data-options="total:20"
		style="border: 1px solid #ddd;"></div> -->
	<div id="tb" style="padding: 5px; height: auto">
		<div style="margin-bottom: 5px">
			<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="addUser()">添加</a> 
			<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="edit()">修改</a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-reload" plain="true" onclick="reload()">刷新</a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-cancel" plain="true" onclick="cancel()">删除</a>
		</div>
		<div>
			<!-- 日期从: <input class="easyui-datebox" style="width:80px"/>
			到: <input class="easyui-datebox" style="width:80px"/>
			语言:  -->
			<select class="easyui-combobox" panelHeight="auto"
				style="width: 200px">
				<option value="java"></option>
				<option value="c"></option>
				<option value="basic"></option>
				<option value="perl"></option>
				<option value="python"></option>
			</select> <a href="#" class="easyui-linkbutton" iconCls="icon-search">搜索</a>
		</div>
	</div>

	<!-- 添加用户 -->
	<div id="adde" class="easyui-dialog"
		style="width: 450px; height: 400px; padding: 10px 20px" closed="true"
		buttons="#dlg-buttons">
		<div>
			<form id="add" method="post" novalidate>
				<table align="center" style="margin-top: 30px">
					<tr>
						<th>员工编号:</th>
						<th><input id="wnumber" name="wnumber" class="easyui-validatebox"
							required="true" data-options="required:true"></th>
					</tr>
					<tr>
						<th>姓名:</th>
						<th><input id="wname" name="wname" class="easyui-validatebox"
							required="true" data-options="required:true"></th>
					</tr>
					<tr>
						<th>性别:</th>
						<th><input type="radio" name="wsex" value="男" />男 <input
							type="radio" name="wsex" value="女" />女</th>
					</tr>
					<tr>
						<th>入职日期:</th>
						<th><input id="wbirth" name="wbirth" class="easyui-datebox"
							required="true" data-options="required:true,editable:false"></th>
					</tr>
					<tr>
						<th>联系方式:</th>
						<th><input id="wcall" name="wcall" class="easyui-validatebox"
							required="true" data-options="required:true"></th>
					</tr>
					<tr>
						<th>联系地址:</th>
						<th><input id="waddr" name="waddr" class="easyui-validatebox"
							required="true" data-options="required:true"></th>
					</tr>
					<tr>
						<th>QQ号:</th>
						<th><input id="wqq" name="wqq" class="easyui-validatebox"
							required="true" data-options="required:true"></th>
					</tr>
					<tr>
						<th>WeChat:</th>
						<th><input id="wechat" name="wechat" class="easyui-validatebox"
							required="true" data-options="required:true"></th>
					</tr>
					<tr>
						<th>工作邮箱:</th>
						<th><input id="wworkemail" name="wworkemail"
							class="easyui-validatebox" required="required"
							data-options="required:true,validType:'email'"></th>
					</tr>
					<tr>
						<th>工作状态:</th>
						<th><select id="wworkstate" name="wworkstate"
							class="easyui-combobox" data-options="required:true">
								<option value="正常">正常</option>
								<option value="异常">异常</option>
						</select></th>
					</tr>
					<tr>
						<th>工作类型:</th>
						<th><select id="wworkstyle" name="wworkstyle"
							class="easyui-combobox" data-options="required:true">
								<option value="1">网络审核员</option>
								<option value="2">现场安检员</option>
						</select></th>
					</tr>
				</table>
				<div id="dlg-buttons">
					<a href="javascript:void(0)" class="easyui-linkbutton c6"
						iconCls="icon-ok" style="width: 90px" onclick="save()">保存</a> <a
						href="javascript:void(0)" class="easyui-linkbutton"
						iconCls="icon-cancel"
						onclick="javascript:$('#dlg').dialog('close')" style="width: 90px">关闭</a>
				</div>
			</form>
		</div>
	</div>
	<!-- 修改用户信息 -->
	<div id="update" class="easyui-dialog"
		style="width: 450px; height: 400px; padding: 10px 20px" closed="true"
		buttons="#dlg-buttons">
		<div>
			<form id="up" method="post" novalidate>
				<table align="center" style="margin-top: 30px">
					<tr>
						<th>员工编号:</th>
						<th><input id="wnumber" name="wnumber" class="easyui-validatebox"
							required="true" readonly="true"></th>
					</tr>
					<tr>
						<th>姓名:</th>
						<th><input id="wname" name="wname" class="easyui-validatebox"
							required="true" data-options="required:true"></th>
					</tr>
					<tr>
						<th>性别:</th>
						<th><input type="radio" name="wsex" value="男" />男 <input
							type="radio" name="wsex" value="女" />女</th>
					</tr>
					<tr>
						<th>入职日期:</th>
						<th><input id="wbirth" name="wbirth" class="easyui-datebox"
							required="true" data-options="required:true,editable:false"></th>
					</tr>
					<tr>
						<th>联系方式:</th>
						<th><input id="wcall" name="wcall" class="easyui-validatebox"
							required="true" data-options="required:true"></th>
					</tr>
					<tr>
						<th>联系地址:</th>
						<th><input id="waddr" name="waddr" class="easyui-validatebox"
							required="true" data-options="required:true"></th>
					</tr>
					<tr>
						<th>QQ号:</th>
						<th><input id="wqq" name="wqq" class="easyui-validatebox"
							required="true" data-options="required:true"></th>
					</tr>
					<tr>
						<th>WeChat:</th>
						<th><input id="wechat" name="wechat" class="easyui-validatebox"
							required="true" data-options="required:true"></th>
					</tr>
					<tr>
						<th>工作邮箱:</th>
						<th><input id="wworkemail" name="wworkemail"
							class="easyui-validatebox" required="required"
							data-options="required:true,validType:'email'"></th>
					</tr>
					<tr>
						<th>工作状态:</th>
						<th><select id="wworkstate" name="wworkstate"
							class="easyui-combobox" data-options="required:true">
								<option value="正常">正常</option>
								<option value="异常">异常</option>
						</select></th>
					</tr>
					<tr>
						<th>工作类型:</th>
						<th><select id="wworkstyle" name="wworkstyle"
							class="easyui-combobox" data-options="required:true">
								<option value="1">网络审核员</option>
								<option value="2">现场安检员</option>
						</select></th>
					</tr>
				</table>
				<div id="dlg-buttons">
					<a href="javascript:void(0)" class="easyui-linkbutton c6"
						iconCls="icon-ok"  onclick="update()">保存</a> <a
						href="javascript:void(0)" class="easyui-linkbutton"
						iconCls="icon-cancel"
						onclick="javascript:$('#update').dialog('close')" >关闭</a>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript">
	$(function() {
			$('#grid').datagrid(
							{
								pagination : true, //开启分页  
								pageSize : 10, //分页大小 
								pageList : [ 10, 20, 30 ], //设置每页记录条数的列表
								url : "/firstssm/test2/porkWorker",
								singleSelect:true,
								rownumbers:true,
								autoRowHeight:false,
								toolbar: '#tb',
								columns : [ [
										{
											field : 'wnumber',
											title : '编号',
											width : 100,
											align : 'center',
											sortable : true
										},
										{
											field : 'wname',
											title : '姓名',
											width : 80,
											align : 'center',
											sortable : true
										},
										{
											field : 'wsex',
											title : '性别',
											width : 100,
											align : 'center',
											sortable : true
										},
										{
											field : 'wbirth',
											title : '入职日期',
											width : 100,
											align : 'center',
											sortable : true
										},{
											field : 'wcall',
											title : '联系方式',
											width : 100,
											align : 'center',
											sortable : true
										},{
											field : 'waddr',
											title : '地址',
											width : 100,
											align : 'center',
											sortable : true
										},{
											field : 'wqq',
											title : 'QQ号',
											width : 100,
											align : 'center',
											sortable : true
										},{
											field : 'wechat',
											title : '微信号',
											width : 100,
											align : 'center',
											sortable : true
										},{
											field : 'wworkemail',
											title : '工作邮箱',
											width : 100,
											align : 'center',
											sortable : true
										},
										{
											field : 'wworkstate',
											title : '工作状态',
											width : 70,
											align : 'center',
											sortable : true,
											styler : function(value, row, index) {
												if (value == '异常') {
													return 'background-color:#FF0000;';
												} else
													(value == '否')
												return '';
											}
										},
										{
											field : 'wworkstyle',
											title : '工作类型',
											width : 100,
											align : 'center',
											sortable : true
										}] ]
							});
		});
	</script>
	<script>
		/* 修改时接收前台传值 */
		function edit() {
			var row = $('#grid').datagrid('getSelected');
			if (row) {
				$.messager.confirm("系统提示", "您确定要修改这条记录吗?", function(r) {
					if (r) {
						$('#update').dialog('open').dialog('center').dialog(
								'setTitle', '修改相关信息');
						$('#up').form('load', {
							wnumber : row.wnumber,
							wname : row.wname,
							wsex : row.wsex,
							wbirth : row.wbirth,
							wcall : row.wcall,
							waddr : row.waddr,
							wqq : row.wqq,
							wechat:row.wechat,
							wworkemail:row.wworkemail,
							wworkstate:row.wworkstate,
							wworkstyle:row.wworkstyle,
						});
					}
				});
			}
		}
		/* 弹出添加用户页面 */
		function addUser() {
			$("#adde").dialog('open').dialog('setTitle', '添加用户');
			$('#add').form('clear');

		}
		/* 添加用户 */
		function save() {
			$("#add").form("submit", {
				url : "/firstssm/test2/addportWorker",
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
					$('#grid').datagrid('reload');
				}
			});
		}

		/* 修改用户 */
		function update() {
			$("#up").form("submit", {
				url : "/firstssm/test2/updateportWorker",
				onSubmit : function() {
					return $(this).form("validate");
				},
				success : function(result) {
					if (result.errorMsg) {
						$.messager.alert("系统提示", "保存失败");
					} else {
						$.messager.alert("系统提示", "保存成功！");
						$("#up").form('clear');
						/* $("update").dategrid("reload") */
					}
					$("#update").dialog('close');
					$('#grid').datagrid('reload');
				}
			});
		}
		/* 刷新 */
		function reload() {
			$("#grid").datagrid("load");
		}
		/* 删除 */
		function cancel(){
			var row = $('#grid').datagrid('getSelected');
			if (row) {
				$.messager.confirm("系统提示", "您确定要删除这条记录吗?", function(r) {
					if (r) {
						$.post('/firstssm/test2/deleteportWorker', {
							wnumber : row.wnumber
						}, function(data) {
							if (data.success) {
								$.messager.alert("系统提示", "操作成功!");
								$('#grid').datagrid('reload');
							} else {
								$.messager.alert("系统提示", data.errorMsg);
							}
						}, 'json'); 
					}
					$('#grid').datagrid('reload');
				});
			}
		}
	</script>
</body>