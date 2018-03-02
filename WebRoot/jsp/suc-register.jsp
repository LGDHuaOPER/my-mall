<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>注册成功</title>
  <base href="<%=basePath%>">
  <link rel='stylesheet' href='css/reset.css' />
    <link rel='stylesheet' href='css/suc-register.css' />
    <script src="js/jquery.js" ></script>
</head>
<body >
<div class="top">
  <div class="top-center"><img src="images/logo.jpg">
  欢迎注册</div>
</div>

<div class="main-part">
<div class="congratulations">恭喜你，注册成功！</div>
<img alt="" src="images/congratulations.jpg">
<a href="jsp/login.jsp" class="go-login">前往登录</a>
</div>
</body>
</html>
