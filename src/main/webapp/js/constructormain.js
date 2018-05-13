(function(){  
    grid = $('#tt').datagrid({  
        pageSize:15,  
        pageList:[15,30,60,90],  
        fit: true,//自动大小    
        rownumbers:true,//行号   
        url:'/constructorinfo',  
        //loadMsg:'数据装载中......',    
        singleSelect:true,//单行选取  
        pagination:true,//显示分页  
        toolbar:[{  
            text:'新增',  
            iconCls:'icon-add',  
            handler:newContact  
        },'-',{  
            text:'修改',  
            iconCls:'icon-edit',  
            handler:editContact  
        },'-',{  
            text:'删除',  
            iconCls:'icon-remove',  
            handler:delContact  
        },'-',{  
            text:'查询',  
            iconCls:'icon-search'  
        }]  
    });  
    //设置分页控件   
    var p = grid.datagrid('getPager');   
    $(p).pagination({   
        pageSize: 15,//每页显示的记录条数，默认为10   
        pageList: [15,30,60,90],//可以设置每页记录条数的列表   
        //beforePageText: '第',//页数文本框前显示的汉字   
        //afterPageText: '页    共 {pages} 页',   
        //displayMsg: '当前显示 {from} - {to} 条记录   共 {total} 条记录',   
    });   
    $('#btn-save,#btn-cancel').linkbutton();  
    win = $('#contact-window').window({  
        closed:true  
    });  
    form = win.find('form');  
});  
  
var grid;  
var win;  
var form;  
  
function newContact(){  
    win.window('open');  
    form.form('clear');  
    form.url = '/demo/contact/save';  
}  
function editContact(){  
    var row = grid.datagrid('getSelected');  
    if (row){  
        win.window('open');  
        form.form('load',row);  
        form.url = '/demo/contact/update/'+row.id;  
    } else {  
        $.messager.show({  
            title:'警告',   
            msg:'请先选择通讯记录。'  
        });  
    }  
}  
  
function saveContact(){  
    form.form('submit', {  
        url:form.url,  
        success:function(data){  
            eval('data='+data);  
            if (data.success){  
                grid.datagrid('reload');  
                win.window('close');  
            } else {  
                $.messager.alert('错误',data.msg,'error');  
            }  
        }  
    });  
}  
  
function delContact(){  
    var row = grid.datagrid('getSelected');  
    if (row){  
        $.messager.confirm('Confirm', '您确定要删除该数据吗?', function(r) {  
            if (r){  
             $.post('/demo/contact/destroy', { id: row.id },   
                    function(result) {  
                      if (result.success) {  
                          grid.datagrid('reload');  
                        } else {  
                            $.message.show({  
                                title: 'Error',  
                                msg: result.msg  
                            });  
                        }  
                    },  
                  'json');  
            }  
        });  
    } else {  
        $.messager.show({  
            title:'警告',   
            msg:'请先选择通讯记录。'  
        });  
    }  
}  
function closeWindow(){  
    win.window('close');  
}  