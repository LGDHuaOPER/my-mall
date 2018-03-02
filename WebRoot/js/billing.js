
$(function(){
/* 更多地址以及收起地址点击事件 */	
$(".more-address").click(function(){
$(this).css("display","none");
$(".two").css("display","block");
$(".three").css("display","block");
$(".hide-address").css("display","block");		
});
$(".hide-address").click(function(){
	$(this).css("display","none");
	$(".two").css("display","none");
	$(".three").css("display","none");
	$(".more-address").css("display","block");		
	});	
	
/*支付方式选择事件*/	
$(".method a").click(function(){
	$(this).addClass('active').siblings().removeClass('active');
});	
}	
);






	
