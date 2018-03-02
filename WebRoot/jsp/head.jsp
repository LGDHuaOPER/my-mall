<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>头部</title>
    <link rel="stylesheet" type="text/css" href="css/reset.css">
    <link rel="stylesheet" type="text/css" href="css/head.css">
    <script src="js/jquery.js" ></script>
    <script type="text/javascript">
    $(function(){
/*登录检测*/
/*如果已经登录  显示用户名、欢迎语、注销*/
 if($(".username").html()!="null"){ 
	$(".username").css("display","inline-block");
	$(".welcome").css("display","inline-block");
	$(".logout").css("display","inline");
	$(".login-btn").css("display","none");
	$(".register").css("display","none");
};

/*  注销函数   */
$(".logout").click(function(){ 
	$(".username").css("display","none");
	$(".welcome").css("display","none");
	$(".logout").css("display","none");
	$(".login-btn").css("display","inline-block");
	$(".register").css("display","inline-block");
});
	
/*购物车点击事件*/
     $(".shopCar").click(function(){ 
    window.open('jsp/shopcar.jsp') ;
     });       
}	
);
    </script>
</head>
<body>

 <div class="header">

    <!--收藏  登录   注册-->

 	<div class="header-top">
 		<div class="common">
 		
 			<div class="left">
 			<a href="javascript:void(0)"><span class="imooc-icon">&nbsp; &#xe9d9; </span>收藏东秦</a>
 			</div>
 			
 			<div class="login-and-register right">
 		         <span class="username"><%=session.getAttribute("uname")%></span>&nbsp;	
 		         <span class="welcome">你好，欢迎来到东秦商城！</span>
 		         <a class="login-btn" href="jsp/login.jsp">[登录]</a>&nbsp;	
 			     <a class="logout" href="jsp/logout.jsp">[注销]</a>
 			     <a class="register" href="jsp/register.jsp">[注册]</a>&nbsp;
 			</div>
 			
 		</div>
 	 </div>

    <!-- logo  搜索框  购物车 -->

 	<div class="header-bottom">
 		<div class="common">
 		
 			<div class="logo left">
 				<img src="images/logo.jpg">
 			</div>
 			
 			<div class="searchBox left">
 				<input class="searchBox-text left"/>
 				<input class="searchBox-btn left" type="button" value="搜 索" />
 			</div>
 			
 			<div class="shopCar right">
 			
 				<div class="shopCar-logo left">
 				   <span class="imooc-icon left">&#xe93a;</span> 
 				   <span class="left">购物车</span> 
 				</div>
 				
 				<div class="goodsNumber right">
 					<span>
 					
                     </span> 件
 			    </div>
 			</div>
 			
 		</div>	
 	</div>

 </div>
</body>
</html>
