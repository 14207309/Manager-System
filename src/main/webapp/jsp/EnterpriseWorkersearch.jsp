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
				pagination:true,
				pageSize:10">
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

</body>