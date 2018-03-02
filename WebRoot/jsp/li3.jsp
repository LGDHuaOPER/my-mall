<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.* "%>
<%@ page import="com.jdbc.utils.DBHelper"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>家居、家具、厨具</title>
    <base href="<%=basePath%>">
    <link rel='stylesheet' href='css/li.css' />
    <script src="js/jquery.js" ></script>
</head>
<body>

<!--头部  开始 -->
<jsp:include page="head.jsp"></jsp:include>
<!--头部  结束 -->

<!--导航 商品详细列表    开始 -->
<jsp:include page="banner2.jsp"></jsp:include>
<!--导航 商品详细列表    结束 -->

<!--主体部分  开始 -->
<div class="main">

   <div class="main-list">
      <h3>家居、家具、厨具</h3>
      <h4>家装建材</h4>
      <ul class="list-ul">
          <li><a href="javascript:void(0)">灯饰照明</a></li>
          <li><a href="javascript:void(0)">厨房卫浴</a></li>
          <li><a href="javascript:void(0)">五金工具</a></li>
          <li><a href="javascript:void(0)">电工电料</a></li>
          <li><a href="javascript:void(0)">装饰材料</a></li>             
      </ul>
      <h4>家装装饰</h4>
      <ul class="list-ul">
          <li><a href="javascript:void(0)">桌布</a></li>
          <li><a href="javascript:void(0)">罩件</a></li>
          <li><a href="javascript:void(0)">地毯地垫</a></li>
          <li><a href="javascript:void(0)">装饰字画</a></li>
          <li><a href="javascript:void(0)">装饰摆件</a></li>
          <li><a href="javascript:void(0)">创意家居</a></li>              
      </ul>
      <h4>生活日用</h4>
      <ul class="list-ul">
          <li><a href="javascript:void(0)">收纳用品</a></li>
          <li><a href="javascript:void(0)">雨伞雨具</a></li>
          <li><a href="javascript:void(0)">净化除味</a></li>
          <li><a href="javascript:void(0)">浴室用品</a></li>
          <li><a href="javascript:void(0)">清洁工具</a></li>             
      </ul>
      <h4>家具</h4>
      <ul class="list-ul">
          <li><a href="javascript:void(0)">卧室家具</a></li>
          <li><a href="javascript:void(0)">客厅家具</a></li>
          <li><a href="javascript:void(0)">餐厅家具</a></li>
          <li><a href="javascript:void(0)">书房家具</a></li>
          <li><a href="javascript:void(0)">儿童家具</a></li>            
      </ul>
      <h4>厨具</h4>
      <ul class="list-ul">
          <li><a href="javascript:void(0)">烹饪锅具</a></li>
          <li><a href="javascript:void(0)">刀剪菜板</a></li>
          <li><a href="javascript:void(0)">厨房配件</a></li>
          <li><a href="javascript:void(0)">水具酒具</a></li>
          <li><a href="javascript:void(0)">餐具</a></li>            
      </ul>
      <h4>家纺</h4>
      <ul class="list-ul">
          <li><a href="javascript:void(0)">床品套件</a></li>
          <li><a href="javascript:void(0)">毛巾浴巾</a></li>
          <li><a href="javascript:void(0)">床单被罩</a></li>
          <li><a href="javascript:void(0)">床垫床褥</a></li>
          <li><a href="javascript:void(0)">窗帘窗纱</a></li>              
       </ul>
   </div>

   <div class="main-right right">
       <h3>商品推荐</h3>
       <div class="goods">
          <div class="goods-top">
           <%
  try{
    Class.forName("org.gjt.mm.mysql.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/user_info_db?useUnicode=true&characterEncoding=utf-8","root","12345"); 
    Statement stmt = conn.createStatement();
    String sql="select * from goods_tb where position='li3' ";
    ResultSet rs=stmt.executeQuery(sql);
    while(rs.next()){
  %>
               <ul class="top-item">
               <li><a class="item-img" href="<%=rs.getObject(8)%>)"><img src="<%=rs.getObject(4)%>"></a></li>
               <li><a class="item-description" href="<%=rs.getObject(8)%>"><%=rs.getObject(2)%></a></li>
               <li><span class="item-price">￥<%=rs.getObject(5)%>.00</span></li>
               <li><a class="item-evaluate" href="<%=rs.getObject(8)%>">评论：<%=rs.getObject(6)%>条</a></li>
             </ul>
             <%
  }
   rs.close();
   stmt.close();
   conn.close();
   }catch(Exception e){
    e.printStackTrace();
   }
   %>
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