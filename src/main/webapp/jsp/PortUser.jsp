<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head id="Head1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网络审核员</title>
<link href="../css/zbmain.css" rel="stylesheet" type="text/css" />
<link href="../css/default.css" rel="stylesheet" type="text/css" />
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
<link rel="stylesheet" type="text/css"
	href="../jquery-easyui-themes/ui-cupertino/easyui.css" />
<script type="text/javascript" src='../js/outlook2.js'></script>
<script type="text/javascript" src="../jquery-cookie/jquery.cookie.js"></script>
<script type="text/javascript">
	var _menus = {
		"menus" : [ {
			"menuid" : "8",
			"icon" : "icon-sys",
			"menuname" : "驻港企业管理",
			"menus" : [ {
				"menuid" : "21",
				"menuname" : "驻港企业基本信息查询",
				"icon" : "icon-nav",
				"url" : "../jsp/PortEnterpriseinfo.jsp"
			}, {
				"menuid" : "22",
				"menuname" : "驻港企业相关人员查询",
				"icon" : "icon-nav",
				"url" : "../jsp/EnterpriseWorkersearch.jsp"
			} ]
		}, {
			"menuid" : "56",
			"icon" : "icon-sys",
			"menuname" : "危险货物审批",
			"menus" : [ {
				"menuid" : "31",
				"menuname" : "申报信息",
				"icon" : "icon-nav",
				"url" : "../jsp/PRiskGoodPetsearchFirst.jsp"
			}, {
				"menuid" : "31",
				"menuname" : "一轮审批",
				"icon" : "icon-nav",
				"url" : "../jsp/PRiskGoodPetsearchFirst.jsp"
			}, {
				"menuid" : "31",
				"menuname" : "紧急审批",
				"icon" : "icon-nav",
				"url" : "../jsp/PRiskGoodPetsearchFirstRid.jsp"
			} ]
		}, {
			"menuid" : "28",
			"icon" : "icon-sys",
			"menuname" : "审批状态管理",
			"menus" : [ {
				"menuid" : "41",
				"menuname" : "审批历史查询",
				"icon" : "icon-nav",
				"url" : "../jsp/PRiskGoodPetsearchHistory.jsp"
			}, {
				"menuid" : "41",
				"menuname" : "审批历史统计",
				"icon" : "icon-nav",
				"url" : "../jsp/APRiskGoodPetsearch2.jsp"
			}]
		}, {
			"menuid" : "56",
			"icon" : "icon-sys",
			"menuname" : "港口管理",
			"menus" : [ {
				"menuid" : "31",
				"menuname" : "泊位管理",
				"icon" : "icon-nav",
				"url" : "/firstssm/jsp/PortBerth2.jsp"
			} ]
		}, {
			"menuid" : "56",
			"icon" : "icon-sys",
			"menuname" : "港口服务",
			"menus" : [ {
				"menuid" : "31",
				"menuname" : "港口公告",
				"icon" : "icon-nav",
				"url" : "../jsp/Pnotice2.jsp"
			}, {
				"menuid" : "31",
				"menuname" : "意见箱",
				"icon" : "icon-nav",
				"url" : "../jsp/Pcomment.jsp"
			} ]
		}, ]
	};
</script>

</head>

<body class="easyui-layout" style="overflow-y: hidden" scroll="no">

	<!-- ================顶部====================== -->
	<div id="north" style="height: 80px;" region="north" split="true"
		border="false">
		<span id="n-head-r" class="head" style="margin-top: 20px">
			用户类型：网络审核员 <a href="#" id="loginuser" style="margin-left: 20px"><%=session.getAttribute("username")%></a>,欢迎您
			<a href="#" class="easyui-linkbutton" id="editpass"  style="margin-left: 10px">修改密码</a>
			<!-- <a href="#" id="loginOut" style="margin-left: 10px">安全退出</a> -->
			<a href="http://localhost:8080/firstssm/index.jsp" class="easyui-linkbutton" id="loginOut">安全退出</a></span> 
		</span>
		<h1>
			<span id="n-head-l" style="margin-top: 20px; margin-left: 30px">港口危险货物安全监管信息系统--政府用户端</span>
		</h1>
	</div>

	<!--  底部 -->
	<div id="footer" region="south" split="false">
		<div id="f-main">本页面由雷锋提供， 使用请联系。 联系方式：110</div>
	</div>
	<div region="west" hide="true" split="true" title="导航菜单"
		style="width: 330px;" id="west">
		<div id="nav" class="easyui-accordion" fit="true" border="false">
			<!--  导航内容 -->
		</div>
	</div>

	<div id="east" region="east" hide="true" split="true" title="导航菜单"
		style="width: 330px;" id="east">
		<div id="nav1" class="easyui-accordion" fit="true" border="false">
			<div title="相关服务" style="padding: 10px;">
				<div id="e-pan">
					<span><a href="constructor/a.html">首 页</a></span> <span><a
						href="constructor/a.html">交通政务</a></span> <span><a
						href="constructor/a.html">政府服务</a></span> <span><a
						href="constructor/a.html">公 告</a></span>
				</div>
			</div>
			<div title="Title2" data-options="selected:true"
				style="padding: 10px;">content2</div>
			<div title="Title3" style="padding: 10px">content3</div>
		</div>
	</div>

	<div id="mainPanle" region="center"
		style="background: #eee; overflow-y: hidden">
		<div id="tabs" class="easyui-tabs" fit="true" border="false">
			<div title="首页" style="padding: 20px; overflow: hidden;">
				<div id="wellcome">欢迎使用本系统</div>
			</div>
		</div>
	</div>


	<!--修改密码窗口-->
	<div id="w" class="easyui-window" title="修改密码" collapsible="false"
		icon="icon-save" style="width: 350px; height: 180px;">
		<div class="easyui-layout" fit="true">
			<div region="center" border="false"
				style="padding: 10px; background: #fff; border: 1px solid #ccc;">
				<form id="grid1">
					<table>
						<tr>
							<td>原始密码：</td>
							<td><input id="Pass" name="Pass" type="password"
								class="txt01" /></td>
						</tr>
						<tr>
							<td>新密码：</td>
							<td><input id="NewPass" name="NewPass" type="password"
								class="txt01" /></td>
						</tr>
						<tr>
							<td>确认密码：</td>
							<td><input id="RePass" name="RePass" type="password"
								class="txt01" /></td>
						</tr>
					</table>
				</form>
			</div>
			<div region="south" border="false"
				style="text-align: right; height: 30px; line-height: 30px;">
				<a id="btnEp" class="easyui-linkbutton" icon="icon-ok"
					href="javascript:void(0)" onclick="save()">确定</a> <a id="btnCancel"
					class="easyui-linkbutton" icon="icon-cancel"
					href="javascript:void(0)">取消</a>
			</div>
		</div>
	</div>

	<div id="mm" class="easyui-menu" style="width: 150px;">
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
</div>
	<script type="text/javascript">
		function save() {
			$("#grid1").form("submit", {
				url : "/firstssm/test2/password",
				onSubmit : function() {
					return $(this).form("validate");
				},
				success : function(result) {
					if (result.errorMsg) {
						$.messager.alert("系统提示", "修改失败");
					} else {
						$.messager.alert("系统提示", "修改成功！");
						$("#grid1").form('clear');
					}
				}
			});
			$("#w").dialog('close')
		}
	</script>
</body>


</html>