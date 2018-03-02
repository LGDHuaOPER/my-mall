<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>魅族魅蓝</title>
    <base href="<%=basePath%>">
    <link rel='stylesheet' href='css/item-detail.css' />
    <link rel='stylesheet' href='css/reset.css' />
    <script src="js/jquery.js" ></script>
    <script src="js/item-detail.js" ></script> 
</head>
<body style=" background-color:#F0F0F0;">
<!--头部  开始 -->
<jsp:include page="head.jsp"></jsp:include>
<!--头部  结束 -->

<!--导航 商品详细列表    开始 -->
<jsp:include page="banner3.jsp"></jsp:include>
<!--导航 商品详细列表    结束 -->


<!--主体部分 开始  -->
<div class="main-wrap">
  <div class="main">
    <!--  main-top  开始 -->
    <div class="main-top">
        <a href="index.jsp"><b>首页</b></a> &gt; <a href="jsp/li1.jsp">手机、数码</a> &gt; <a href="jsp/b1.jsp">手机</a> &gt; <a href="jsp/b1-3.jsp">魅族魅蓝</a>
    </div>
    <!--  main-top  结束 -->

    <!--  main-middle  开始 -->
    <div class="main-middle">
       <div class="main-middle-left left">
          <img class="big-img" src="images/b1-3a.jpg">
          <div class="small-img">
              <a class="active" href="images/b1-3a.jpg"><img  src="images/b1-3a.jpg"></a><a href="images/b1-3b.jpg"><img src="images/b1-3b.jpg"></a><a href="images/b1-3c.jpg"><img  src="images/b1-3c.jpg"></a><a href="images/b1-3d.jpg"><img src="images/b1-3d.jpg"></a><a href="images/b1-3e.jpg"><img src="images/b1-3e.jpg"></a>
          </div>
       </div>

       <div class="main-middle-right right">
          <h3 class="title">魅族 魅蓝  手机 16G wifi版 </h3>
          <h3 class="price"><b>价格：</b><span>￥</span><span class="price-num">1999.00</span></h3>
          <h3 class="discount"><b>优惠：</b><span>满减</span>满 2000.00 减 100.00</h3>
          <div class="option">
             <div class="option-color"><b>颜色：</b><span class="active">白色</span><span>黑色</span><span>灰色</span></div>
             <div class="option-style"><b>类型：</b><span class="active">wifi 16G</span><span>wifi 32G</span><span>wifi 64G</span><span>wifi 16G</span><span>wifi 32G</span></div>
             <div class="option-num"><b>数量：</b><span class="big-span"><span class="reduce"> &minus;</span><span class="num">1</span><span class="add">&#43;</span></span></div>
          </div>
          <div class="btn-area">
             <button class="add-shopcar left"> <span class="imooc-icon left" style="color:white;font-size:15px;position: relative;top:1.7px;left:10px;">&#xe93a;</span> 加入购物车</button>
             <button class="buy-now right">立即购买</button>
          </div>
       </div>
    </div><!--  main-middle  结束 -->

    <!--  main-bottom  开始 -->
    <div class="main-bottom">
      <div class="main-bottom-left left">
         <h3>相似产品推荐</h3>
         <ul class="img-ul">
           <li><a href=""><img src="images/item.jpg"><div class="img-desrciption">全网底价Apple 苹果 ipad mini 1</div><div class="img-price">￥2088.00</div></a></li>
           <li><a href=""><img src="images/item.jpg"><div class="img-desrciption">全网底价Apple 苹果 ipad mini 1</div><div class="img-price">￥2088.00</div></a></li>
           <li><a href=""><img src="images/item.jpg"><div class="img-desrciption">全网底价Apple 苹果 ipad mini 1</div><div class="img-price">￥2088.00</div></a></li>
           <li><a href=""><img src="images/item.jpg"><div class="img-desrciption">全网底价Apple 苹果 ipad mini 1</div><div class="img-price">￥2088.00</div></a></li>
           <li><a href=""><img src="images/item.jpg"><div class="img-desrciption">全网底价Apple 苹果 ipad mini 1</div><div class="img-price">￥2088.00</div></a></li>
           <li><a href=""><img src="images/item.jpg"><div class="img-desrciption">全网底价Apple 苹果 ipad mini 1</div><div class="img-price">￥2088.00</div></a></li>
           <li><a href=""><img src="images/item.jpg"><div class="img-desrciption">全网底价Apple 苹果 ipad mini 1</div><div class="img-price">￥2088.00</div></a></li>
         </ul>
      </div>
      <div class="main-bottom-right right">
         <div class="two-btn">
            <div class="btn-1 left active">产品介绍</div>
            <div class="btn-2 right">产品评价</div>
         </div>
         <div class="two-btn-area">
            <ul>
              <li>11111111111111</li>
              <li>22222222222222</li>
            </ul>
         </div>
      </div>
    </div>
   <!-- main-bottom  结束 -->
  </div>
