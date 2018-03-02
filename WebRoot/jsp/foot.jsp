<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>底部版权区</title>
    <base href="<%=basePath%>">
    <link rel="stylesheet" type="text/css" href="css/foot.css">
    <link rel="stylesheet" type="text/css" href="css/reset.css">
</head>
<body>
<div class="footer">
<p><a href="#">东秦简介</a><i>|</i><a href="#">东秦公告</a><i>|</i><a href="#">招贤纳士</a><i>|</i><a href="#">联系我们</a><i>|</i>客服热线：400-675-1234 </p>
<p class="copy-right">Copyright &copy; 2016 neuq.com All Rights Reserved | 京ICP备 13046642号-2</p>
<p class="web"><a href="javascript:void(0)"><img src="images/footer.jpg"></a><a href="javascript:void(0)"><img src="images/footer.jpg"></a><a href="javascript:void(0)"><img src="images/footer.jpg"></a><a href="javascript:void(0)"><img src="images/footer.jpg"></a></p>
</div>
</body>
</html>
