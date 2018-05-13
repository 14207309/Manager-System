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
		title="意见箱功能" data-options="iconCls:'icon-ok'">
		<div class="easyui-tabs">
			<div title="发表历史" style="height: 630px; padding: 10px">
				<table id="comment" class="easyui-datagrid"
					data-options="rownumbers:true,singleSelect:true,toolbar:'#tb'">

				</table>
			</div>
			<div title="发表意见" style="padding: 10px">
				<div style="margin: 10px 0;" align="center">
					<div class="easyui-panel" title="意见箱" style="width: 700px">
						<h1 style="margin-top: 20px" align="center">意见箱</h1>
						<h4 style="margin-right: 80px" align="right">
							发表企业:<%=session.getAttribute("username")%></h4>
						<div style="padding: 10px 0 10px 10px" align="center">
							<form id="ff" action="form" method="post">
								<table>
									<tr>
										<td><h3>提交人:</h3></td>
										<td><input class="easyui-validatebox" type="text"
											style="width: 210px; height: 25px;" name="cname"
											data-options="required:true"></input></td>
									</tr>
									<tr>
										<td><h3>提交日期:</h3></td>
										<td><input class="easyui-datebox"
											style="width: 200px; height: 25px; margin-right: 20px;"
											name="cdate" data-options="onSelect:onSelect" required></input>
											<span style="margin-left: 20px">选择的日期是:</span><span
											id="result"></span></td>
									</tr>
									<tr>
										<td><h3>内容:</h3></td>
										<td><textarea name="ccontext" class="easyui-validatebox"
												style="width: 500px; height: 150px;"></textarea></td>
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

	<script>
		$('#comment')
				.datagrid(
						{
							url : '/firstssm/info/commentsearchCompany',//数据请求地址  
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
									},
									{
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
									},
									{
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
									},{
										field : 'stype',
										title : '审核状态',
										width : 60,
										align : 'center',
										sortable : true,
										styler : function(value, row, index) {
											if (value == '通过') {
												return 'background-color:#00bb00;';
											}else
												(value == '未通过')
											return 'background-color:#FF0000;';
										}
									}] ]
						});
		function submitForm() {
			$('#ff').form('submit', {
				url : '/firstssm/info/commentinsert',
				onSubmit : function() {
					return $(this).form("validate");
				},
				success : function(result) {
					if (result.errorMsg) {
						$.messager.alert("系统提示", "提交失败");
					} else {
						$.messager.alert("系统提示", "提交成功！");
						$("#ff").form('clear');
					}
				}
			});
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