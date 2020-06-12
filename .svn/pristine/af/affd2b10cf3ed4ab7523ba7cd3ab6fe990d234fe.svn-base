function findpro(){
	var classid = $("#classid").val();
	var productname = $("#productname").val();
	var specifications = $("#specifications").val(); 
	$.ajax({
		method:"post",
		url:"sup/getResourceBybill",
		data:{classid:classid,productname:productname,specifications:specifications,},
        dataType:"json"
	}).done(function(msg){
		console.log(msg);
		for(var i in msg ){
			$("#billtab").append("<tr><td>"+msg[i].classid+"</td><td>"+msg[i].productname+"</td><td>"+msg[i].originplace+"</td><td>"+msg[i].specifications+"</td><td>"+msg[i].grade+"</td><td>"+msg[i].inventory+"</td><td>"+msg[i].price+"</td><td>RMB</td><td>"+msg[i].sf+"</td><td>"+msg[i].storehouse+"</td><td>多放辣椒</td><td><a class='btn04 w80' href='javascript:;' onclick='addbidding(this,"+msg[i].productid+")'>加入报价单</a></td></tr>")
              
		}
	})
}

function addbidding(thistr,productid){
	var tr = thistr.parentNode.parentNode;
	$("#billtab>tr").eq(tr.rowIndex-1).remove();
	
	$.ajax({
		method:"post",
		url:"sup/newbidding",
		data:{productid:productid,},
		dataType:"json"
		
	}).done(function(msg){
			$("#bill").append("<tr><td><input type='hidden' value="+msg.detail.detailsid+" name='detailid'/>"+msg.detail.freshProduct.classid+"</td><td>"+msg.detail.freshProduct.productname+"</td><td>"+msg.detail.freshProduct.originplace+"</td><td>"+msg.detail.freshProduct.specifications+"</td><td>"+msg.detail.freshProduct.grade+"</td><td>"+msg.detail.freshProduct.inventory+"</td><td>"+msg.detail.freshProduct.price+"</td><td>RMB</td><td>"+msg.detail.freshProduct.sf+"</td><td>"+msg.detail.freshProduct.storehouse+"</td><td>多放辣椒</td><td><a class='btn04 w80' href='javascript:;' onclick='delbidding(this)'>删除</a></td></tr>")
	})
	
	
}

function delbidding(thistr){
	var tr = thistr.parentNode.parentNode;
	$("#bill>tr").eq(tr.rowIndex-1).remove();
}














