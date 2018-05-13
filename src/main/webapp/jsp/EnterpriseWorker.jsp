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
			data-options="rownumbers:true,singleSelect:true,url:'/firstssm/test2/finduser',toolbar:'#tb',autoRowHeight:false,
				pagination:true">
			<thead>
				<tr>
					<th data-options="field:'nnumber',width:150,align:'center'">编号</th>
					<th data-options="field:'nname',width:100,align:'center'">姓名</th>
					<th data-options="field:'nsex',width:70,align:'center'">性别</th>
					<th data-options="field:'ndate',width:150,align:'center'">入职日期</th>
					<th data-options="field:'ncall',width:150,align:'center'">联系方式</th>
					<th data-options="field:'naddr',width:250,align:'center'">联系地址</th>
					<th data-options="field:'nworkemail',width:200,align:'center'">工作邮箱</th>
					<th data-options="field:'nworkstyle',width:150,align:'center'">职位类型</th>
				</tr>
			</thead>
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
						<th><input id="nnumber" name="nnumber" class="easyui-textbox"
							required="true" data-options="required:true"></th>
					</tr>
					<tr>
						<th>姓名:</th>
						<th><input id="nname" name="nname" class="easyui-textbox"
							required="true" data-options="required:true"></th>
					</tr>
					<tr>
						<th>性别:</th>
						<th><input type="radio" name="nsex" value="男" />男 <input
							type="radio" name="nsex" value="女" />女</th>
					</tr>
					<tr>
						<th>入职日期:</th>
						<th><input id="ndate" name="ndate" class="easyui-datebox"
							required="true" data-options="required:true"></th>
					</tr>
					<tr>
						<th>联系方式:</th>
						<th><input id="ncall" name="ncall" class="easyui-textbox"
							required="true" data-options="required:true"></th>
					</tr>
					<tr>
						<th>联系地址:</th>
						<th><input id="naddr" name="naddr" class="easyui-textbox"
							required="true" data-options="required:true"></th>
					</tr>
					<tr>
						<th>工作邮箱:</th>
						<th><input id="nworkemail" name="nworkemail"
							class="easyui-textbox" required="required"
							data-options="required:true,validType:'email'"></th>
					</tr>
					<tr>
						<th>职位类型:</th>
						<th><select id="nworkstyle" name="nworkstyle"
							class="easyui-combobox">
								<option value="港口负责人">港口企业负责人</option>
								<option value="现场工作人员">港口企业员工</option>
								<option value="运输调度员">运输调度员</option>
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
						<th><input id="nnumber" name="nnumber" class="easyui-textbox"
							required="true" readonly="true"></th>
					</tr>
					<tr>
						<th>姓名:</th>
						<th><input id="nname" name="nname" class="easyui-textbox"
							required="true"></th>
					</tr>
					<tr>
						<th>性别:</th>
						<th><input type="radio" name="nsex" value="男" />男 <input
							type="radio" name="nsex" value="女" />女</th>
					</tr>
					<tr>
						<th>入职日期:</th>
						<th><input id="ndate" name="ndate" class="easyui-datebox"
							required="true"></th>
					</tr>
					<tr>
						<th>联系方式:</th>
						<th><input id="ncall" name="ncall" class="easyui-textbox"
							required="true"></th>
					</tr>
					<tr>
						<th>联系地址:</th>
						<th><input id="naddr" name="naddr" class="easyui-textbox"
							required="true"></th>
					</tr>
					<tr>
						<th>工作邮箱:</th>
						<th><input id="nworkemail" name="nworkemail"
							class="easyui-textbox" required="required"
							data-options="required:true,validType:'email'"></th>
					</tr>
					<tr>
						<th>职位类型:</th>
						<th><select id="nworkstyle" name="nworkstyle"
							class="easyui-combobox">
								<option value="港口负责人">港口负责人</option>
								<option value="现场工作人员">现场工作人员</option>
								<option value="运输调度员">运输调度员</option>
						</select></th>
					</tr>
				</table>
				<div id="dlg-buttons">
					<a href="javascript:void(0)" class="easyui-linkbutton c6"
						iconCls="icon-ok" style="width: 90px" onclick="update()">保存</a> <a
						href="javascript:void(0)" class="easyui-linkbutton"
						iconCls="icon-cancel"
						onclick="javascript:$('#update').dialog('close')" style="width: 90px">关闭</a>
				</div>
			</form>
		</div>
	</div>

	<script>
		/* 修改时接收前台传值 */
		function edit() {
			var row = $('#grid').datagrid('getSelected');
			if (row) {
				$.messager.confirm("系统提示", "您确定要修改这条记录吗?", function(r) {
					if (r) {
						$('#update').dialog('open').dialog('center').dialog(
								'setTitle', '修改用戶');
						$('#up').form('load', {
							nnumber : row.nnumber,
							nname : row.nname,
							nsex : row.nsex,
							ndate : row.ndate,
							ncall : row.ncall,
							naddr : row.naddr,
							nworkemail : row.nworkemail,
							nworkstyle : row.nworkstyle,
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
				url : "/firstssm/test1/addEnterpriseWorker",
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
				url : "/firstssm/test1/updateEnterpriseWorker",
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
			$("#grid").datagrid("reload");
		}
		/* 删除 */
		function cancel(){
			var row = $('#grid').datagrid('getSelected');
			if (row) {
				$.messager.confirm("系统提示", "您确定要删除这条记录吗?", function(r) {
					if (r) {
						$.post('/firstssm/test1/deleteEnterpriseWorker', {
							nnumber : row.nnumber
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