<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head id="Head1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>港口危险货物安全监管信息系统</title>
<link href="css/zbmain.css" rel="stylesheet" type="text/css" />
<link href="css/default.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="jquery-easyui-themes/ui-cupertino/easyui.css" />
<link rel="stylesheet" type="text/css" href="js/themes/icon.css" />
<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.1.2.2.js"></script>
<script type="text/javascript" src='js/outlook2.js'></script>
<script type="text/javascript">
	var _menus = {
		"menus" : [ {
			"menuid" : "8",
			"icon" : "icon-sys",
			"menuname" : "驻港企业管理",
			"menus" : [ {
				"menuid" : "21",
				"menuname" : "驻港企业基本信息管理",
				"icon" : "icon-nav",
				"url" : "../jsp/PortEnterpriseinfo.jsp"
			}, {
				"menuid" : "22",
				"menuname" : "相关企业人员信息管理",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			}, {
				"menuid" : "22",
				"menuname" : "驻港企业设备设施信息管理",
				"icon" : "icon-nav",
				"url" : "/traffic/zb/proadd.jsp"
			}, {
				"menuid" : "31",
				"menuname" : "驻港企业港口管理制度管理",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			}, {
				"menuid" : "31",
				"menuname" : "驻港企业相关资料管理",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			} ]
		}, {
			"menuid" : "56",
			"icon" : "icon-sys",
			"menuname" : "危险货物审批",
			"menus" : [ {
				"menuid" : "31",
				"menuname" : "一轮审批",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			}, {
				"menuid" : "31",
				"menuname" : "紧急审批",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			}, {
				"menuid" : "31",
				"menuname" : "重大危险源备案管理",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			}, {
				"menuid" : "31",
				"menuname" : "安全条件审查管理",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			}, {
				"menuid" : "31",
				"menuname" : "安全评价报告",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			} ]
		}, {
			"menuid" : "28",
			"icon" : "icon-sys",
			"menuname" : "审批状态管理",
			"menus" : [ {
				"menuid" : "41",
				"menuname" : "审批历史查询",
				"icon" : "icon-nav",
				"url" : "demo.html"
			}, {
				"menuid" : "42",
				"menuname" : "已通过审批",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			}, {
				"menuid" : "43",
				"menuname" : "未通过审批",
				"icon" : "icon-nav",
				"url" : "demo2.html"
			}, {
				"menuid" : "43",
				"menuname" : "待审批",
				"icon" : "icon-nav",
				"url" : "demo2.html"
			}, {
				"menuid" : "31",
				"menuname" : "紧急状态审批记录",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			} ]
		}, {
			"menuid" : "56",
			"icon" : "icon-sys",
			"menuname" : "港口管理",
			"menus" : [ {
				"menuid" : "31",
				"menuname" : "人员调度",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			}, {
				"menuid" : "31",
				"menuname" : "运输管理",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			}, {
				"menuid" : "31",
				"menuname" : "泊位管理",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			}, {
				"menuid" : "31",
				"menuname" : "船舶出入港记录",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			}, {
				"menuid" : "31",
				"menuname" : "港口安全设施检修管理",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			} ]
		}, {
			"menuid" : "56",
			"icon" : "icon-sys",
			"menuname" : "应急管理",
			"menus" : [ {
				"menuid" : "31",
				"menuname" : "应急资源管理",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			}, {
				"menuid" : "31",
				"menuname" : "应急信息发布",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			}, {
				"menuid" : "31",
				"menuname" : "应急指挥调度",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			}, {
				"menuid" : "31",
				"menuname" : "应急值班管理",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			}, {
				"menuid" : "31",
				"menuname" : "安全专项监督检查管理",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			}, {
				"menuid" : "31",
				"menuname" : "预警及统计分析",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			}, {
				"menuid" : "31",
				"menuname" : "应急评估",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			} ]
		}, {
			"menuid" : "56",
			"icon" : "icon-sys",
			"menuname" : "港口服务",
			"menus" : [ {
				"menuid" : "31",
				"menuname" : "港口新闻",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			}, {
				"menuid" : "31",
				"menuname" : "港口公告",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			}, {
				"menuid" : "31",
				"menuname" : "意见箱",
				"icon" : "icon-nav",
				"url" : "demo1.html"
			} ]
		}, ]
	};
</script>

</head>

<body class="easyui-layout" style="overflow-y: hidden" scroll="no">

	<div id="north" region="north" split="true" border="false">
		<span id="n-head-r" class="head"> <a href="#" id="editpass">修改密码</a>
			<a href="#" id="loginOut">安全退出</a>
		</span>
		<h1>
			<span id="n-head-l">港口危险货物安全监管信息系统--政府用户端</span>
		</h1>

	</div>
	<!--  底部 -->
	<div id="footer" region="south" split="false">
		<div id="f-main">本页面由雷锋提供， 使用请联系。 联系方式：110</div>
	</div>
	<div region="west" hide="true" split="true" title="导航菜单"
		style="width: 180px;" id="west">
		<div id="nav" class="easyui-accordion" fit="true" border="false">
			<!--  导航内容 -->
		</div>
	</div>

	<div id="east" region="east" hide="true" split="true" title="导航菜单"
		style="width: 180px;" id="east">
		<div id="nav1" class="easyui-accordion" fit="true" border="false">
			<div title="相关服务" style="padding: 10px;">
				<div id="e-pan">
					<span><a href="constructor/a.html">首 页</a></span> <span><a
						href="constructor/a.html">交通政务</a></span> <span><a
						href="constructor/a.html">政府服务</a></span> <span><a
						href="constructor/a.html">公 告</a></span> <span><a
						href="constructor/a.html">附 加</a></span> <span><a
						href="constructor/a.html">附 加</a></span>
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
			<div title="欢迎使用" style="padding: 20px; overflow: hidden;">
				<div id="wellcome">欢迎使用本系统</div>
			</div>
		</div>
	</div>


	<!--修改密码窗口-->
	<div id="w" class="easyui-window" title="修改密码" collapsible="false"
		minimizable="false" maximizable="false" icon="icon-save"
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


</body>
</html>