<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head id="Head1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>港口企业</title>
<link href="../css/zbmain.css" rel="stylesheet" type="text/css" />
<link href="../css/default.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="../js/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="../js/themes/icon.css" />
<script type="text/javascript" src="../js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="../js/jquery.easyui.min.1.2.2.js"></script>
<script type="text/javascript" src='../js/outlook2.js'></script>
<!-- <script type="text/javascript" src="../jquery-cookie/jquery.cookie.js"></script> -->
<!-- 西区菜单栏 -->
<script type="text/javascript">
	var _menus = {
		"menus" : [ {
			"menuid" : "8",
			"icon" : "icon-large-shapes",
			"menuname" : "企业管理",
			"menus" : [ {
				"menuid" : "21",
				"menuname" : "企业信息查询",
				"icon" : "icon-nav",
				"url" : "../jsp/EnterpriseInfo.jsp"
			}, {
				"menuid" : "22",
				"menuname" : "相关工作人员管理",
				"icon" : "icon-nav",
				"url" : "../jsp/EnterpriseWorker.jsp"
			}, ]
		}, {
			"menuid" : "56",
			"icon" : "icon-large-smartart",
			"menuname" : "危险货物申报",
			"menus" : [ {
				"menuid" : "31",
				"menuname" : "申报信息注册",
				"icon" : "icon-nav",
				"url" : "../jsp/ERiskGoodPet.jsp"
			} ]
		}, {
			"menuid" : "28",
			"icon" : "icon-large-smartart",
			"menuname" : "申报查询",
			"menus" : [ {
				"menuid" : "41",
				"menuname" : "申报历史",
				"icon" : "icon-nav",
				"url" : "../QYjsp/PRiskGoodPetsearchE.jsp"
			}/* , {
				"menuid" : "42",
				"menuname" : "已提交申报",
				"icon" : "icon-nav",
				"url" : "../QYjsp/PRiskGoodPetsearch.jsp"
			}, {
				"menuid" : "42",
				"menuname" : "未提交申报",
				"icon" : "icon-nav",
				"url" : "../QYjsp/PRiskGoodPetsearch.jsp"
			}, {
				"menuid" : "42",
				"menuname" : "已通过审核",
				"icon" : "icon-nav",
				"url" : "../QYjsp/PRiskGoodPetsearch.jsp"
			}, {
				"menuid" : "43",
				"menuname" : "未通过审核",
				"icon" : "icon-nav",
				"url" : "../QYjsp/PRiskGoodPetsearch.jsp"
			}, {
				"menuid" : "43",
				"menuname" : "待审核",
				"icon" : "icon-nav",
				"url" : "../QYjsp/PRiskGoodPetsearch.jsp"
			}  */]
		}, /* {
			"menuid" : "56",
			"icon" : "icon-large-smartart",
			"menuname" : "应急管理",
			"menus" : [ {
				"menuid" : "31",
				"menuname" : "应急设施更新",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			}, {
				"menuid" : "31",
				"menuname" : "应急设施查询",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			}, {
				"menuid" : "31",
				"menuname" : "应急预案备份",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			}, {
				"menuid" : "31",
				"menuname" : "应急资源管理",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			}, {
				"menuid" : "31",
				"menuname" : "应急预案查询",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			} ]
		}, */ {
			"menuid" : "56",
			"icon" : "icon-large-smartart",
			"menuname" : "运输管理",
			"menus" : [/*  {
				"menuid" : "31",
				"menuname" : "运输调度",
				"icon" : "icon-nav",
				"url" : "../QYjsp/TransDispatch.jsp"
			},  */{
				"menuid" : "31",
				"menuname" : "运输人员管理",
				"icon" : "icon-nav",
				"url" : "../jsp/EnterpriseWorkertrans.jsp"
			} ]
		}, {
			"menuid" : "56",
			"icon" : "icon-large-smartart",
			"menuname" : "公共服务",
			"menus" : [ {
				"menuid" : "31",
				"menuname" : "港口公告预览",
				"icon" : "icon-nav",
				"url" : "../jsp/Pnotice2.jsp"
			}, {
				"menuid" : "31",
				"menuname" : "港口意见箱",
				"icon" : "icon-nav",
				"url" : "../jsp/Ecomment.jsp"
			} ]
		}, ]
	};
