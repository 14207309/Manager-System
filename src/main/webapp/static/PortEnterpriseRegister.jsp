<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
    <script src="js/jquery-1.8.3.min.js"></script>
<style>
			table{
				width:50%;
				margin:auto;
				margin-top: 50px;
				border: 0px solid #999;
				border-collapse: collapse;
			}
			table td{
				border: 0px solid #999;
				height: 30px;
			}
			h3{
				color: white;
				text-shadow: 2px 2px 4px #000000;
				font-size: 32px;
			}
			input{
				width:95%;
				height:100%;
			}
			span{
				color: #ccc;
				padding-left: 10px;
			}
			div{
				width: 300px;
				margin: auto;
				
			}
			button{
				width: 80px;
				text-align: center;
			}
		</style>
</head>

<body>
<form action="${pageContext.request.contextPath}/portenterprise/register.do" method="post" class="form-horizontal" role="form"  id="form1">
		<table>
			<caption><h3>企业注册</h3></caption>
			<tr>
				<td>企业编号</td>
				<td><input type="text" name="enumber" ></td>
				<td><span>请输入姓名</span></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="password" name="epassword" id="a2"></td>
				<td><span>请输入密码</span></td>
			</tr>
			<tr>
				<td>企业名称</td>
				<td><input type="text" name="ename" ></td>
				<td><span>请输入企业名称</span></td>
			</tr>
			<tr>
				<td>企业代码</td>
				<td><input type="text" name="ecode"></td>
				<td><span>请输入企业代码</span></td>
			</tr>
			<tr>
				<td>企业地址</td>
				<td><input type="text" name="eaddr"></td>
				<td><span>请输入企业地址</span></td>
			</tr>
			<tr>
				<td>企业法人</td>
				<td><input type="text" name="elegpeople"></td>
				<td><span>请输入企业法人</span></td>
			</tr>
			<tr>
				<td>注册资本(万元)</td>
				<td><input type="text" name="emoney"></td>
				<td><span>请输入注册资本</span></td>
			</tr>
			<tr>
				<td>企业类型</td>
				<td>
					<select name="estyle">
						<option value="1">国有企业</option>
						<option value="2">合资企业</option>
						<option value="3">私营企业</option>
						<option value="4">全民所有制企业</option>
						<option value="5">集体所有制企业</option>
						<option value="6">股份制企业</option>
						<option value="7">有限责任制企业</option>
					</select>
				</td>
				<td><span>请选择企业类型</span></td>
			</tr>
			<tr>
				<td>成立日期</td>
				<td><input type="date" name="eestDate"></td>
				<td><span>请选择成立日期</span></td>
			</tr>
			<tr>
				<td>证书有效期</td>
				<td><input type="date" name="eendDate"></td>
				<td><span>请选择证书有效期</span></td>
			</tr>
			<tr>
				<td>证书状态</td>
				<td>
					<select name="ecertstate">
						<option value="yes">正常</option>
						<option value="no">异常</option>
					</select>
				</td>
				
			</tr>
		</table>
		<br><br>
		<div>
			<button type="button" style="margin-left:0px;" id="reg">注册</button>
		</div>
		</form>
</body>
<script>
$("#reg").click(function(){ 
	if($("#a1").val().length!=0&&$("#a2").val().length!=0){
		$("#form1").submit();
	}
});
</script>
</html>