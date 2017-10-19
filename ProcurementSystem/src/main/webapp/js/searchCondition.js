$(function(){
	if(pageId==2004){
		showSupplierBox();
	}
	$.ajax({
		data:{
			"userId":userId,
			"pageId":pageId
		},  
		type:"POST",  
		dataType: 'json',
	    url:"../search/getSelectedCondition",
	    success:function(data){
	    		//初始化搜索条件
	    		for(var i=data.length-1;i>-1;i--){
	    			var addId="#search-"+data[i].fieldId.toString();
	    			$("#search-0").after("<tr class=\"row-search\" id=\"search-" + data[i].fieldId + "\">"
			      			+"<td class=\"col-search1\" id=\"search-cond" + data[i].fieldId + "\">"
			      			+"<select id=\"cond-" + data[i].fieldId + "\" onclick=\"findOtherCondition("+userId+","+pageId+","+data[i].fieldId+",'"+data[i].fieldName+"');\" onchange=\"changeCond("+data[i].fieldId+");\">"
			      			+"<option value=\"2345678\">" + data[i].fieldName + "</option>"
			      			+"</select>"
			      			+"</td>"
			      			+"<td class=\"col-search2\">"
				      			+"<a id=\"plus"+data[i].fieldId+"\" href=\"javascript:addCondition('"+addId+"');\">" 
			      				+"<span class=\"glyphicon glyphicon-plus-sign blue"
								+"aria-hidden=\"true\"></span></a> &nbsp;"
			      				+"<a id=\"minus"+data[i].fieldId+"\" href=\"javascript:deleteCondition("+data[i].fieldId+");\">" 
			      				+"<span class=\"glyphicon glyphicon-minus-sign blue minus-sign"
								+"aria-hidden=\"true\"></span></a>"
							+"</td>"
			      			+"</tr>"
	    			);
	    			supplierDistribute(data[i].fieldName, "#search-cond"+data[i].fieldId);
	    		}
	   	},
	    error:function(data){
	    		alert("数据库错误！")
	    }  
	});
	//初始化搜索结果
	if(content==""||content==null){
		reset();
	}else{
		search();
	}
	action();
});

// 重置按钮对应功能 根据不同pageId调用不同的方法
function reset(){
	if(pageId=='2004'){
		resetSupplier();
	}
}

// 搜索按钮对应功能 根据不同pageId调用不同的方法
function search(){
	if(pageId=='2004'){
		searchSupplier();
	}
}

// 添加搜索结果下的操作栏 － 管理／创建
function action(){
	if(pageId=='2004'){
		actionSupplier();
	}
}

//＋功能实现：在特定位置增加搜素条件
function addCondition(place){
	//获得某位置的原始fieldId，之后搜索得到其当前位置
	var fieldId = place.split("-")[1];
	$.ajax({
		data:{
			"userId":userId,
			"pageId":pageId,
			"fieldId":fieldId
		},  
		type:"POST",  
		dataType: 'json',
		// 获得剩余搜索条件中排在第一个的条件
	    url:"../search/addSearchCondition",
	    success:function(data){
	    		console.log(data);
	      	var addId="#search-"+data.fieldId.toString();
	      	$(place).after("<tr class=\"row-search\" id=\"search-" + data.fieldId + "\">"
		      			+"<td class=\"col-search1\" id=\"search-cond" + data.fieldId + "\">"
		      			+"<select id=\"cond-" + data.fieldId + "\" onclick=\"findOtherCondition("+userId+","+pageId+","+data.fieldId+",'"+data.fieldName+"');\" onchange=\"changeCond("+data.fieldId+");\">"
		      			+"<option value=\"2345678\">" + data.fieldName + "</option>"
		      			+"</select>"
		      			+"</td>"
		      			+"<td class=\"col-search2\">"
			      			+"<a id=\"plus"+data.fieldId+"\" href=\"javascript:addCondition('"+addId+"');\">" 
		      				+"<span class=\"glyphicon glyphicon-plus-sign blue"
							+"aria-hidden=\"true\"></span></a> &nbsp;"
		      				+"<a id=\"minus"+data.fieldId+"\" href=\"javascript:deleteCondition("+data.fieldId+");\">" 
		      				+"<span class=\"glyphicon glyphicon-minus-sign blue minus-sign"
							+"aria-hidden=\"true\"></span></a>"
						+"</td>"
		      			+"</tr>"
	      	);
	      	supplierDistribute(data.fieldName, "#search-cond"+data.fieldId);
	   	},
	    error:function(data){
	    		alert("无更多搜索条件！")
	    }  
	});
}

