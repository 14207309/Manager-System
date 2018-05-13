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
	<div id="datadlg" style="height: 700px" class="easyui-dialog"
		title="港口公告" data-options="iconCls:'icon-ok'">
		<div class="easyui-tabs">
			<div title="发布历史" style="height: 630px; padding: 10px">
				<table id="notice" class="easyui-datagrid"
					data-options="rownumbers:true,singleSelect:true,toolbar:'#tb'">
				</table>
			</div>
			<div title="实时发布" style="padding: 10px">
				<div style="margin: 10px 0;" align="center">
					<div class="easyui-panel" title="公告" style="width: 700px">
						<h1 style="margin-top: 20px" align="center">
							<font size="22">公告</font>
						</h1>
						<h4 style="margin-right: 80px" align="right">
							管理员:<%=session.getAttribute("username")%></h4>
						<div style="padding: 10px 0 10px 10px" align="center">
							<form id="ff" action="form" method="post">
								<table>
									<tr>
										<td><h3>发布人:</h3></td>
										<td><%=session.getAttribute("username")%></td>
									</tr>
									<tr>
										<td><h3>公告主题:</h3></td>
										<td><input class="easyui-validatebox" type="text"
											style="width: 300px; height: 25px;" name="notitle"
											data-options="required:true"></input></td>
									</tr>
									<tr>
										<td><h3>发布日期:</h3></td>
										<td><input class="easyui-datebox"
											style="width: 200px; height: 25px; margin-right: 20px;"
											name="nodate" data-options="onSelect:onSelect" required></input><span>选择的日期是:
										</span><span id="result"></span></td>
									</tr>
									<tr>
										<td><h3>公告内容:</h3></td>
										<td><textarea name="nocontext"
												style="width: 500px; height: 150px;"></textarea></td>
									</tr>
									<tr>
										<td><h3>是否直接发布：</h3></td>
										<td><span class="radioSpan"> <input type="radio"
												name="nflag" style="margin-left: 20px" value="1">是</input> <input
												type="radio" name="nflag" value="0">否</input>
										</span></td>
									</tr>
								</table>
							</form>
						</div>
						<div style="text-align: center; padding: 5px">
							<a href="javascript:void(0)" class="easyui-linkbutton"
								onclick="submitForm()">确认提交</a> <a href="javascript:void(0)"
								class="easyui-linkbutton" onclick="clearForm()">重新撰写</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="tb" style="padding: 5px; height: auto">
		<div style="margin-bottom: 5px">
			<a href="#" class="easyui-linkbutton" iconCls="icon-reload"
				plain="true" onclick="reload()">刷新</a> <a href="#"
				class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a> <a
				href="#" class="easyui-linkbutton" iconCls="icon-cancel"
				plain="true">删除</a>
		</div>
	</div>

	<div id="detaildlg" class="easyui-dialog" title="详细信息及公告管理"
		data-options="iconCls:'icon-ok',closed:true"
		style="width: 900px; height: 550px;">
		<div class="easyui-tabs">
			<form id="grid1" method="post" style="height: 420px;" novalidate>
				<table style="margin-top: 20px; margin-bottom: 40px" align="center">
					<tr>
						<input type="hidden" name="noid" id="noid"></input>
						<td align="center"><label>发布人:</label></td>
						<td><input id="noname" name="noname" class="easyui-textbox"
							readonly="true"
							style="width: 150px; height: 23px; margin-right: 10px"></td>
					</tr>
					<tr>
						<td align="center"><label>发布主题:</label></td>
						<td><input id="notitle" name="notitle" class="easyui-textbox"
							readonly="true"
							style="width: 150px; height: 23px; margin-right: 10px"></td>
					</tr>
					<tr>
						<td align="center"><label>发布日期:</label></td>
						<td><input id="nodate" name="nodate"
							style="width: 180px; height: 32px; margin-right: 10px"
							class="easyui-datebox" readonly="true"
							data-options="required:true,editable:false"> </input></td>
					</tr>
					<tr>
						<td align="center"><label>具体内容:</label></td>
						<td><input id="nocontext" name="nocontext"
							style="width: 300px; height: 150px; margin-right: 10px"
							class="easyui-textbox" readonly="true"></td>
					</tr>
					<tr>
						<td align="center"><label>是否发布:</label></td>
						<td><span class="radioSpan"> <input type="radio"
								name="nflag" style="margin-left: 20px" value="1">是</input> <input
								type="radio" name="nflag" value="0">否</input></span></td>
					</tr>
				</table>
				<div id="dlg-buttons" align="center" style="margin-top: 10px">
					<a href="javascript:void(0)" class="easyui-linkbutton"
						iconCls="icon-ok" onclick="save()">提交</a> <a
						href="javascript:void(0)" class="easyui-linkbutton"
						iconCls="icon-cancel"
						onclick="javascript:$('#detaildlg').dialog('close')">关闭</a>
				</div>
			</form>
		</div>
	</div>

	<script>
		/* 公告查询 */
		$('#notice')
				.datagrid(
						{
							url : '/firstssm/info/noticeSearch',//数据请求地址  
							/* toolbar:'#toolbar',// 数据网格工具栏 比如添加 修改   */
							pagination : true,//分页显示  
							fitColumns : true,//自动适应宽度  
							columns : [ [
									{
										field : 'noname',
										title : '发布人',
										width : 100,
										align : 'center'
									},
									{
										field : 'notitle',
										title : '发布主题',
										width : 120,
										align : 'center'
									},
									{
										field : 'nodate',
										title : '提交日期',
										width : 60,
										align : 'center'
									},
									{
										field : 'nocontext',
										title : '具体内容',
										width : 250,
										align : 'center'
									},
									{
										field : 'nflags',
										title : '审核状态',
										width : 60,
										align : 'center',
										sortable : true,
										styler : function(value, row, index) {
											if (value == '已撤销') {
												return 'background-color:#FF0000;';
											} else
												(value == '已发布')
											return 'background-color:#00bb00;';
										}
									},
									{
										field : 'cfa',
										title : '操作信息',
										width : 100,
										align : 'center',
										formatter : function(value, row, index) {
											var a = '<a href="#" class="easyui-linkbutton" style="width: 90px" onclick="detail()">详细信息及公告管理</a> ';
											return a;
										}
									} ] ]
						});
		/* 详细信息弹框 */
		function detail() {
			var Row = $("#notice").datagrid('getSelected');
			if (Row != null) {
				$('#detaildlg').dialog('open').dialog('center');
				$.post('/firstssm/info/noticeSearchid', {
					noid : Row.noid
				}, function(result) {
					var data = eval('(' + result + ')');
					console.info(data); 
					$('#grid1').form('load', {
						 noid : data[0].noid,
						noname : data[0].noname,
						notitle : data[0].notitle,
						nodate : data[0].nodate,
						nocontext : data[0].nocontext,
						nflag : data[0].nflag 
					});
				});
			}
		}

		function save() {
			$("#grid1").form("submit", {
				url : "/firstssm/info/noticeflag",
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
			$("#detaildlg").datagrid('close');
			$("#notice").datagrid('reload');
		}

		/* 公告发布 */
		function submitForm() {
			$('#ff').form('submit', {
				url : '/firstssm/info/noticeinsert',
				onSubmit : function() {
					return $(this).form("validate");
				},
				success : function(result) {
					if (result.errorMsg) {
						$.messager.alert("系统提示", "提交失败");
					} else {
						$.messager.alert("系统提示", "提交成功！");
						$("#detaildlg").form('clear');
					}
				}
			});
			$("#notice").datagrid('reload');
		}

		function clearForm() {
			$('#ff').form('clear');
		}
	</script>
	<script>
		function onSelect(date) {
			$('#result').text(
					date.getFullYear() + '-' + (date.getMonth() + 1) + '-'
							+ date.getDate());
		}
	</script>

</body>