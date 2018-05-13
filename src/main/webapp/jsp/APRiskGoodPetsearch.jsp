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

	<table id="risk" class="easyui-datagrid"
		data-options="rownumbers:true,singleSelect:true,toolbar:'#tb',autoRowHeight:true,">
	</table>
	<div id="tb" style="padding: 5px; height: auto">
		<div style="margin-bottom: 5px; margin-left: 10px">
			<a href="#" class="easyui-linkbutton" iconCls="icon-reload"
				plain="true" onclick="reload()">刷新</a> <a href="#"
				class="easyui-linkbutton" iconCls="icon-cancel" plain="true"
				onclick="cancel()" style="margin-right: 300px">删除</a>
			选择查找类型：<select id="id" name="id" >
				<option value="">全查询</option>
				<option value="1">紧急申报</option>
				<option value="2">未审核</option>
				<option value="3">审核中</option>
				<option value="4">已通过</option>
				<option value="5">未通过</option>
			</select> <button id="btn" href="#" class="easyui-linkbutton"  onclick="dosearch()">搜    索</button>
		</div>
	</div>
	<!-- 弹窗显示危险货物信息及两轮审核 -->
	<div id="detaildlg" class="easyui-dialog" title="危险货物申报详细信息"
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
								<td><span class="radioSpan"> <input type="radio"
										name="qfcompany" style="margin-left: 20px" value="1" disabled>是</input>
										<input type="radio" name="qfcompany" value="0" disabled>否</input>
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
										name="qfpack" style="margin-left: 20px" value="1" disabled>是</input>
										<input type="radio" name="qfpack" value="0" disabled>否</input>
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
										name="qfboat" style="margin-left: 20px" value="1" disabled>是</input>
										<input type="radio" name="qfboat" value="0" disabled>否</input>
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
									class="easyui-validatebox" readonly="true"></td>
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
										name="qsboat" style="margin-left: 20px" value="1" disabled>是</input>
										<input type="radio" name="qsboat" value="0" disabled>否</input>
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
										name="qspack" style="margin-left: 20px" value="1" disabled>是</input>
										<input type="radio" name="qspack" value="0" disabled>否</input>
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
									class="easyui-validatebox" readonly="true">图1</td>
							</tr>
							<tr>
								<td></td>
								<td><input id="qspicb" name="qspicb"
									style="width: 200px; height: 50px; margin-right: 10px"
									class="easyui-validatebox" readonly="true">图2</td>
							</tr>
							<tr>
								<td align="center"><label>审核日期:</label></td>
								<td><input class="easyui-datebox" type="text"
									style="width: 150px; height: 30px; margin-left: 30px; margin-right: 10px;"
									name="qsdate" readonly="true"></input></td>
							</tr>
							<tr>
								<td align="center"><label>审核人:</label></td>
								<td><input id="qspeople" name="qspeople"
									style="width: 150px; height: 23px; margin-right: 10px"
									class="easyui-validatebox" readonly="true"></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function dosearch() {
			/* var id=$('#id').combobox.('getValue'); */
			var id=$("#id option:selected").val(); 
			$("#risk").datagrid('load', {
				id : id
			});
		}

		$(function() {
			$('#risk')
					.datagrid(
							{
								pagination : true, //开启分页
								pageList : [ 10, 20, 30 ], //设置每页记录条数的列表
								url : "/firstssm/info/riskgoodsearch1",
								
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
											width : 200,
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
												} else if (value == '未审核') {
													return 'background-color:#EEB422;';
												} else
													(value == '未通过')
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
						rcompany : data[0].rcompany,
						qfcompany : data[0].qfcompany,
						qfrstyle : data[0].qfrstyle,
						qfpack : data[0].qfpack,
						qfweight : data[0].qfweight,
						qfboat : data[0].qfboat,
						qfdate : data[0].qfdate,
						qfpeople : data[0].qfpeople
					});
					$('#grid3').form('load', {
						rnum : data[0].rnum,
						rcompany : data[0].rcompany,
						qscompany : data[0].qscompany,
						qsboat : data[0].qsboat,
						qsrstyle : data[0].qsrstyle,
						qspack : data[0].qspack,
						qsweight : data[0].qsweight,
						qsreveal : data[0].qsreveal,
						qspica : data[0].qspica,
						qspicb : data[0].qspicb,
						qsdate : data[0].qsdate,
						qspeople : data[0].qspeople,
					});
				});
			}
		}

		/* 刷新 */
		function reload() {
			$("#risk").datagrid("reload")
		}
		/* 删除 */
		function cancel() {
			var row = $('#risk').datagrid('getSelected');
			if (row) {
				$.messager.confirm("系统提示", "您确定要删除这条记录吗?", function(r) {
					if (r) {
						$.post('/firstssm/info/deleteriskgoodsInfo', {
							rnum : row.rnum
						}, function(data) {
							if (data.success) {
								$.messager.alert("系统提示", "操作成功!");
								$('#risk').datagrid('reload');
							} else {
								$.messager.alert("系统提示", data.errorMsg);
							}
						}, 'json');
					}
					$('#risk').datagrid('reload');
				});
				$("#risk").datagrid("reload")
			}
		}
		/* 查询栏 */
		/* function doSearch(value, name) {
			$('#risk').datagrid('load', {
				name : name,
				value : value
			}); */
	</script>
</body>