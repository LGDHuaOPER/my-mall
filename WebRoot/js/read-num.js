 $(function(){ 
/* 顶部  对右侧固定栏中购物车数量进行读取*/
var num=$(".cart span").html();
if(num=="null"){$(".goodsNumber span").html("0");}
else{$(".goodsNumber span").html(num);} });