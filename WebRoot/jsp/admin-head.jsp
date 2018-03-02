<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.* "%>
<%@ page import="com.jdbc.utils.DBHelper"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>后台管理头部</title>
	<link rel="stylesheet" type="text/css" href="css/admin_head.css">
	<link rel="stylesheet" type="text/css" href="css/reset.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript">
	$(function(){
	if($("#adminname").text()=="null"){
	window.location.href="jsp/admin-login.jsp";
	}
	})
	</script>
  </head>
 
   <div class="head">
      <div class="left">
         <div class="logo">NEUQ</div>
         <div class="title">后台管理中心</div>
      </div>
      <div class="right">
               <img alt="" src="images/admin.png">欢迎您，<span id="adminname"><%=session.getAttribute("adminname")%></span><a href="jsp/admin-logout.jsp" class="exit">退出</a>
      </div>
   </div>
  
  </body>
</html>
