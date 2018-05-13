<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Basic Form - jQuery EasyUI Demo</title>
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
	<div style="margin: 10px 0;" align="center">
		<!-- <div class="easyui-panel" title="港口危险货物申报" style="width: 1200px"> -->
			<h1 style="margin-top: 20px" align="center">危险货物申报表</h1>
			<div style="padding: 30px 0 20px 40px" align="center"
				data-options="selected:true,tools:[{iconCls:'icon-reload',handler:function(){$('#ff').datagrid('reload');}}]">
				<form id="riskgoodpet" action="form" method="post">
					<table>
						<tr>
							<td><h3>申报编号:</h3></td>
							<td><input class="easyui-validatebox" type="text"
								style="width: 200px; height: 25px;  margin-right: 40px;"
								name="rnum" data-options="required:true"></input></td>
							<td><h3>申报企业:</h3></td>
							<td><%=session.getAttribute("ename") %><!-- <input class="easyui-validatebox" type="text"
								style="width: 200px; height: 25px;  margin-right: 40px;"
								name="rcompany" data-options="required:true" readonly="true"></input> --></td>
							<td><h3>申报人:</h3></td>
							<td><input class="easyui-validatebox" type="text"
								style="width: 200px; height: 25px;  margin-right: 40px;"
								name="rpeople" data-options="required:true"></input></td>
						</tr>
						<tr>
							<td><h3>发货方:</h3></td>
							<td><input class="easyui-validatebox" type="text"
								style="width: 200px; height: 25px;  margin-right: 40px;"
								name="rshipper" data-options="required:true"></input></td>
							<td><h3>收货方:</h3></td>
							<td><input class="easyui-validatebox" type="text"
								style="width: 200px; height: 25px;  margin-right: 40px;"
								name="rconsignee" data-options="required:true"></input></td>
							<td><h3>承运人:</h3></td>
							<td><input class="easyui-validatebox" type="text"
								style="width: 200px; height: 25px; margin-right: 40px;"
								name="rcarrier" data-options="required:true"></input></td>
						</tr>
						<tr>
							<td><h3>运输船名:</h3></td>
							<td><input class="easyui-validatebox" type="text"
								style="width: 200px; height: 25px;  margin-right: 40px;"
								name="rshipname" data-options="required:true"></input></td>
							<td><h3>装货港:</h3></td>
							<td><input class="easyui-validatebox" type="text"
								style="width: 200px; height: 25px;  margin-right: 40px;"
								name="rportloading" data-options="required:true"></input></td>
							<td><h3>装货时间:</h3></td>
							<td><input class="easyui-datebox" type="text" 
								style="width: 205px; height: 32px;  margin-right: 40px;"
								name="rloadingtime" data-options="required:true,editable:false"></input></td>
						</tr>
						<tr>
							<td><h3>卸货港:</h3></td>
							<td><input class="easyui-validatebox" type="text"
								style="width: 200px; height: 25px;  margin-right: 40px;"
								name="rdischarging" data-options="required:true"></input></td>
							<td><h3>预计卸货时间:&nbsp;</h3></td>
							<td><input class="easyui-datebox" type="text"
								style="width: 205px; height: 32px;  margin-right: 40px;"
								name="rpredeltime" data-options="required:true,editable:false"></input></td>
							<td><h3>实际卸货时间:</h3></td>
							<td><input class="easyui-datebox" type="text"
								style="width: 205px; height: 32px; margin-right: 40px;"
								name="rpradeltime" data-options="required:true,editable:false"></input></td>
						</tr>
						<tr>
							<td><h3>装货形式:</h3></td>
							<td>
							<input class="easyui-validatebox" type="text"
								style="width: 200px; height: 25px; margin-right: 40px;"
								name="rdelived" data-options="required:true"></input></td>
							<td><h3>危险货物类型:</h3></td>
							<td><input class="easyui-validatebox" type="text"
								style="width: 200px; height: 25px;  margin-right: 40px;"
								name="rgoodsstyle" data-options="required:true"></input></td>
							<td><h3>危险品重量:</h3></td>
							<td><input class="easyui-validatebox" type="text"
								style="width: 180px; height: 25px; margin-right: 5px;"
								name="rweight" data-options="required:true">吨	</input></td>
						</tr>
						<tr>
							<td><h3>申报日期:</h3></td>
							<td><input class="easyui-datebox"
								style="width: 205px; height: 32px; margin-right: 40px;"
								name="rpettime" data-options="required:true,editable:false"></input></td>
							<td><h3>作业码头:</h3></td>
							<td><input class="easyui-validatebox" type="text"
								style="width: 200px; height: 25px; margin-right: 40px;"
								name="rworkwharf" data-options="required:true"></input></td>
							<td><h3>所属港口:</h3></td>
							<td><input class="easyui-validatebox" type="text"
								style="width: 200px; height: 25px; margin-right: 10px;"
								name="rport" data-options="required:true"></input></td>
						</tr>
						<tr>
							<td><h3>进出口标记:</h3></td>
							<td><select class="easyui-validatebox" style="width: 206px; height: 30px; margin-right: 40px;"
								name="rportflag" data-options="required:true">
									<option value=""> </option>
									<option value="出口">出口</option>
									<option value="进口">进口</option>
								</select>
							</td>
							<td><h3>现场负责人:</h3></td>
							<td><input class="easyui-validatebox" type="text"
								style="width: 200px; height: 25px;  margin-right: 40px;"
								name="rprin" data-options="required:true"></input></td>
							<td><h3>负责人联系方式:</h3></td>
							<td><input class="easyui-validatebox" type="text"
								style="width: 200px; height: 25px; margin-right: 10px;"
								name="rprincall" data-options="required:true"></input></td>
						</tr>
						<tr>
							<td><h3>气味:</h3></td>
							<td><input class="easyui-validatebox" type="text"
								style="width: 200px; height: 25px;  margin-right: 40px;"
								name="rodour" data-options="required:true"></input></td>
							<td><h3>燃点:</h3></td>
							<td><input class="easyui-validatebox" type="text"
								style="width: 180px; height: 25px;margin-right: 10px;"
								name="rignitionpoint" data-options="required:true">℃</input></td>
							<td><h3>毒性 :</h3></td>
							<td><input class="easyui-validatebox" type="text"
								style="width: 200px; height: 25px; margin-right: 10px;"
								name="rtoxicity" data-options="required:true"></input></td>
						</tr>
						<!-- <tr>
							<td><h3>其他细节:</h3></td>
							<td><textarea name="message"
									style="width: 235px; height: 60px; margin-left: 10px;"></textarea></td>
						</tr> -->
					</table>
				</form>
			</div>
			<div style="text-align: center; padding: 5px">
				<!-- <a href="javascript:void(0)" class="easyui-linkbutton" style="margin-left: 10px"
					onclick="save()">保存，暂不提交</a> -->
				<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok"
					onclick="submitForm()">提交</a>
				<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-reload"
				 onclick="clearForm()">重置</a>
			</div>
		</div>
	<!-- </div> -->
	<script>
		/* 危险货物申报提交 */
		function save() {
			$('#riskgoodpet').form('submit', {
				url : "/firstssm/info/riskgoods1",
				onSubmit : function() {
					return $(this).form("validate");
				},
				success : function(result) {
					if (result.errorMsg) {
						$.messager.alert("系统提示", "提交失败");
					} else {
						$.messager.alert("系统提示", "提交成功！");
						$("#riskgoodpet").form('clear');
					}
					
				}
			});
		}
		function submitForm() {
			$('#riskgoodpet').form('submit', {
				url : "/firstssm/info/riskgoods2",
				onSubmit : function() {
					return $(this).form("validate");
				},
				success : function(result) {
					if (result.errorMsg) {
						$.messager.alert("系统提示", "保存失败");
					} else {
						$.messager.alert("系统提示", "保存成功！");
						$("#riskgoodpet").form('clear');
					}
					
				}
			});
		}
		function clearForm() {
			$('#riskgoodpet').form('clear');
		}
	</script>
	
</body>