//－功能实现：删除某筛选条件
function deleteCondition(fieldId){
	$.ajax({
		data:{
			"userId":userId,
			"pageId":pageId,
			"fieldId":fieldId
		},  
		type:"POST",  
		dataType: 'json',
	    url:"../search/delSearchCondition",
	    success:function(data){
	      	$("#search-"+fieldId).remove();
	   	},
	    error:function(data){
	    		alert("数据库错误！")
	    }  
	});
}

//点击选择框时，自动加载其它未显示搜索条件
function findOtherCondition(userId, pageId, fieldId, fieldName){
	$.ajax({
		data:{
			"userId":userId,
			"pageId":pageId
		},  
		type:"POST",  
		dataType: 'json',
	    url:"../search/findOtherCondition",
	    success:function(data){
	      	console.log(data.length);
	      	console.log(data);
	      	if(document.getElementById("cond-"+fieldId).options.length!=1){
	      		$("#cond-"+fieldId).empty();
	      		$("#cond-"+fieldId).append("<option>"+fieldName+"</option>");
	      	};
	      	var value = "";
	      	for(i=0;i<data.length;i++){
	      		value = data[i].fieldId + "_" + data[i].fieldName;
	      		$("#cond-"+fieldId).append("<option value='"+value+"'>"+data[i].fieldName+"</option>");
	      	}
	   	},
	    error:function(data){
	    		alert("数据库错误！")
	    }  
	});
}

//改变搜索条件
function changeCond(originId){
	var value = $("#cond-"+originId).val();
	var newId = value.split("_")[0];
	var newName = value.split("_")[1];
	var newPlace = "#search-"+newId;
	var place = "#search-"+originId;
	
	// 通过ajax实现改变搜索条件数据，并删除原始数据
	$.ajax({
		data:{
			"userId":userId,
			"pageId":pageId,
			"newId":newId,
			"originId":originId
		},  
		type:"POST",  
		dataType: 'json',
	    url:"../search/changeSearchCondition",
	    success:function(data){
	      	console.log(data);
	      	var addId="#search-"+data.fieldId;
	      	supplierDistribute(data.fieldName, "#search-cond"+data.fieldId);
	   	},
	    error:function(data){
	    		alert("数据库错误！")
	    }  
	});
	
	// 改变td
	document.getElementById("search-"+originId).id="search-"+newId;
	document.getElementById("search-cond"+originId).id="search-cond"+newId;
	$("#search-cond"+newId).empty();
	$("#search-cond"+newId).append("<select id=\"cond-" + newId + "\" onclick=\"findOtherCondition("+userId+","+pageId+","+newId+",'"+newName+"');\" onchange=\"changeCond("+newId+");\">"
			+"<option>" + newName + "</option>"
			+"</select>"
			);
	// 改变＋－符号对应内容
	document.getElementById("plus"+originId).id="plus"+newId;
	document.getElementById("minus"+originId).id="minus"+newId;
	$("#plus"+newId).attr("href", "javascript:addCondition("+newPlace+")");
	$("#minus"+newId).attr("href", "javascript:deleteCondition("+newId+")");
}

