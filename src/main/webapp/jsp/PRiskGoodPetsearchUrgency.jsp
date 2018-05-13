<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DataGrid Complex Toolbar-jQuery EasyUI Demo</title>
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
	<!-- 弹窗显示危险货物信息 -->
	<div id="datadlg" style="height: 700px" class="easyui-dialog"
		title="危险货物紧急申报审批" data-options="iconCls:'icon-ok'">
		<div class="easyui-tabs">
			<div title="紧急审批历史" style="height: 630px; padding: 10px">
				<table id="risk" class="easyui-datagrid"
					data-options="rownumbers:true,singleSelect:true,toolbar:'#tb',autoRowHeight:true,">
				</table>
			</div>
			<div title="紧急申报信息填写" style="padding: 10px">
				<div>
					<form id="risk1" method="post" novalidate>
						<table style="margin-top: 20px; margin-bottom: 75px"
							align="center">
							<tr><h1 style="margin-top: 40px" align="center"><font color="red">
							<=================================================危   险   货   物   现   场   紧   急   申   报=================================================></font></h1></tr>
							<tr>
								<td><h3>申报编号:</h3></td>
								<td><input class="easyui-validatebox" type="text"
									style="width: 200px; height: 25px; margin-right: 40px;"
									name="rnum" data-options="required:true"></input></td>
								<td><h3>申报企业:</h3></td>
								<td><input class="easyui-validatebox" type="text"
									style="width: 200px; height: 25px; margin-right: 40px;"
									name="rcompany" data-options="required:true"></input></td>
								<td><h3>申报人:</h3></td>
								<td><input class="easyui-validatebox" type="text"
									style="width: 200px; height: 25px; margin-right: 40px;"
									name="rpeople" data-options="required:true"></input></td>
							</tr>
							<tr>
								<td><h3>发货方:</h3></td>
								<td><input class="easyui-validatebox" type="text"
									style="width: 200px; height: 25px; margin-right: 40px;"
									name="rshipper" data-options="required:true"></input></td>
								<td><h3>收货方:</h3></td>
								<td><input class="easyui-validatebox" type="text"
									style="width: 200px; height: 25px; margin-right: 40px;"
									name="rconsignee" data-options="required:true"></input></td>
								<td><h3>承运人:</h3></td>
								<td><input class="easyui-validatebox" type="text"
									style="width: 200px; height: 25px; margin-right: 40px;"
									name="rcarrier" data-options="required:true"></input></td>
							</tr>
							<tr>
								<td><h3>运输船名:</h3></td>
								<td><input class="easyui-validatebox" type="text"
									style="width: 200px; height: 25px; margin-right: 40px;"
									name="rshipname" data-options="required:true"></input></td>
								<td><h3>装货港:</h3></td>
								<td><input class="easyui-validatebox" type="text"
									style="width: 200px; height: 25px; margin-right: 40px;"
									name="rportloading" data-options="required:true"></input></td>
								<td><h3>装货时间:</h3></td>
								<td><input class="easyui-datebox" type="text"
									style="width: 205px; height: 32px; margin-right: 40px;"
									name="rloadingtime" data-options="required:true,editable:false"></input></td>
							</tr>
							<tr>
								<td><h3>卸货港:</h3></td>
								<td><input class="easyui-validatebox" type="text"
									style="width: 200px; height: 25px; margin-right: 40px;"
									name="rdischarging" data-options="required:true"></input></td>
								<td><h3>预计卸货时间:&nbsp;</h3></td>
								<td><input class="easyui-datebox" type="text"
									style="width: 205px; height: 32px; margin-right: 40px;"
									name="rpredeltime" data-options="required:true,editable:false"></input></td>
								<td><h3>实际卸货时间:</h3></td>
								<td><input class="easyui-datebox" type="text"
									style="width: 205px; height: 32px; margin-right: 40px;"
									name="rpradeltime" data-options="required:true,editable:false"></input></td>
							</tr>
							<tr>
								<td><h3>装货形式:</h3></td>
								<td><input class="easyui-validatebox" type="text"
									style="width: 200px; height: 25px; margin-right: 40px;"
									name="rdelived" data-options="required:true"></input></td>
								<td><h3>危险货物类型:</h3></td>
								<td><input class="easyui-validatebox" type="text"
									style="width: 200px; height: 25px; margin-right: 40px;"
									name="rgoodsstyle" data-options="required:true"></input></td>
								<td><h3>危险品重量:</h3></td>
								<td><input class="easyui-validatebox" type="text"
									style="width: 180px; height: 25px; margin-right: 5px;"
									name="rweight" data-options="required:true">吨 </input></td>
							</tr>
							<tr>
								<td><h3>申报日期:</h3></td>
								<td><input class="easyui-datebox"
									style="width: 205px; height: 32px; margin-right: 40px;"
									name="rpettime" data-options="required:true,editable:false"></input></td>
								<td><h3>作业码头:</h3></td>
								<td><input class="easyui-validatebox" type="text"
									style="width: 200px; height: 25px; margin-right: 40px;"
									name="rworkwharf" data-options="required:true"></input></td>
								<td><h3>所属港口:</h3></td>
								<td><input class="easyui-validatebox" type="text"
									style="width: 200px; height: 25px; margin-right: 10px;"
									name="rport" data-options="required:true"></input></td>
							</tr>
							<tr>
								<td><h3>进出口标记:</h3></td>
								<td><select class="easyui-validatebox"
									style="width: 206px; height: 30px; margin-right: 40px;"
									name="rportflag" data-options="required:true">
										<option value=""></option>
										<option value="出口">出口</option>
										<option value="进口">进口</option>
								</select></td>
								<td><h3>现场负责人:</h3></td>
								<td><input class="easyui-validatebox" type="text"
									style="width: 200px; height: 25px; margin-right: 40px;"
									name="rprin" data-options="required:true"></input></td>
								<td><h3>负责人联系方式:</h3></td>
								<td><input class="easyui-validatebox" type="text"
									style="width: 200px; height: 25px; margin-right: 10px;"
									name="rprincall" data-options="required:true"></input></td>
							</tr>
							<tr>
								<td><h3>气味:</h3></td>
								<td><input class="easyui-validatebox" type="text"
									style="width: 200px; height: 25px; margin-right: 40px;"
									name="rodour" data-options="required:true"></input></td>
								<td><h3>燃点:</h3></td>
								<td><input class="easyui-validatebox" type="text"
									style="width: 180px; height: 25px; margin-right: 10px;"
									name="rignitionpoint" data-options="required:true">℃</input></td>
								<td><h3>毒性 :</h3></td>
								<td><input class="easyui-validatebox" type="text"
									style="width: 200px; height: 25px; margin-right: 10px;"
									name="rtoxicity" data-options="required:true"></input></td>
							</tr>
						</table>
						<table style="margin-bottom: 75px" align="center">
							<tr><h1 style="margin-top: 40px" align="center"><font color="red"><=================================================现  场  紧  急  审  批=================================================></font></h1></tr>
							<tr>
								<td ><label>企业信息是否一致:</label></td>
								<td><span class="radioSpan"> <input type="radio"
										name="qscompany" style="margin-left: 20px" value="1">是</input>
										<input type="radio" name="qscompany" value="0">否</input>
								</span></td>
								<td align="right"><label>实际运输船舶是否一致:</label></td>
								<td><span class="radioSpan"> <input type="radio"
										name="qsboat" style="margin-left: 20px" value="1">是</input> <input
										type="radio" name="qsboat" value="0">否</input>
								</span></td>
							</tr>
							<tr>
								<td align="right"><label>危险品类型是否一致:</label></td>
								<td><span class="radioSpan"> <input type="radio"
										name="qsrstyle" style="margin-left: 20px" value="1">是</input>
										<input type="radio" name="qsrstyle" value="0">否</input>
								</span></td>
								<td align="right"><label>危险品封装是否合格:</label></td>
								<td><span class="radioSpan"> <input type="radio"
										name="qspack" style="margin-left: 20px" value="1">是</input> <input
										type="radio" name="qspack" value="0">否</input>
								</span></td>
							</tr>
							<tr>
								<td align="right"><label>危险品重量是否一致:</label></td>
								<td><span class="radioSpan"> <input type="radio"
										name="qsweight" style="margin-left: 20px" value="1">是</input>
										<input type="radio" name="qsweight" value="0">否</input>
								</span></td>
								<td align="right"><label>是否存在泄露:</label></td>
								<td><span class="radioSpan"> <input type="radio"
										name="qsreveal" style="margin-left: 20px" value="0">是</input>
										<input type="radio" name="qsreveal" value="1">否</input>
								</span></td>
							</tr>
							<tr>
								<td align="right"><label>上传图片留证:</label></td>
								<td><input id="qspica" name="qspica"
									style="width: 200px; height: 50px; margin-right: 10px"
									class="easyui-validatebox" data-options="required:true">图1</td>
								<td><input id="qspicb" name="qspicb"
									style="width: 200px; height: 50px; margin-right: 10px"
									class="easyui-validatebox" data-options="required:true">图2</td>
							</tr>
							<tr>
								<td align="right"><label>审核日期:</label></td>
								<td><input class="easyui-datebox" type="text"
									style="width: 150px; height: 30px; margin-left: 30px; margin-right: 10px;"
									name="qsdate" data-options="required:true,editable:false"></input></td>
								<td align="right"><label>审核人:</label></td>
								<td><input id="qspeople" name="qspeople"
									style="width: 150px; height: 23px; margin-right: 10px"
									class="easyui-validatebox" data-options="required:true"></td>
							</tr>
						</table>
					</form>
				</div>
				<div id="dlg-buttons" align="center">
					<a href="javascript:void(0)" class="easyui-linkbutton"
						iconCls="icon-ok" onclick="submitForm()">提交</a> <a
						href="javascript:void(0)" class="easyui-linkbutton"
						iconCls="icon-cancel" style="margin-left: 10px"
						onclick="clearForm()">重置</a>
				</div>
			</div>
		</div>
	</div>

	<!--#########################   详 细 信 息 弹 框 #########################-->
	<div id="detaildlg" class="easyui-dialog" title="危险货物申报详细信息及审批信息"
		data-options="iconCls:'icon-ok',closed:true"
		style="width: 900px; height: 600px;">
		<div class="easyui-tabs">
			<div title="详细信息" style="padding: 10px">
				<div>
					<form id="grid1" method="post" novalidate>
						<table style="margin-top: 40px; margin-bottom: 75px"
							align="center">
							<tr>
								<td align="center"><label>申报编号:</label></td>
								<td><input id="rnum" name="rnum" class="easyui-textbox"
									readonly="true"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"></td>
								<td align="center"><label>申报企业:</label></td>
								<td><input id="rcompany" name="rcompany"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
							</tr>
							<tr>
								<td align="center"><label>申报人:</label></td>
								<td><input id="rpeople" name="rpeople"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
								<td align="center"><label>发货方:</label></td>
								<td><input id="rshipper" name="rshipper"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
							</tr>
							<tr>
								<td align="center"><label>收货方:</label></td>
								<td><input id="rconsignee" name="rconsignee"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
								<td align="center"><label>承运人:</label></td>
								<td><input id="rcarrier" name="rcarrier"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
							</tr>
							<tr>
								<td align="center"><label>运输船名:</label></td>
								<td><input id="rshipname" name="rshipname"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
								<td align="center"><label>装货港:</label></td>
								<td><input id="rportloading" name="rportloading"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
							</tr>
							<tr>
								<td align="center"><label>装货时间:</label></td>
								<td><input id="rloadingtime" name="rloadingtime"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
								<td align="center"><label>卸货港:</label></td>
								<td><input id="rdischarging" name="rdischarging"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
							</tr>
							<tr>
								<td align="center"><label>预计卸货时间:</label></td>
								<td><input id="rpredeltime" name="rpredeltime"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
								<td align="center"><label>实际卸货时间:</label></td>
								<td><input id="rpradeltime" name="rpradeltime"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
							</tr>
							<tr>
								<td align="center"><label>装货形式:</label></td>
								<td><input id="rdelived" name="rdelived"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
								<td align="center"><label>危险货物类型:</label></td>
								<td><input id="rgoodsstyle" name="rgoodsstyle"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
							</tr>
							<tr>
								<td align="center"><label>危险品重量:</label></td>
								<td><input id="rweight" name="rweight"
									style="width: 215px; height: 23px; margin-left: 10px; margin-right: 5px"
									class="easyui-textbox" readonly="true">吨</td>
								<td align="center"><label>申报日期:</label></td>
								<td><input id="rpettime" name="rpettime"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
							</tr>
							<tr>
								<td align="center"><label>作业码头:</label></td>
								<td><input id="rworkwharf" name="rworkwharf"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
								<td align="center"><label>所属港口:</label></td>
								<td><input id="rport" name="rport"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
							</tr>
							<tr>
								<td align="center"><label>进出口标记:</label></td>
								<td><input id="rportflag" name="rportflag"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
								<td align="center"><label>现场负责人:</label></td>
								<td><input id="rprin" name="rprin"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
							</tr>
							<tr>
								<td align="center"><label>负责人联系方式:</label></td>
								<td><input id="rprincall" name="rprincall"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
								<td align="center"><label>气味:</label></td>
								<td><input id="rodour" name="rodour"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
							</tr>
							<tr>
								<td align="center"><label>燃点:</label></td>
								<td><input id="rignitionpoint" name="rignitionpoint"
									style="width: 215px; height: 23px; margin-left: 10px; margin-right: 5px"
									class="easyui-textbox" readonly="true">℃</td>
								<td align="center"><label>毒性:</label></td>
								<td><input id="rtoxicity" name="rtoxicity"
									style="width: 230px; height: 23px; margin-left: 10px; margin-right: 10px"
									class="easyui-textbox" readonly="true"></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
			<div title="一轮审核详情" style="padding: 10px">
				<div>
					<form id="grid2" style="height: 500px;">
						<table style="margin-top: 40px; margin-bottom: 75px"
							align="center">
							<tr>
								<input type="hidden" name="rnum" id="rnum"></input>
								<td align="center"><label>申报企业信息是否合格:</label></td>
								<td><span class="radioSpan" > <input type="radio"
										name="qfcompany" style="margin-left: 20px" value="1" disabled>是</input>
										<input type="radio" name="qfcompany" value="0"  disabled>否</input>
								</span></td>
							</tr>
							<tr>
								<td align="center"><label>危险品种类是否合法:</label></td>
								<td><span class="radioSpan"> <input type="radio"
										name="qfrstyle" style="margin-left: 20px" value="1" disabled>是</input>
										<input type="radio" name="qfrstyle" value="0" disabled>否</input>
								</span></td>
							</tr>
							<tr>
								<td align="center"><label>封装类型是否合格:</label></td>
								<td><span class="radioSpan"> <input type="radio"
										name="qfpack" style="margin-left: 20px" value="1"  disabled>是</input> <input
										type="radio" name="qfpack" value="0" disabled>否</input>
								</span></td>
							</tr>
							<tr>
								<td align="center"><label>单次运输是否超过限重:</label></td>
								<td><span class="radioSpan"> <input type="radio"
										name="qfweight" style="margin-left: 20px" value="1" disabled>是</input>
										<input type="radio" name="qfweight" value="0" disabled>否</input>
								</span></td>
							</tr>
							<tr>
								<td align="center"><label>承运船舶是否合法:</label></td>
								<td><span class="radioSpan"> <input type="radio"
										name="qfboat" style="margin-left: 20px" value="1" disabled>是</input> <input
										type="radio" name="qfboat" value="0" disabled>否</input>
								</span></td>
							</tr>
							<tr>
								<td align="center"><label>审核日期:</label></td>
								<td><input class="easyui-datebox" type="text"
									style="width: 150px; height: 30px; margin-left: 50px; margin-right: 40px;"
									name="qfdate" readonly="true"></input></td>
							</tr>
							<tr>
								<td align="center"><label>审核人:</label></td>
								<td><input id="qfpeople" name="qfpeople" type="text"
									style="width: 150px; height: 23px; margin-right: 10px"
									class="easyui-validatebox"   readonly="true"></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
			<div title="二轮审核详情" style="padding: 10px">
				<div>
					<form id="grid3" style="height: 500px;">
						<table style="margin-top: 40px; margin-bottom: 75px"
							align="center">
							<tr>
								<input type="hidden" name="rnum" id="rnum"></input>
								<td align="center"><label>企业信息是否一致:</label></td>
								<td><span class="radioSpan"> <input type="radio"
										name="qscompany" style="margin-left: 20px" value="1" disabled>是</input>
										<input type="radio" name="qscompany" value="0" disabled>否</input>
								</span></td>
							</tr>
							<tr>
								<td align="center"><label>实际运输船舶是否一致:</label></td>
								<td><span class="radioSpan"> <input type="radio"
										name="qsboat" style="margin-left: 20px" value="1" disabled>是</input> <input
										type="radio" name="qsboat" value="0" disabled>否</input>
								</span></td>
							</tr>
							<tr>
								<td align="center"><label>危险品类型是否一致:</label></td>
								<td><span class="radioSpan"> <input type="radio"
										name="qsrstyle" style="margin-left: 20px" value="1" disabled>是</input>
										<input type="radio" name="qsrstyle" value="0" disabled>否</input>
								</span></td>
							</tr>
							<tr>
								<td align="center"><label>危险品封装是否合格:</label></td>
								<td><span class="radioSpan"> <input type="radio"
										name="qspack" style="margin-left: 20px" value="1" disabled>是</input> <input
										type="radio" name="qspack" value="0" disabled>否</input>
								</span></td>
							</tr>
							<tr>
								<td align="center"><label>危险品重量是否一致:</label></td>
								<td><span class="radioSpan"> <input type="radio"
										name="qsweight" style="margin-left: 20px" value="1" disabled>是</input>
										<input type="radio" name="qsweight" value="0" disabled>否</input>
								</span></td>
							</tr>
							<tr>
								<td align="center"><label>是否存在泄露:</label></td>
								<td><span class="radioSpan"> <input type="radio"
										name="qsreveal" style="margin-left: 20px" value="0" disabled>是</input>
										<input type="radio" name="qsreveal" value="1" disabled>否</input>
								</span></td>
							</tr>
							<tr>
								<td align="center"><label>上传图片留证:</label></td>
								<td><input id="qspica" name="qspica"
									style="width: 200px; height: 50px; margin-right: 10px"
									class="easyui-validatebox"  readonly="true">图1</td>
							</tr>
							<tr>
								<td></td>
								<td><input id="qspicb" name="qspicb"
									style="width: 200px; height: 50px; margin-right: 10px"
									class="easyui-validatebox"  readonly="true">图2</td>
							</tr>
							<tr>
								<td align="center"><label>审核日期:</label></td>
								<td><input class="easyui-datebox" type="text"
									style="width: 150px; height: 30px; margin-left: 30px; margin-right: 10px;"
									name="qsdate"  readonly="true"></input></td>
							</tr>
							<tr>
								<td align="center"><label>审核人:</label></td>
								<td><input id="qspeople" name="qspeople"
									style="width: 150px; height: 23px; margin-right: 10px"
									class="easyui-validatebox"  readonly="true"></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			$('#risk').datagrid({
								pagination : true, //开启分页   
								pageList : [ 10, 20, 30 ], //设置每页记录条数的列表
								url : "/firstssm/info/riskgoodsearchRid",
								columns : [ [
										{
											field : 'rurgents',
											title : '是否紧急审核',
											width : 100,
											align : 'center',
											sortable : true,
											styler : function(value, row, index) {
												if (value == '是') {
													return 'background-color:#FF0000;';
												} else
													(value == '否')
												return '';
											}
										},
										{
											field : 'rnum',
											title : '申报编号',
											width : 100,
											align : 'center',
											sortable : true
										},
										{
											field : 'rcompany',
											title : '申报企业',
											width : 200,
											align : 'center',
											sortable : true
										},
										{
											field : 'rgoodsstyle',
											title : '危险品类型',
											width : 150,
											align : 'center',
											sortable : true
										},
										{
											field : 'rprin',
											title : '企业负责人',
											width : 100,
											align : 'center',
											sortable : true
										},
										{
											field : 'rprincall',
											title : '负责人联系方式',
											width : 150,
											align : 'center',
											sortable : true
										},
										{
											field : 'type',
											title : '审核状态',
											width : 100,
											align : 'center',
											sortable : true,
											styler : function(value, row, index) {
												if (value == '已通过') {
													return 'background-color:#00bb00;';
												} else if (value == '审核中...') {
													return 'background-color:#6495ED;';
												} else if(value =='未审核'){
													return 'background-color:#EEB422;';	
												}else (value == '未通过')
													return 'background-color:#FF0000;';
											}
										},
										{
											field : 'rfa',
											title : '操作信息',
											width : 200,
											align : 'center',
											formatter : function(value, row,
													index) {
												var a = '<a href="#" class="easyui-linkbutton" style="width: 90px" onclick="detail()">详细信息</a> ';
												return a;
											}
										} ] ]
							});
		});
		/* 详细信息弹框 */
		function detail() {
			var Row = $("#risk").datagrid('getSelected');
			if (Row != null) {
				$('#detaildlg').dialog('open').dialog('center');
				$.post('/firstssm/info/riskgoodsearch2', {
					rnum : Row.rnum
				}, function(result) {

					var data = eval('(' + result + ')');
					/* console.info(data[0].rshipper); */
					$('#grid1').form('load', {
						rnum : data[0].rnum,
						rcompany : data[0].rcompany,
						rpeople : data[0].rpeople,
						rshipper : data[0].rshipper,
						rconsignee : data[0].rconsignee,
						rcarrier : data[0].rcarrier,
						rshipname : data[0].rshipname,
						rportloading : data[0].rportloading,
						rloadingtime : data[0].rloadingtime,
						rdischarging : data[0].rdischarging,
						rpredeltime : data[0].rpredeltime,
						rpradeltime : data[0].rpradeltime,
						rdelived : data[0].rdelived,
						rgoodsstyle : data[0].rgoodsstyle,
						rweight : data[0].rweight,
						rpettime : data[0].rpettime,
						rworkwharf : data[0].rworkwharf,
						rport : data[0].rport,
						rportflag : data[0].rportflag,
						rprin : data[0].rprin,
						rprincall : data[0].rprincall,
						rodour : data[0].rodour,
						rignitionpoint : data[0].rignitionpoint,
						rtoxicity : data[0].rtoxicity,
					});
					$('#grid2').form('load', {
						rnum : data[0].rnum,
						rcompany:data[0].rcompany,
						qfcompany:data[0].qfcompany,
						qfrstyle:data[0].qfrstyle,
						qfpack:data[0].qfpack,
						qfweight:data[0].qfweight,
						qfboat:data[0].qfboat,
						qfdate:data[0].qfdate,
						qfpeople:data[0].qfpeople
					});
					$('#grid3').form('load', {
						rnum : data[0].rnum,
						rcompany:data[0].rcompany,
						qscompany:data[0].qscompany,
						qsboat:data[0].qsboat,
						qsrstyle:data[0].qsrstyle,
						qspack:data[0].qspack,
						qsweight:data[0].qsweight,
						qsreveal:data[0].qsreveal,
						qspica:data[0].qspica,
						qspicb:data[0].qspicb,
						qsdate:data[0].qsdate,
						qspeople:data[0].qspeople,
					});
				});
			}
		}
		/* 紧急审批现场审核 */
		function submitForm() {
			$('#risk1').form('submit', {
				url : "/firstssm/info/riskgoods3",
				onSubmit : function() {
					return $(this).form("validate");
				},
				success : function(result) {
					if (result.errorMsg) {
						$.messager.alert("系统提示", "保存失败");
					} else {
						$.messager.alert("系统提示", "保存成功！");
						$("#risk1").form('clear');
					}
					
				}
			});
		}
		function clearForm() {
			$('#risk1').form('clear');
		}
		
		

		/* 刷新 */
		function reload() {
			$("#risk").datagrid("reload")
		}

		/* 现场紧急申报审批 */
		function urgency() {
			$('#detaildlg').dialog('open').dialog('center').dialog('setTitle',
					'现场紧急申报审批表');
		}

		/* 查询栏 */
		/* function doSearch(value, name) {
			$('#risk').datagrid('load', {
				name : name,
				value : value
			}); */
	</script>
</body>