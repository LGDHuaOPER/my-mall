 $(function(){ 

$(".main-left li:eq(0)").click(function(){
	 window.location.href='jsp/admin.jsp';
})	
$(".main-left li:eq(1)").click(function(){
	 window.location.href='jsp/admin-goods.jsp';
})		 
$(".main-left li:eq(2)").click(function(){
	 window.location.href='jsp/admin-orders.jsp';
})	 
	 
/*用户管理   全选事件*/
$("#select-all").click(function(){ 
if($("#select-all").prop("checked")==true){
$(".users-li input").prop("checked",true);
}else{$(".users-li input").prop("checked",false);
}
});	 
	 
/*用户管理  单个删除操作*/
$(".users-li .delete").click(function(){
	$(this).parent('span').parent('li').css("display",'none');
   var delete_user=$(this).parent('span').parent('li').find('.id').text()+","+$(this).parent('span').parent('li').find('.name').text();    
    $("#delete_user").focus();
   $("#delete_user").val(delete_user);
    $("#delete_user").blur();   
});	 

/*用户管理     批量删除操作*/
$(".delete-select").click(function(){
$("#select-all").prop("checked",false); 
$(".users li").each(function(index){ 
 if( $(this).find('input').prop("checked")==true){
 $(this).find('.delete').click();
 }
})
});


/*商品管理   全选事件*/
$("#select-all2").click(function(){ 
if($("#select-all2").prop("checked")==true){
$(".goods-li input").prop("checked",true);
}else{$(".goods-li input").prop("checked",false);
}
});

/*商品管理  单个删除操作*/
$(".goods-li .delete").click(function(){
	$(this).parent('span').parent('li').css("display",'none');
   var delete_goods=$(this).parent('span').parent('li').find('.id').text();    
    $("#delete_goods").focus();
   $("#delete_goods").val(delete_goods);
    $("#delete_goods").blur();   
});


/*商品管理     批量删除操作*/
$(".delete-select2").click(function(){
$("#select-all2").prop("checked",false); 
$(".goods-content li").each(function(index){ 
 if( $(this).find('input').prop("checked")==true){
 $(this).find('.delete').click();
 }
})
});



/*商品管理    更改操作*/
$(".goods-li .update").click(function(){
$(".hidden").css("display","block"); 
$(this).parent('span').parent('li').addClass('active');
var id=$(this).parent('span').parent('li').find('.id').text();
var name=$(this).parent('span').parent('li').find('.name').text();
var describe=$(this).parent('span').parent('li').find('.describe').text(); 
var imgaddress=$(this).parent('span').parent('li').find('.imgaddress').text();
var price=$(this).parent('span').parent('li').find('.price').text();
var evaluate=$(this).parent('span').parent('li').find('.evaluate').text();
var position=$(this).parent('span').parent('li').find('.position').text();
var point=$(this).parent('span').parent('li').find('.point').text();
$(".hidden .input1").text(id);
$(".hidden .input2").val(name);
$(".hidden .input3").val(describe);
$(".hidden .input4").val(imgaddress);
$(".hidden .input5").val(price);
$(".hidden .input6").val(evaluate);
$(".hidden .input7").val(position);
$(".hidden .input8").val(point);
});

/*商品管理   上传图片操作*/
$(".goods-bottom .upload-goods").click(function(){
	$(".goods-bottom #form1").css("display","block");
	$(".goods-bottom #form2").css("display","none");
})

/*商品管理   上传商品页面操作*/
$(".goods-bottom .upload-jsps").click(function(){
	$(".goods-bottom #form2").css("display","block");
	$(".goods-bottom #form1").css("display","none");
})

/*商品管理   添加商品操作*/
$(".goods-bottom .add-goods").click(function(){
	$(".hidden2").css("display","block");
})

/*翻页点判断事件*/
$(".page .prev").click(function(){
	if($(this).parent('.page').find('.curPage').html()>1){}else{return false;};
})

$(".page .next").click(function(){
	if($(this).parent('.page').find('.curPage').html()<$(this).parent('.page').find('.pageCount').html()){}else{return false;};
})

 });
 
 
 
function update_goods(){
	$(".hidden").css("display","none"); 
	var id=$(".hidden .input1").text();
	var name=$(".hidden .input2").val();
	var describe=$(".hidden .input3").val();
	var imgaddress=$(".hidden .input4").val();
	var price=$(".hidden .input5").val();
	var evaluate=$(".hidden .input6").val();
	var position=$(".hidden .input7").val();
	var point=$(".hidden .input8").val();
	var update_goods=id+","+name+","+describe+","+imgaddress+","+price+","+evaluate+","+position+","+point;
	  $("#update_goods").focus();
	   $("#update_goods").val(update_goods);
	    $("#update_goods").blur();
	    $(".goods-content .active").find('.name').text(name);
	    $(".goods-content .active").find('.describe').text(describe);
	    $(".goods-content .active").find('.imgaddress').text(imgaddress);
	    $(".goods-content .active").find('.price').text(price);
	    $(".goods-content .active").find('.evaluate').text(evaluate);
	    $(".goods-content .active").find('.position').text(position);
	    $(".goods-content .active").find('.point').text(point);
	    $(".goods-content").find('.active').removeClass('active');
} 
 
 
function add_goods(){
	$(".hidden2").css("display","none"); 
	var name=$(".hidden2 .input9").val();
	var describe=$(".hidden2 .input10").val();
	var imgaddress=$(".hidden2 .input11").val();
	var price=$(".hidden2 .input12").val();
	var evaluate=$(".hidden2 .input13").val();
	var position=$(".hidden2 .input14").val();
	var point=$(".hidden2 .input15").val();
	var add_goods=name+","+describe+","+imgaddress+","+price+","+evaluate+","+position+","+point;
	  $("#add_goods").focus();
	   $("#add_goods").val(add_goods);
	    $("#add_goods").blur();
}  
 
 
 
 