<%@ page language="java" import="java.util.*" pageEncoding="utf-8"  contentType="text/html; charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>登录</title>
  <base href="<%=basePath%>">
  <link rel='stylesheet' href='css/reset.css' />
    <link rel='stylesheet' href='css/login.css' />
    <script src="js/jquery.js" ></script>
    <script type="text/javascript">
    /*捕获焦点以及失去焦点函数*/
    
    $(function(){ 
  $("input").focus(function(){
  $(this).css("border-color","#79B7DC");
});  
    
  $("input").blur(function(){
  $(this).css("border-color","#ccc");
});

$("#username").focus(function(){
$(".username-alert").css("display","none");
});

$("#pass").focus(function(){
  $(".pass-alert").css("display","none");
    });
    });
    
    $("#username").focus(function(){
$(".username-alert").css("display","none");
});

$("#pass").focus(function(){
  $(".pass-alert").css("display","none");
    });
    
 /*表单检测函数*/
    function checkform(){
     $(".username-alert").css("display","none");
     $(".pass-alert").css("display","none");
     var username=$("#username").val();
     var pass=$("#pass").val();
     if(username==""){ 
     $(".username-alert").css("display","block");
     };
     if(pass==""){ 
     $(".pass-alert").css("display","block");
     };
     if($("#username").val()==""||$("#pass").val()=="")
     return false;
     }
    </script>
</head>
<body >
<div class="top">
  <div class="top-center"><img src="images/logo.jpg">
  欢迎登录</div>
</div>
<div class="login-part">
  <div class="login-part-center"> 
  <form method="post" action="jsp/login-check.jsp" onsubmit="return checkform()" >
      <label for="username">邮箱/用户名/手机号:</label><span class="username-alert right">请输入用户名！</span> 
      <input type="text" name="username" id="username"  />
      <label for="pass">密码:</label><span class="pass-alert right">请输入密码！</span>
      <input type="password"  name="pass" id="pass"  /> 
     <input  type="checkbox" value="1"  name="checkbox" id="auto-login"  />
     <label for="auto-login" style="position:relative;top:-2px;left:4px;">自动登录 </label>
     <button name="login-btn" id="login-btn">登 录</button>
     <span class="left"><a href="jsp/register.jsp" >立即注册&gt;&gt;</a></span>
     <span class="right"><a href="" >忘记密码？</a></span>
</form>  


<div class="other-login">使用合作网站账号登录：</div>
<ul>
  <li><a href="">QQ</a>|</li>
  <li><a href="">网易</a>|</li>
  <li><a href="">人人</a>|</li>
  <li><a href="">新浪</a>|</li>
  <li><a href="">百度</a></li>

</ul>
  </div>
</div>
</body>
</html>