</script>

</head>

<body class="easyui-layout" style="overflow-y: hidden" scroll="no">
	<!-- 北区 -->
	<div id="north" style="height: 80px;" region="north" split="true"
		border="false">
		<span id="n-head-r" class="head" style="margin-top: 20px">
			用户类型：企业用户
			<a href="#" id="loginuser" style="margin-left: 20px"><%=session.getAttribute("username")%></a>,欢迎您
			<a href="#" class="easyui-linkbutton" id="editpass"  style="margin-left: 10px">修改密码</a>
			<!-- <a href="#" id="loginOut" style="margin-left: 10px">安全退出</a> -->
			<a href="http://localhost:8080/firstssm/index.jsp" class="easyui-linkbutton" id="loginOut">安全退出</a></span> 
			
		</span>
		<h1>
			<span id="n-head-l" style="margin-top: 20px; margin-left: 30px">港口危险货物安全监管信息系统--企业用户端</span>
		</h1>
	</div>
	<!--  底部 -->
	<div id="footer" region="south" split="false">
		<div id="f-main">本页面由雷锋提供， 使用请联系。 联系方式：110</div>
	</div>

	<!-- 西区 -->
	<div id="west" region="west" hide="true" split="true" title="导航菜单 "
		style="width: 300px;">
		<div id="nav" class="easyui-accordion" fit="true" border="false">
			<!--  导航内容 -->
		</div>
	</div>

	<!-- 东区 -->
	<div id="east" region="east" hide="true" split="true" title="导航菜单"
		style="width: 300px;" id="east">
		<div id="nav1" class="easyui-accordion" fit="true" border="false">
			<div title="相关服务" style="padding: 20px;">
				<div id="e-pan">
					 <span><a
						href="localhost:8080/firstssm/jsp/Pnotice2.jsp">公 告</a></span> 
				</div>
			</div>
		</div>
	</div>
	<!-- 中部区域 -->
	<div id="mainPanle" region="center"
		style="background: #eee; overflow-y: hidden">
		<div id="tabs" class="easyui-tabs" fit="true" border="false">
			<div title="欢迎使用" style="padding: 20px; overflow: hidden;">
				<div id="wellcome">欢迎使用本系统</div>
			</div>
		</div>
	</div>


	<!--修改密码窗口-->
	<div id="w" class="easyui-window" title="修改密码" collapsible="false"
		resizable="true" minimizable="false" maximizable="false"
		icon="icon-save"
		style="width: 300px; height: 150px; padding: 5px; background: #fafafa;">
		<div class="easyui-layout" fit="true">
			<div region="center" border="false"
				style="padding: 10px; background: #fff; border: 1px solid #ccc;">
				<table cellpadding=3>
					<tr>
						<td>新密码：</td>
						<td><input id="txtNewPass" type="password" class="txt01" /></td>
					</tr>
					<tr>
						<td>确认密码：</td>
						<td><input id="txtRePass" type="password" class="txt01" /></td>
					</tr>
				</table>
			</div>
			<div region="south" border="false"
				style="text-align: right; height: 30px; line-height: 30px;">
				<a id="btnEp" class="easyui-linkbutton" icon="icon-ok"
					href="javascript:void(0)">确定</a> <a id="btnCancel"
					class="easyui-linkbutton" icon="icon-cancel"
					href="javascript:void(0)">取消</a>
			</div>
		</div>
	</div>

	<div id="mm" class="easyui-menu" style="width: 200px;">
		<div id="mm-tabupdate">刷新</div>
		<div class="menu-sep"></div>
		<div id="mm-tabclose">关闭</div>
		<div id="mm-tabcloseall">全部关闭</div>
		<div id="mm-tabcloseother">除此之外全部关闭</div>
		<div class="menu-sep"></div>
		<div id="mm-tabcloseright">当前页右侧全部关闭</div>
		<div id="mm-tabcloseleft">当前页左侧全部关闭</div>
		<div class="menu-sep"></div>
		<div id="mm-exit">退出</div>
	</div>


</body>
</html>