// 供应商相关
// 搜索供应商 （除了商品外可以搜索）
function searchSupplier(){
	var content = $("#content").val();
	var approveState = $("#approveState").val();
	var isClient = $('input[name="isClient"]:checked ').val();
	var isSupplier = $('input[name="isSupplier"]:checked ').val();
	var name = $("#name").val();
	var creator = $("#creator").val();
	if(approveState==null){approveState="";}
	if(isClient==null){isClient="";}
	if(isSupplier==null){isSupplier="";}
	if(name==null){name="";}
//	console.log(content);
//	console.log(approveState);
//	console.log(isClient);
//	console.log(name);
//	console.log(isSupplier);
//	console.log(creator);
	$.ajax({
		data:{
			"name":name,
			"approveState":approveState,
			"content":content,
			"isClient":isClient,
			"isSupplier":isSupplier
		},  
		type:"POST",  
		dataType: 'json',
	    url:"../search/supplierSearch",
	    success:function(data){
	      	if(data.length!=0){
		      	$("#numOfResults").text(data.length);
		      	var results = "";
		      	for(var i = 0; i< data.length; i++){
		      		results=results+"<tr>"
									+"<td style=\"padding: 5px;\">"
									+"<input type=\"checkbox\" id=\"chk-searching-s"+i+"\" class=\"chk\" />"
									+"<label for=\"chk-searching-s"+i+"\"></label>"
									+"</td>"
									+"<td style=\"width: 20%;\">"
									+"<a href=\"../supplier/supplierDetail?id="+data[i].uniqueName+"\">"+data[i].name+"</a></td>"
									+"<td style=\"width: 20%;\">SU"+data[i].uniqueName+"</td>"
									+"<td style=\"width: 15%;\">"+data[i].approveState+"</td>"
									+"<td style=\"width: 15%;\">"+data[i].isSupplier+"</td>"
									+"<td style=\"width: 15%;\">"+data[i].isClient+"</td>"
									+"<td style=\"width: 10%; padding: 3px;\">"
										+"<div class=\"btn-group\" align=\"right\">"
											+"<button class=\"btn-m\" data-toggle=\"dropdown\">操作&nbsp;<span class=\"caret\"></span></button>"
											+"<ul class=\"dropdown-menu manu-btn-o\">"
												+"<li><a class=\"manu-btn\" href=\"\">停用</a></li>"
											+"</ul>"
										+"</div>"
									+"</td>"
								+"</tr>";
		      	};
	      	}else{
	      		$("#numOfResults").text(0);
	      		var results = "<tr id=\"no-result\">"
							+"<td colspan=\"7\" class=\"no-item f-13 grey\">请在上面输入搜索条件，然后单击<b>搜索</b></td>"
						+"</tr>";
	      	}
	      	$("#result-content").empty();
	      	$("#result-content").append("<table class=\"table table-hover\">"+results+"</table>");
	    },
	    error:function(data){
	    		console.log(data);
	    		alert("数据库错误！")
	    }  
	});
}

// 重置供应商搜索结果
function resetSupplier(){
	// empty all search field
	$("#content").val("");
	$("#name").val("");
	$("#creator").val("");
	$('#isClient3').prop('checked', true);
	$('#isSupplier3').prop('checked', true);
	$("#approveState").val("无选择");
	// empty number of results
	$("#numOfResults").text(0);
	//set result-content to original state
	$("#result-content").empty();
  	$("#result-content").append("<table class=\"table table-hover\">"
  			+"<tr id=\"no-result\">"
			+"<td colspan=\"7\" class=\"no-item f-13 grey\">请在上面输入搜索条件，然后单击<b>搜索</b></td>"
			+"</tr>"
  			+"</table>");
}

// 显示供应商搜索结果表头
function showSupplierBox(){
	$("#result-title").append("<table class=\"table table-hover\">"
						+"<tr class=\"standard-row1\">"
							+"<td style=\"padding: 5px;\">"
								+"<input type=\"checkbox\" id=\"chk-searching-s0\" class=\"chk\" />" 
								+"<label for=\"chk-searching-s0\"></label>"
							+"</td>"
							+"<td style=\"width: 20%;\">组织名称</td>"
							+"<td style=\"width: 20%;\">系统标识符</td>"
							+"<td style=\"width: 15%;\">审批状态</td>"
							+"<td style=\"width: 15%;\">供应商</td>"
							+"<td style=\"width: 15%;\">客户</td>"
							+"<td style=\"width: 10%;\"></td>"
						+"</tr>"
					+"</table>"
			);
}

