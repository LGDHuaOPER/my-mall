<%@ page language="java" import="java.util.*" pageEncoding="utf-8"  contentType="text/html; charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>隐藏页面</title>
  <base href="<%=basePath%>">
  <link rel='stylesheet' href='css/reset.css' />
    <script src="js/jquery.js" ></script>
    <script src="js/jquery.validate-1.13.1.js"></script>
<script>
    var validator1;
    $(function () {
        validator1 = $("#Form").validate({
            rules: {
                car_num: { remote:"jsp/hidden-check.jsp"},
                goods_info: { remote:"jsp/login-hidden-check.jsp"},    
                order_info: { remote:"jsp/order-hidden-check.jsp"},
                 return_shopcar: { remote:"jsp/retncar-hidden-check.jsp"},
                 pay: { remote:"jsp/submit-hidden-check.jsp"}, 
                 insert_orders: { remote:"jsp/insert_orders.jsp"},   
                 buy_now: { remote:"jsp/buynow-hidden-check.jsp"}     
                    },
                  }); 
    });
</script>
<style type="text/css">
#Form{position:fixed;right:0px;}
#car_num,#goods_info,#order_info,#return_shopcar,#pay,#buy_now,#insert_orders{width:0px;}
</style>
</head>
<body > 
<form id="Form" method="post" action="jsp/hidden-check.jsp">
<input type="text" name="car_num" id="car_num" value=""  />
<input type="text" name="goods_info" id="goods_info" value=""  />
<input type="text" name="order_info" id="order_info" value=""  />
<input type="text" name="return_shopcar" id="return_shopcar" value=""  />
<input type="text" name="pay" id="pay" value=""  />
<input type="text" name="buy_now" id="buy_now" value=""  />
<input type="text" name="insert_orders" id="insert_orders" value=""  />
</form>  
</body>
</html>
