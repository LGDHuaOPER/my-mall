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
}	
);
</script>
<style type="text/css">
.oblong{width:70px;height:7px;background-color:#fff;float:left;position:relative;top:25px;}
.circle{width:20px;height:20px;border-radius:10px;background-color:#fff;float:left;position:relative;top:18px;text-align:center;line-height:20px;font-weight:bold;}
.stage{float:right;margin-top:15px;width:160px;text-align:center;}
</style>    
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
 			<div class="left" style="width:280px;height:55px;font-size:26px;color:#fff;text-indent:30px;padding-top:30px;">结算页</div> 			
 			<div class="right" style="color:#f00;">
 			<div class="oblong" style="background-color:#FF8000;opacity:0.8"></div>
 			<div class="circle" style="background-color:#FF8000;color:#fff;opacity:0.8">1</div>
 			<div class="oblong" style="background-color:#FF8000;opacity:0.8"></div>
 			<div class="oblong" style="background-color:#FF8000;"></div>
 			<div class="circle" style="background-color:#FF8000;color:#fff;">2</div>
 			<div class="oblong" style="background-color:#FF8000;"></div>
 			<div class="oblong" style="background-color:#ccc;"></div>
 			<div class="circle" style="background-color:#ccc;color:#fff;">3</div>
 			<div class="oblong" style="background-color:#ccc;"></div>
 			</div>
 			<br>
 			<div class="stage" style="color:#ccc">3.成功提交订单</div>
 			<div class="stage" style="color:#FFf">2.填写核对订单信息</div>
 			<div class="stage" style="color:#D1E4F8">1.我的购物车</div>
 			</div> 			
 		</div>	
 	</div>
</body>
</html>
