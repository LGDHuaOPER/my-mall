
$(function(){

	/* 商品介绍与商品评论 切换函数  */
      $(".two-btn .btn-1").click(function(){ 
         $(this).addClass("active").siblings().removeClass("active");
         $(".two-btn-area ul").css("left","-0"+"px");
      });
       $(".two-btn .btn-2").click(function(){ 
         $(this).addClass("active").siblings().removeClass("active");
          $(".two-btn-area ul").css("left","-790"+"px");
      });


       /* 商品 颜色 类型 选择事件  */
 $(".option-color span").click(function(){ 
         $(this).addClass("active").siblings().removeClass("active");
      });

 $(".option-style span").click(function(){ 
         $(this).addClass("active").siblings().removeClass("active");
      });
 /* 商品小图片点击预览大图  */
$(".main-middle-left .small-img a").click(function(){ 
         $(this).addClass("active").siblings().removeClass("active");
         var $href=$(this).attr("href");
         $(".big-img").attr("src",$href);
         return false;
      });


/* 商品数量增减 函数    */
var num=1;
$(".option-num .big-span .add").click(function(){ 
num++;
$(".option-num .big-span .num").html(num);
});

$(".option-num .big-span .reduce").click(function(){ 
    if (num>=2) {
        num--;
$(".option-num .big-span .num").html(num);
    }
});

});





	


