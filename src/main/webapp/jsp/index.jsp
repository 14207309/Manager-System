<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="http://www.sz886.com/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="md5/jquery.md5.js"></script>
<script type="text/javascript" src="md5/md5Util.js"></script>
<link href="../css/page/login.css" rel="stylesheet" type="text/css" />
<title>用户登录</title>
<script type="text/javascript">
	$(document).ready(function(e) {
		$(".button").click(function() {
			//定位到当前第几行的信息
			var index = $(".button").index($(this));
			//显示不同的div
			$(".content_1").eq(index).show().siblings(".content_1").hide();
		});
	});
</script>
</head>
<body>
	<div class="second_body">
		<div>
			<input type="button" value="企业用户" class="button" style="margin-right:20px;margin-left:25px;"/> 
			<input type="button" value="政府用户" class="button" />
		</div>

		<div class="content_1">
			<form action="${pageContext.request.contextPath }/test1/login1"
				method="post">
				<div class="logo"></div>
				<div class="title-zh">港口危险货物安全监管系统</div>
				<div class="title-en" style="">Port Dangerous Goods Safety
					Supervision System</div>
				<div class="message"></div>

				<table border="0" style="width: 300px;">
					<tr>
						<td style="white-space: nowrap; padding-bottom: 5px; width: 55px;">用户名：</td>
						<td colspan="2"><input type="text" id="userName"
							class="login" data-bind="value:form.userCode" name="username" />
							<input type="hidden" id="pwd" name="user_psw"></td>
					</tr>
					<tr>
						<td class="lable"
							style="white-space: nowrap; letter-spacing: 0.5em; vertical-align: middle">密码：</td>
						<td colspan="2"><input type="password" id="password"
							name="password" maxlength="32" onblur="mdjia()" class="login"
							data-bind="value:form.password" /></td>
					</tr>
					<tr>
						<td style="white-space: nowrap; padding-bottom: 5px; width: 55px;">验证码：</td>
						<td><input type="text" id="user_input_verifyCode" class="login1"
							name="user_input_verifyCode"></td>
						<td><span class="code_img"> 
							<img src="../firstssm/test/getVerifyCode" width="100px" height="30px"
								id="verifyCodeImage">
						</span></td>
					</tr>
					<tr>
						<td colspan="2"><input type="checkbox" class="remember"
							data-bind="checked:form.remember" style="margin-left: 60px" /> <span>记住密码</span></td>
					</tr>
					<tr>
						<td colspan="3" style="text-align: center">
							<input type="submit" value="登录" class="login_button" /> 
							<input type="button" value="注册" class="reset_botton" data-bind="click:resetClick"
								onclick="javascrtpt:window.location.href='http://localhost:8080/firstssm/jsp/PortEnterpriseRegister.jsp'" /></td>
					</tr>
				</table>
			</form>
		</div>
		<div class="content_1" style="display: none">
			<form action="${pageContext.request.contextPath }/test2/login2" method="post">
				<div class="logo"></div>
				<div class="title-zh">港口危险货物安全监管系统</div>
				<div class="title-en" style="">Port Dangerous Goods Safety
					Supervision System</div>
				<div class="message"></div>

				<table border="0" style="width: 300px;">
					<tr>
						<td style="white-space: nowrap; padding-bottom: 5px; width: 55px;">用户名：</td>
						<td colspan="2"><input type="text" id="userName"
							class="login" data-bind="value:form.userCode" name="username" />
							<input type="hidden" id="pwd" name="user_psw"></td>
					</tr>
					<tr>
						<td class="lable"
							style="white-space: nowrap; letter-spacing: 0.5em; vertical-align: middle">密码：</td>
						<td colspan="2"><input type="password" id="password"
							name="password" maxlength="32" onblur="mdjia()" class="login"
							data-bind="value:form.password" /></td>
					</tr>
					<tr>
						<td class="lable"
							style="white-space: nowrap; letter-spacing: 0.5em; vertical-align: middle">类型：</td>
						<td colspan="2"><select class="select">
								<option value="p1"></option>
								<option value="p2">航港局</option>
								<option value="p3">网络审核人员</option>
								<option value="p4">现场审核人员</option>
						</select></td>
					</tr>
					<tr>
						<td style="white-space: nowrap; padding-bottom: 5px; width: 55px;">验证码：</td>
						<td><input type="text" id="user_input_verifyCode" class="login1"
							name="user_input_verifyCode"></td>
						<td><span class="code_img"> 
							<img src="../firstssm/test/getVerifyCode" width="100px" height="30px"
								id="verifyCodeImage">
						</span></td>
					</tr>
					<tr>
						<td colspan="2"><input type="checkbox" style="margin-left: 60px"
							data-bind="checked:form.remember" /> <span>系统记住我</span></td>
					</tr>
					<tr>
						<td colspan="3" style="text-align: center"><input
							type="submit" value="登录" class="login_button" /> <input
							type="button" value="重置" class="reset_botton"
							data-bind="click:resetClick" /></td>
					</tr>
				</table>
			</form>
		</div>


	</div>
</body>
<script type="text/javascript" src="md5/jquery.md5.js">
	function mdjia() {
		var password = $("#password").val();
		var pwd = $.md5(password);
		alert(password1);
		$("#pwd").val(pwd);
	}
</script>
</html>