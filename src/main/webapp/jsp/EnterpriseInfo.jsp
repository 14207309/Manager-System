<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>DataGrid Complex Toolbar - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="http://www.java1234.com/jquery-easyui-1.3.3/themes/default/easyui.css"/>
	<link rel="stylesheet" type="text/css" href="http://www.java1234.com/jquery-easyui-1.3.3/themes/icon.css"/>
	<link rel="stylesheet" type="text/css" href="http://www.java1234.com/jquery-easyui-1.3.3/demo/demo.css"/>
	<script type="text/javascript" src="http://www.java1234.com/jquery-easyui-1.3.3/jquery.min.js"></script>
	<script type="text/javascript" src="http://www.java1234.com/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="http://www.java1234.com/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>
	
	<div style="margin-left:50px;margin-top: 25px;" align="center">
	<table id="grid" class="easyui-propertygrid" style="width:800px;" align="center" data-options="
				url:'/firstssm/test1/enterpriseInfo',
				showGroup: true,
				scrollbarSize: 0,
				columns: mycolumns
			">
			
	</table>
	</div>
	<script>
		var mycolumns = [[
    		{field:'name',title:'属性',width:150,sortable:true},
   		    {field:'value',title:'信息',width:200,resizable:false}
        ]];

	</script>
	
	<!-- <script type="text/javascript">
	$(function() {
		$('#grid').propertygrid({
			url : "/firstssm/info/riskgoodsearch",
			rows : [ [
					{
						name : '企业编号',
						value:'',
						group:'企业信息',
						editor:'text'
					},
					{
						field : 'ename',
						name : '企业名称',
						group:'企业信息'
					},
					{
						field : 'ecode',
						name : '企业代码',
						group:'企业信息'
					},
					{
						field : 'eaddr',
						name : '企业地址',
						group:'企业信息'
					},
					{
						field : 'elegpeople',
						name : '企业法人',
						group:'企业信息'
					},
					{
						field : 'emoney',
						name : '注册资本',
						group:'企业信息'
					},
					{
						field : 'estyle',
						name : '企业类型',
						group:'企业信息'
					},
					{
						field : 'eestdate',
						name : '成立日期',
						group:'企业信息'
					},
					{
						field : 'eenddate',
						name : '证书有效期',
						group:'企业信息'
					},
					{
						field : 'ecertstate',
						name : '证书状态',
						group:'企业信息'
					} ] ]
			});
	});
	</script> -->

</body>