</div>
<!--主体部分  结束 -->

<!--右侧固定栏  开始 -->

<jsp:include page="fix-right.jsp"></jsp:include>

<!--右侧固顶栏 结束 -->

<!-- 隐藏表单  开始 -->
 
<jsp:include page="hidden.jsp"></jsp:include>
 <!-- 隐藏表单  结束 -->
 
<script type="text/javascript" src='js/jquery-ui.min.js'></script>
<script type="text/javascript">
 $(function(){
 /*检测是否登录   若没有登录，则通过隐藏表单方式设置购物车商品数量*/
 if($(".username").html()=="null"){
      $('.add-shopcar').on('click', function (){
   var num1=$(".num-area").html();
    var int_num1=parseInt(num1);
    var num2=$(".option-num .num").html();
    var int_num2=parseInt(num2);
    var num=int_num1+int_num2;
    $("#car_num").focus();
    $("#car_num").val(num);
    $("#car_num").blur();
    setTimeout(function(){ $(".num-area").html(num);
    $(".goodsNumber span").html(num);
},1500)
      });
} /*若已经登录，则通过读取数据库方式设置购物车商品数量*/
 else{$('.add-shopcar').on('click', function (){
    var num=$(".num-area").html();
    var int_num=parseInt(num);
    var num2=$(".option-num .num").html();
    var int_num2=parseInt(num2);
    int_num=int_num+int_num2;
    setTimeout(function(){ $(".num-area").html(int_num);
        $(".goodsNumber span").html(int_num);
},1500)
       var username=$(".username").html();
       var goodsName=$(".main-middle-right .title").text();
       var goodsDescribe=$(".option-color .active").text()+" "+$(".option-style .active").text();
       var goodsImg=$(".big-img").attr('src');
       var goodsPrice=$(".price-num").html();
       goodsPrice=parseInt(goodsPrice);
       var goodsNumber=int_num2;
       var time=new Date();
       var goods_info=username+","+goodsName+","+goodsDescribe+","+goodsImg+","+goodsPrice+","+goodsNumber+","+time;
        $("#goods_info").focus();
       $("#goods_info").val(goods_info);
       $("#goods_info").blur();
      });}})
      
$(".buy-now").click(function(){
       var username=$(".username").html();
       if(username=="null"){alert("您还没有登录，请先登录！"); }
       else{
       var goodsName=$(".main-middle-right .title").text();
       var goodsDescribe=$(".option-color .active").text()+" "+$(".option-style .active").text();
       var goodsImg=$(".big-img").attr('src');
       var goodsPrice=$(".price-num").html();
       goodsPrice=parseInt(goodsPrice);
       var num2=$(".option-num .num").html();
       var goodsNumber=parseInt(num2);
       var buy_now=username+","+goodsName+","+goodsDescribe+","+goodsImg+","+goodsPrice+","+goodsNumber;
        $("#buy_now").focus();
       $("#buy_now").val(buy_now);
       $("#buy_now").blur();
        window.location.href='jsp/billing.jsp';
        }
});     
      
      
$('.add-shopcar').on('click', function () {  
    var cart = $('.cart');
    var imgtodrag = $(".main-middle-left .big-img");
    if (imgtodrag) {
        var imgclone = imgtodrag.clone().offset({
            top: imgtodrag.offset().top,
            left: imgtodrag.offset().left
        }).css({
            'opacity': '0.5',
            'position': 'absolute',
            'height': '150px',
            'width': '150px',
            'z-index': '100'
        }).appendTo($('body')).animate({
            'top': cart.offset().top + 10,
            'left': cart.offset().left + 10,
            'width': 75,
            'height': 75
        }, 1000, 'easeInOutExpo');
        setTimeout(function () {
            cart.effect('shake', { times: 1 }, 200);
        }, 1500);
        imgclone.animate({
            'width': 0,
            'height': 0
        }, function () {
            $(this).detach();
        });
    }
});

</script>

<div style="height:1400px;"></div>
 <!-- 底部  开始 -->
 
<jsp:include page="foot.jsp"></jsp:include>

 <!-- 底部  结束 -->
 
 <!-- 顶部 对右侧固定栏中购物车数量进行读取 -->
 <script src="js/read-num.js" ></script> 
</body>

</html>