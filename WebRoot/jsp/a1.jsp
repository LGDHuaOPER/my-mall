<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>天黑黑</title>
    <base href="<%=basePath%>"> 
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <script src="js/jquery.js" ></script>  
    <script src="js/main.js" ></script> 
</head>
<body>
<!--头部  开始 -->
<jsp:include page="head.jsp"></jsp:include>
<!--头部  结束 -->

<!--导航 商品详细列表    开始 -->
<jsp:include page="banner1.jsp"></jsp:include>
<!--导航 商品详细列表    结束 -->

<!--主体部分  开始 -->

<div class="thirdPart common">

	<div class="third-title title-one">
		<img class="title-img left" src="images/shopicon.jpg">
		<h3 class="left">家用电脑</h3>
	</div>

	<div class="more"><a href="javascript:void(0)" >更多&gt;&gt;</a></div>

    <div class="third-goods">
    <div class="goods-left left">
<ul class="goods-left-ul ul-one">
	<li><a href="javascript:void(0)"><img src="images/shopgoods.jpg"></a></li>
	<li><a href="javascript:void(0)"><img src="images/shopgoods2.jpg"></a></li>
	<li><a href="javascript:void(0)"><img src="images/shopgoods.jpg"></a></li>
</ul>

<div class="left-num num-one">
	<a  class="active" href="javascript:void(0)"></a>
	<a  href="javascript:void(0)"></a>
	<a  href="javascript:void(0)"></a>	
</div>

    </div>	
    <div class="goods-right right">
<div class="right-top">
	<div class="right-top-item">
    <a href="javascript:void(0)"><img class="top-item-img" src="images/shopitem.jpg"></a>
    <h3>HTC新渴望8系列</h3>
    <h4>1988元</h4>
	</div>
	<div class="right-top-item">
    <a href="javascript:void(0)"><img class="top-item-img" src="images/shopitem.jpg"></a>
    <h3>HTC新渴望8系列</h3>
    <h4>1988元</h4>
	</div>
	<div class="right-top-item">
    <a href="javascript:void(0)"><img class="top-item-img" src="images/shopitem.jpg"></a>
    <h3>HTC新渴望8系列</h3>
    <h4>1988元</h4>
	</div>
	<div class="right-top-item">
    <a href="javascript:void(0)"><img class="top-item-img" src="images/shopitem.jpg"></a>
    <h3>HTC新渴望8系列</h3>
    <h4>1988元</h4>
	</div>
</div>

<div class="right-bottom">
	<div class="right-bottom-item">
		<h3>NFC技术一碰轻松配对！接触屏幕</h3>
		<h4>149元</h4>
		<a href="javascript:void(0)"><img class="bottom-item-img" src="images/shopitem2.jpg"></a>
	</div>
	<div class="right-bottom-item">
		<h3>NFC技术一碰轻松配对！接触屏幕</h3>
		<h4>149元</h4>
		<a href="javascript:void(0)"><img class="bottom-item-img" src="images/shopitem2.jpg"></a>
	</div>
	<div class="right-bottom-item">
		<h3>NFC技术一碰轻松配对！接触屏幕</h3>
		<h4>149元</h4>
		<a href="javascript:void(0)"><img class="bottom-item-img" src="images/shopitem2.jpg"></a>
	</div>
	<div class="right-bottom-item">
		<h3>NFC技术一碰轻松配对！接触屏幕</h3>
		<h4>149元</h4>
		<a href="javascript:void(0)"><img class="bottom-item-img" src="images/shopitem2.jpg"></a>
	</div>



</div>

    </div>

    </div>



    <div class="third-title title-two">
		<img class="title-img left" src="images/shopicon.jpg">
		<h3 class="left">家用电脑</h3>
	</div>

	<div class="more"><a href="javascript:void(0)" >更多&gt;&gt;</a></div>

    <div class="third-goods">
    <div class="goods-left left">
<ul class="goods-left-ul ul-two">
	<li><a href="javascript:void(0)"><img src="images/shopgoods.jpg"></a></li>
	<li><a href="javascript:void(0)"><img src="images/shopgoods2.jpg"></a></li>
	<li><a href="javascript:void(0)"><img src="images/shopgoods.jpg"></a></li>
</ul>

<div class="left-num num-two">
	<a  class="active" href="javascript:void(0)"></a>
	<a  href="javascript:void(0)"></a>
	<a  href="javascript:void(0)"></a>	
</div>

    </div>	
    <div class="goods-right right">
<div class="right-top">
	<div class="right-top-item">
    <a href="javascript:void(0)"><img class="top-item-img" src="images/shopitem.jpg"></a>
    <h3>HTC新渴望8系列</h3>
    <h4>1988元</h4>
	</div>
	<div class="right-top-item">
    <a href="javascript:void(0)"><img class="top-item-img" src="images/shopitem.jpg"></a>
    <h3>HTC新渴望8系列</h3>
    <h4>1988元</h4>
	</div>
	<div class="right-top-item">
    <a href="javascript:void(0)"><img class="top-item-img" src="images/shopitem.jpg"></a>
    <h3>HTC新渴望8系列</h3>
    <h4>1988元</h4>
	</div>
	<div class="right-top-item">
    <a href="javascript:void(0)"><img class="top-item-img" src="images/shopitem.jpg"></a>
    <h3>HTC新渴望8系列</h3>
    <h4>1988元</h4>
	</div>
</div>

<div class="right-bottom">
	<div class="right-bottom-item">
		<h3>NFC技术一碰轻松配对！接触屏幕</h3>
		<h4>149元</h4>
		<a href="javascript:void(0)"><img class="bottom-item-img" src="images/shopitem2.jpg"></a>
	</div>
	<div class="right-bottom-item">
		<h3>NFC技术一碰轻松配对！接触屏幕</h3>
		<h4>149元</h4>
		<a href="javascript:void(0)"><img class="bottom-item-img" src="images/shopitem2.jpg"></a>
	</div>
	<div class="right-bottom-item">
		<h3>NFC技术一碰轻松配对！接触屏幕</h3>
		<h4>149元</h4>
		<a href="javascript:void(0)"><img class="bottom-item-img" src="images/shopitem2.jpg"></a>
	</div>
	<div class="right-bottom-item">
		<h3>NFC技术一碰轻松配对！接触屏幕</h3>
		<h4>149元</h4>
		<a href="javascript:void(0)"><img class="bottom-item-img" src="images/shopitem2.jpg"></a>
	</div>



</div>

    </div>

    </div>

</div>
 <!--主体部分   结束 -->

<!--右侧固定栏  开始 -->

<jsp:include page="fix-right.jsp"></jsp:include>

<!--右侧固顶栏 结束 -->

 <!-- 底部  开始 -->
 
<jsp:include page="foot.jsp"></jsp:include>

 <!-- 底部  结束 -->
 
 <!-- 顶部 对右侧固定栏中购物车数量进行读取 -->
 <script src="js/read-num.js" ></script> 
</body>

</html>