// 显示供应商搜索结果最后一行操作栏
function actionSupplier(){
	$("#result-action").append("<table class=\"table table-hover\">"
						+"<tr class=\"standard-row3\">"
							+"<td colspan=\"7\"><a class=\"arrow-turn\">&#8627;</a>"
								+"<button class=\"btn-w\">管理</button> ｜"
								+"<div class=\"btn-group\">"
									+"<button class=\"btn-w\" data-toggle=\"dropdown\">"
										+"新建&nbsp;<span class=\"caret\"></span>"
									+"</button>"
									+"<ul class=\"dropdown-menu manu-btn-o\">"
										+"<li><a class=\"manu-btn\" onclick=\"window.location.href='supplierCreation'\">供应商</a></li>"
										+"<li><a class=\"manu-btn\">客户</a></li>"
									+"</ul>"
								+"</div>"
							+"</td>"
						+"</tr>"
					+"</table>"
			);
}

function supplierDistribute(fieldName, place){
	//alert(supplierSearchInfo);
	if(fieldName=="客户"){client(place, supplier_isClient)};
	if(fieldName=="供应商"){supplier(place, supplier_isSupplier)};
	if(fieldName=="组织名称"){organizationName(place, supplier_name)};
	if(fieldName=="审批状态"){approveState(place, supplier_approveState)};
	if(fieldName=="帐户所有者"){owner(place, null)};
	if(fieldName=="供应的商品"){commoditiesProvided(place)};
}

function client(place, value){
	$(place).append("&nbsp;&nbsp;<label><input type=\"radio\" id=\"isClient1\" name=\"isClient\"  value=\"是\">&nbsp;是&nbsp;</label>"
			   +"&nbsp;&nbsp;<label><input type=\"radio\" id=\"isClient2\" name=\"isClient\"  value=\"否\">&nbsp;否&nbsp;</label>"
			   +"&nbsp;&nbsp;<label><input type=\"radio\" id=\"isClient3\" name=\"isClient\"  value=\"是或否\" checked>&nbsp;是或否&nbsp;</label>");
	$("#isClient_"+value).attr("checked",true);
}

function supplier(place, value){
	$(place).append("&nbsp;&nbsp;<label><input type=\"radio\" name=\"isSupplier\" id=\"isSupplier1\" value=\"是\">&nbsp;是&nbsp;</label>"
				   +"&nbsp;&nbsp;<label><input type=\"radio\" name=\"isSupplier\" id=\"isSupplier2\"  value=\"否\">&nbsp;否&nbsp;</label>"
				   +"&nbsp;&nbsp;<label><input type=\"radio\" name=\"isSupplier\" id=\"isSupplier3\"  value=\"是或否\"checked>&nbsp;是或否&nbsp;</label>");
	$("#isSupplier_"+value).attr("checked",true);
}

function organizationName(place, value){
	$(place).append("&nbsp;<input class=\"input\" style=\"padding-left:10px;\" id=\"name\" value=\""+ value +"\"/>");
}

function approveState(place, value){
	$(place).append("&nbsp;<select id=\"approveState\">"
			+"<option value=\"无选择\">无选择</option>"
			+"<option value=\"已批准\">已批准</option>"
			+"<option value=\"未批准\">未批准</option>"
			+"<option value=\"已拒绝\">已拒绝</option>"
			+"<option value=\"注册中\">注册中</option>"
			+"<option value=\"重新提交以进行审批\">重新提交以进行审批</option>"
			+"</select>");
}

function commoditiesProvided(place, value){
	$(place).append("  [ <a>选择</a> ]");
}

function owner(place, value){
	$(place).append("&nbsp;<input style=\"padding-left:10px;\" class=\"input\" id=\"creator\"/>");
}