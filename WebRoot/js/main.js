
$(function(){
	
	/* num-one 点击事件*/

	$(".num-one a").click(function(){		
		$(this).addClass("active").siblings().removeClass("active");
	} );

	$(".num-one a:eq(0)").click(function(){
		$(".ul-one").css("left","0"+"px");
	} );
$(".num-one a:eq(1)").click(function(){
		$(".ul-one").css("left","-210"+"px");
	} );
$(".num-one a:eq(2)").click(function(){
		$(".ul-one").css("left","-420"+"px");
	} );


	/* num-two  点击事件*/
     $(".num-two a").click(function(){		
		$(this).addClass("active").siblings().removeClass("active");
	} );

	$(".num-two a:eq(0)").click(function(){
		$(".ul-two").css("left","0"+"px");
	} );
$(".num-two a:eq(1)").click(function(){
		$(".ul-two").css("left","-210"+"px");
	} );
$(".num-two a:eq(2)").click(function(){
		$(".ul-two").css("left","-420"+"px");
	} );


}	
);






	
