<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head id="Head1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>工程添加</title>
<link href="/traffic/css/default.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="/traffic/js/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="/traffic/js/themes/icon.css" />
<script type="text/javascript" src="/traffic/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript"
	src="/traffic/js/jquery.easyui.min.1.2.2.js"></script>

</script>
<script type="text/javascript">
	function saveUser() {
		$("#fm").form("submit", {
			url : url,
			onSubmit : function() {
				if ($("#roleName").combobox("getValue") == "") {
					$.messager.alert("系统提示", "请选择用户角色！");
					return false;
				}
				return $(this).form("validate");
			},
			success : function(result) {
				var result = eval('(' + result + ')');
				if (result.success) {
					$.messager.alert("系统提示", "保存成功！");
					resetValue();
					$("#dlg").dialog("close");
					$("#dg").datagrid("reload");
				} else {
					$.messager.alert("系统提示", "保存失败！");
					return;
				}
			}
		});
	}

	function uploadPic() {
		if ($("#file").val() == "") {
			$.messager.alert("提示", "请选择文件夹");
			return false;
		}
		$("#p").ajaxSubmit({
			type : "post", //提交方式    
			url : "${pageContext.request.contextPath}/student/filesUpload", //请求url    
			success : function(data) { //提交成功的回调函数    
				$.messager.alert("提示", data);
			}
		});
	}
</script>

</head>

<body>


	<div>
		<form method="post" id="fm">
			<table cellspacing="8px;">
				<tr>
					<td>工程名称：</td>
					<td><input type="text" id="userName" name="userName"
						class="easyui-validatebox" required="true" />&nbsp;<span
						style="color: red">*</span></td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td>工程负责人：</td>
					<td><input type="text" id="password" name="password"
						class="easyui-validatebox" required="true" />&nbsp;<span
						style="color: red">*</span></td>
				</tr>
				<tr>
					<td>负责人联系方式：</td>
					<td><input type="text" id="trueName" name="trueName"
						class="easyui-validatebox" required="true" />&nbsp;
						<span style="color: red">*</span>
					</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td>工程地点：</td>
					<td>
						<input type="text" id="email" name="email" validType="email" class="easyui-validatebox" required="true" />&nbsp;
						<span style="color: red">*</span>
					</td>
				</tr>
				<tr>
					<td>开始时间：</td>
					<td>
						<input type="text" id="phone" name="phone" class="easyui-validatebox" required="true" />&nbsp;
						<span style="color: red">*</span>
					</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td>工程类型：</td>
					<td>
						<select name="roleName" class="easyui-combobox" id="roleName" editable="false" panelHeight="auto">
							<option value="">请选择类型</option>
							<option value="1">公路</option>
							<option value="2">道路</option>
							<option value="3">桥梁</option>
						</select> &nbsp;
						<span style="color: red">*</span>
					</td>

				</tr>
				<tr>
					<td>预计施工时间：</td>
					<td><input type="text" id="phone" name="phone" class="easyui-validatebox" required="true" />&nbsp;
						<span style="color: red">*</span>
					</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td>工程等级：</td>
					<td>
						<select name="roleName" class="easyui-combobox" id="roleName" editable="false" panelHeight="auto">
							<option value="">请选择等级</option>
							<option value="1">小型</option>
							<option value="2">中型</option>
							<option value="3">大型</option>
					</select> &nbsp;
					<span style="color: red">*</span>
					</td>

				</tr>
				<tr>
					<td>上传的文件:</td>
					<td>
						<input id="file" type="file" name="myfiles">
						<input type="button" value="确定" onclick="uploadPic()" style="margin-top: 10px">
					</td>
				</tr>

			</table>
		</form>
	</div>
	<div id="dlg-buttons">
		<a href="javascript:saveUser()" class="easyui-linkbutton"
			iconCls="icon-ok">保存</a> <a href="javascript:closeUserDialog()"
			class="easyui-linkbutton" iconCls="icon-cancel">关闭</a>
	</div>
</body>
</html>