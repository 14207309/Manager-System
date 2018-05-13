<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link rel="stylesheet" type="text/css" href="http://www.java1234.com/jquery-easyui-1.3.3/themes/default/easyui.css"/>
	<link rel="stylesheet" type="text/css" href="http://www.java1234.com/jquery-easyui-1.3.3/themes/icon.css"/>
	<link rel="stylesheet" type="text/css" href="http://www.java1234.com/jquery-easyui-1.3.3/demo/demo.css"/>
	<script type="text/javascript" src="http://www.java1234.com/jquery-easyui-1.3.3/jquery.min.js"></script>
	<script type="text/javascript" src="http://www.java1234.com/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="http://www.java1234.com/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>
	<div style="margin:10px 0;"></div>
	<table class="easyui-datagrid" data-options="rownumbers:true,singleSelect:true,url:'/firstssm/test2/portEnterpriseinfo',toolbar:'#tb'">
		<thead>
			<tr>
				<th data-options="field:'enumber',width:100,align:'center'">企业编号</th>
				<th data-options="field:'ename',width:150,align:'center'">企业名称</th>
				<th data-options="field:'ecode',width:100,align:'center'">企业代码</th>
				<th data-options="field:'eaddr',width:200,align:'center'">企业地址</th>
				<th data-options="field:'elegpeople',width:100,align:'center'">企业法人</th>
				<th data-options="field:'emoney',width:80,align:'center'">注册资本</th>
				<th data-options="field:'estyle',width:100,align:'center'">企业类型</th>
				<th data-options="field:'eestdate',width:100,align:'center'">成立日期</th>
				<th data-options="field:'eenddate',width:100,align:'center'">证书有效期</th>
				<th data-options="field:'ecertstate',width:100,align:'center'">证书状态</th>
				<th data-options="field:'type',width:100,align:'center'">状态</th>
			</tr>
		</thead>
	</table>
	<div class="easyui-pagination" data-options="total:20" style="border:1px solid #ddd;"></div>
	<div id="tb" style="padding:5px;height:auto">
		<div>
			日期从: <input class="easyui-datebox" style="width:80px"/>
			到: <input class="easyui-datebox" style="width:80px"/>
			<a href="#" class="easyui-linkbutton" iconCls="icon-search">搜索</a>
		</div>
	</div>
</body>