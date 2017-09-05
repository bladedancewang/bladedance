//jqGrid的配置信息
$.jgrid.defaults.width = 1000;
$.jgrid.defaults.responsive = true;
$.jgrid.defaults.styleUI = 'Bootstrap';

//工具集合Tools
window.T = {};

// 获取请求参数
// 使用示例
// location.href = http://localhost:8080/index.html?id=123
// T.p('id') --> 123;
var url = function(name) {
	var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
	var r = window.location.search.substr(1).match(reg);
	if(r!=null)return  unescape(r[2]); return null;
};
T.p = url;

//全局配置
$.ajaxSetup({
	dataType: "json",
	contentType: "application/json",
	cache: false
});

//权限判断
function hasPermission(permission) {
    if (window.parent.permissions.indexOf(permission) > -1) {
        return true;
    } else {
        return false;
    }
}

//重写alert
window.alert = function(msg, callback){
	parent.layer.alert(msg, function(index){
		parent.layer.close(index);
		if(typeof(callback) === "function"){
			callback("ok");
		}
	});
}

//重写confirm式样框
window.confirm = function(msg, callback){
	parent.layer.confirm(msg, {btn: ['确定','取消']},
	function(){//确定事件
		if(typeof(callback) === "function"){
			callback("ok");
		}
	});
}

//选择一条记录
function getSelectedRow() {
    var grid = $("#jqGrid");
    var rowKey = grid.getGridParam("selrow");
    if(!rowKey){
    	alert("请选择一条记录");
    	return ;
    }
    
    var selectedIDs = grid.getGridParam("selarrrow");
    if(selectedIDs.length > 1){
    	alert("只能选择一条记录");
    	return ;
    }
    
    return selectedIDs[0];
}

//选择多条记录
function getSelectedRows() {
    var grid = $("#jqGrid");
    var rowKey = grid.getGridParam("selrow");
    if(!rowKey){
    	alert("请选择一条记录");
    	return ;
    }
    
    return grid.getGridParam("selarrrow");
}

var searchInList = function(list, compareKey, compareValue, returnKey) {
	for (var i = 0; i < list.length; i++) {
		if (list[i][compareKey] == compareValue)
			return list[i][returnKey] ? list[i][returnKey] : '';
	}
	return '';
};

var searchItem = function(list, compareKey, compareValue) {
	for (var i = 0; i < list.length; i++) {
		if (list[i][compareKey] == compareValue)
			return list[i];
	}
	return null;
};

jQuery.fn.extend({
	/**
	 *
	/**
	 * 有特殊需求实现自己的插件, 返回注释处理在sourceResolver里写,
	 * labelFormatter是格式化显示label和value的处理,
	 * callBack是选中下拉选项后的选项回调 
	 */
	_autoList : function(options) {
		var el = this;
		var defaults = {
			key : 'key',
			enterActive : false,
			dataType : 'json',
			paramsMethod : function(el) {
				return {};
			},
			data : {
				page : 1,
				limit : 10
			},
			sourceResolver : function(data) {
				return data;
			},
			labelFormatter : function(item) {
				return item;
			},
			callBack : function(event, ui, el) {
				
			}
		};
		var _options = jQuery.extend(true, defaults, options);
		this.autocomplete({
			enterActive : _options['enterActive'],
			source : function(request, response) {
				var params = _options.paramsMethod(el);
				params[_options['key']] = request.term;
				jQuery.ajax({
					url : _options['url'],
					dataType : _options['dataType'],
					data : jQuery.extend(true, _options['data'], params),
					success : function(data) {
						response($.map(_options['sourceResolver'](data), function(item) {
							// 返回  [{label : '', value : 11}]
							return _options['labelFormatter'](item);
						}));
					}
				});
			},
			select : function(event, ui) {
				_options['callBack'](event, ui, el);
			}
		});
		return this;
	}	
});