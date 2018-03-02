<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>支付页面</title>
    <base href="<%=basePath%>">
    <link rel='stylesheet' href='css/reset.css' />
    <style type="text/css">
    .main{width:800px;height:400px;margin:200px auto 0;}
    .left{font-size:22px;color:#000;width:400px;margin:30px auto;text-align:center;}
    </style>
 </head>
  
  <body>
  <div class="main">
  <div class="right"> <img alt="" src="images/pay.jpg"></div>
  <div class="left">订单提交成功！</div>
  <div class="left">用户名：<%=session.getAttribute("uname")%></div>
  <div class="left">订单金额：<%=session.getAttribute("num")%></div>
  <div class="left">请及时使用支付宝完成支付！</div>

    </div>
  </body>
</html>
