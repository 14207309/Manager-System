<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Basic Form - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="http://www.java1234.com/jquery-easyui-1.3.3/themes/default/easyui.css"/>
	<link rel="stylesheet" type="text/css" href="http://www.java1234.com/jquery-easyui-1.3.3/themes/icon.css"/>
	<link rel="stylesheet" type="text/css" href="http://www.java1234.com/jquery-easyui-1.3.3/demo/demo.css"/>
	<script type="text/javascript" src="http://www.java1234.com/jquery-easyui-1.3.3/jquery.min.js"></script>
	<script type="text/javascript" src="http://www.java1234.com/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="http://www.java1234.com/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>
	<div style="margin:10px 0;" align="center">
	<div class="easyui-panel" title="港口公告发布" style="width:700px">
		<h1 style="margin-top: 20px" align="center">港口公告</h1>
		<div style="padding:10px 0 10px 10px" align="center">
	    <form id="ff" action="form" method="post" >
	    	<table>
	    		<tr>
	    			<td><h3>发布人:</h3></td>
	    			<td><input class="easyui-validatebox" type="text" style="width:210px;height:25px;" name="Cname" data-options="required:true"></input></td>
	    		</tr>
	    		<tr>
	    			<td><h3>公告主题:</h3></td>
	    			<td><input class="easyui-validatebox" type="text" style="width:300px;height:25px;" name="Cname" data-options="required:true"></input></td>
	    		</tr>
	    		<tr>
	    			<td><h3>发布日期:</h3></td>
	    			<td><input class="easyui-datebox" style="width:200px;height:25px;margin-right: 20px;" name="Cdate" data-options="onSelect:onSelect" required></input><span >选择的日期是: </span><span id="result"></span></td>
	    		</tr>
	    		<tr>
	    			<td><h3>公告内容:</h3></td>
	    			<td><textarea name="message" style="width:500px;height:150px;"></textarea></td>
	    		</tr>
	    	</table>
	    </form>
	    </div>
	    <div style="text-align:center;padding:5px">
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">确认提交</a>
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重新撰写</a>
	    </div>
	</div>
	</div>
	<script>
		function submitForm(){
			$('#ff').form('submit');
		}
		function clearForm(){
			$('#ff').form('clear');
		}
	</script>
	<script>
		function onSelect(date){
			$('#result').text(date.getFullYear()+'-'+(date.getMonth()+1)+'-'+date.getDate());
		}
	</script>
	
</body>