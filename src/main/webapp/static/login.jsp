<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
 <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>企业信息管理系统-登录</title>
	<link href="../css/page/login.css" rel="stylesheet" type="text/css" />
	<!-- <script type="text/javascript" src="md5/jquery.md5.js"></script> -->
	<!-- <script type="text/javascript">
		function mdjia(){
		    var password=$("#password").val();
		    var pwd=$.md5(password);
		    alert(pwd);
		    $("#password").val(pwd); 
		}
	</script> -->
 </head>
 
 <body>
 	<div class="second_body">
    	<form action="${pageContext.request.contextPath }/test/login.do" method="post" data-bind="submit:loginClick">
        	<div class="logo"></div>
            <div class="title-zh">港口危险货物安全监管系统</div>
            <div class="title-en" style="">Port Dangerous Goods Safety Supervision System</div>
            <div class="message" data-bind="html:message"></div>
            <table border="0" style="width:300px;">
            	<tr>
                	<td style="white-space:nowrap; padding-bottom: 5px;width:55px;">用户名：</td>
                    <td colspan="2"><input type="text" id="userCode" class="login" data-bind="value:form.userCode" /></td>
                </tr>
                <tr>
                    <td class="lable" style="white-space:nowrap; letter-spacing: 0.5em; vertical-align: middle">密码：</td>
                    <td colspan="2"><input type="password" id="password" name="password" onblur="mdjia()" class="login" data-bind="value:form.password" /></td>
                </tr>
                <tr>
                    <td class="lable" style="white-space:nowrap; letter-spacing: 0.5em; vertical-align: middle">类型：</td>
                    <td colspan="3"><input type="" id="style" class="login" data-bind="value:form.style" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2"><input type="checkbox" data-bind="checked:form.remember" /><span>系统记住我</span></td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align:center">
                        <input type="submit" value="登录" class="login_button" />
                        <input type="button" value="重置" class="reset_botton" data-bind="click:resetClick" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
        
 	<script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="../js/jquery.cookie.js"></script>
<!--<script type="text/javascript" src="ims/WebContent/content/js/core/utils.js"></script>-->	
	<script type="text/javascript" src="../js/core/common.js"></script> 
<!--<script type="text/javascript" src="ims/WebContent/content/js/core/knockout-3.4.1.js"></script>-->    
	<script type="text/javascript" src="../viewModel/login.js"></script>
 	
 	<!-- <script type="text/javascript">
 		$(function () {
 			ko.applyBindings(new viewModel());
 		});
 	</script> -->
 </body>
</html>       