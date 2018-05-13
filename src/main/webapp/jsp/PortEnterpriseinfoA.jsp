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
	<div style="margin: 10px 0;"></div>
	<table id="en" class="easyui-datagrid"
		data-options="rownumbers:true,singleSelect:true,">
	</table>
	<!-- <div class="easyui-pagination" data-options="total:20" style="border:1px solid #ddd;"></div> -->
	<div id="tb" style="padding: 5px; height: auto">
		<div style="margin-bottom: 5px;margin-top: 20px">
			<a href="#" class="easyui-linkbutton" style="margin-left: 50px;" iconCls="icon-cancel" plain="true" onclick="cancel()">删除</a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-reload"
				plain="true" onclick="reload()">刷新</a>
			<input class="easyui-linkbutton" style="width: 120px;margin-left: 500px;margin-right: 10px" /> 
			<a href="#" class="easyui-linkbutton" iconCls="icon-search">搜索</a>
		</div>
		<!-- <div>
			<input class="easyui-datebox" style="width: 80px" /> 
		</div> -->
	</div>
	<div id="datagrid" class="easyui-dialog" title="企业信息审核"
		data-options="iconCls:'icon-ok',closed:true"
		style="width: 800px; height: 450px;">
		<div class="easyui-tabs">
			<div title="企业信息查看及审核" style="padding: 10px">
				<div>
					<form id="grid1" method="post" novalidate>
						<table style="margin-top: 40px; margin-bottom: 75px"
							align="center">
							<tr>
								<td align="center"><label>企业编号:</label></td>
								<td><input id="enumber" name="enumber"
									class="easyui-textbox" readonly="true"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"></td>
								<td align="center"><label>企业名称:</label></td>
								<td><input id="ename" name="ename"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
							</tr>
							<tr>
								<td align="center"><label>企业代码:</label></td>
								<td><input id="ecode" name="ecode"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
								<td align="center"><label>企业地址:</label></td>
								<td><input id="eaddr" name="eaddr"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
							</tr>
							<tr>
								<td align="center"><label>企业法人:</label></td>
								<td><input id="elegpeople" name="elegpeople"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
								<td align="center"><label>注册资本:</label></td>
								<td><input id="emoney" name="emoney"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
							</tr>
							<tr>
								<td align="center"><label>企业类型:</label></td>
								<td><input id="estyle" name="estyle"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
								<td align="center"><label>成立日期:</label></td>
								<td><input id="eestdate" name="eestdate"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
							</tr>
							<tr>
								<td align="center"><label>证书有效期:</label></td>
								<td><input id="eenddate" name="eenddate"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
								
							</tr>
						</table>
						<table>
							<tr>
								<td align="center"><label>证书状态:</label></td>
								<td><select name="ecertstate" style="width: 120px; height:30px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox">
										<option value="正常">正常</option>
										<option value="异常">异常</option>
									</select>
							</tr>
							<tr>
								<td align="center"><label>是否同意该企业入驻港口:</label></td>
								<td><span class="radioSpan"> 
									<input type="radio" name="espack" style="margin-left: 20px" value="1">是</input>
									<input type="radio" name="espack" value="0">否</input>
								</span></td>
							</tr>
						</table>
						<div id="dlg-buttons" align="center">
							<a href="javascript:void(0)" class="easyui-linkbutton c6"
								iconCls="icon-ok"  onclick="update()">提交</a>
							<a href="javascript:void(0)" class="easyui-linkbutton"
								iconCls="icon-cancel"
								onclick="javascript:$('#datagrid').dialog('close')"
								>关闭</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			$('#en')
					.datagrid(
							{
								pagination : true, //开启分页  
								pageSize : 10, //分页大小  
								pageNumber : 1, //第几页显示（默认第一页，可以省略）  
								pageList : [ 10, 20, 30 ], //设置每页记录条数的列表
								toolbar:'#tb',
								url : "/firstssm/test2/portEnterpriseinfo",
								columns : [ [
										{
											field : 'enumber',
											title : '企业编号',
											width : 80,
											align : 'center',
											sortable : true
										},
										{
											field : 'ename',
											title : '企业名称',
											width : 100,
											align : 'center',
											sortable : true
										},
										{
											field : 'ecode',
											title : '企业代码',
											width : 80,
											align : 'center',
											sortable : true
										},
										{
											field : 'eaddr',
											title : '企业地址',
											width : 150,
											align : 'center',
											sortable : true
										},
										{
											field : 'elegpeople',
											title : '企业法人',
											width : 70,
											align : 'center',
											sortable : true
										},
										{
											field : 'emoney',
											title : '注册资本',
											width : 80,
											align : 'center',
											sortable : true
										},
										{
											field : 'estyle',
											title : '企业类型',
											width : 80,
											align : 'center',
											sortable : true
										},
										{
											field : 'eestdate',
											title : '成立日期',
											width : 80,
											align : 'center',
											sortable : true
										},
										{
											field : 'eenddate',
											title : '证书有效期',
											width : 80,
											align : 'center',
											sortable : true
										},
										{
											field : 'ecertstate',
											title : '证书状态',
											width : 70,
											align : 'center',
											sortable : true
										},
										{
											field : 'type',
											title : '审核状态',
											width : 80,
											align : 'center',
											sortable : true,
											styler : function(value, row, index) {
												if (value == '通过') {
													return 'background-color:#00bb00;';
												} else
													(value == '未通过')
												return 'background-color:#EEB422;';
											}
										},
										{
											field : 'rfa',
											title : '审核',
											width : 180,
											align : 'center',
											formatter : function(value, row,
													index) {
												var a = '<a href="#" class="easyui-linkbutton" onclick="detail()">审核驻港企业申报信息</a>';
												return a;
											}
										} ] ]
							});
		});

		/* 详细信息弹框 */
		function detail() {
			var Row = $("#en").datagrid('getSelected');
			if (Row) {
				$('#datagrid').dialog('open').dialog('center');
				$.post('/firstssm/test2/portEnterpriseinfo2', {
					enumber : Row.enumber
				}, function(result) {
					var data = eval('(' + result + ')');
					/* console.info(data[0].rshipper); */
					$('#grid1').form('load', {
						enumber : data[0].enumber,
						ename : data[0].ename,
						ecode : data[0].ecode,
						eaddr : data[0].eaddr,
						elegpeople : data[0].elegpeople,
						emoney : data[0].emoney,
						estyle : data[0].estyle,
						eestdate : data[0].eestdate,
						eenddate : data[0].eenddate,
						ecertstate : data[0].ecertstate,
					});

				});
			}

		}
		/* 修改用户 */
		function update() {
			$("#grid1").form("submit", {
				url : "/firstssm/test2/portEnterpriseinfo3",
				onSubmit : function() {
					return $(this).form("validate");
				},
				success : function(result) {
					if (result.errorMsg) {
						$.messager.alert("系统提示", "审核失败");
					} else {
						$.messager.alert("系统提示", "审核成功！");
						$("#grid1").form('clear');
						/* $("update").dategrid("reload") */
					}
					$("#datagrid").dialog('close');
					$('#en').datagrid('reload');
				}
			});
		}
		
		/* 刷新 */
		function reload() {
			$("#en").datagrid("reload")
		}
		
		/* 删除 */
		function cancel(){
			var row = $('#en').datagrid('getSelected');
			if (row) {
				$.messager.confirm("系统提示", "您确定要删除这条记录吗?", function(r) {
					if (r) {
						$.post('/firstssm/test2/deleteportEnterpriseinfo', {
							enumber : row.enumber
						}, function(data) {
							if (data.success) {
								$.messager.alert("系统提示", "操作成功!");
								$('#en').datagrid('reload');
							} else {
								$.messager.alert("系统提示", data.errorMsg);
							}
						}, 'json'); 
					}
					$('#en').datagrid('reload');
				});
			}
		}
	</script>
</body>