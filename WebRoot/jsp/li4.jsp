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
    <title>个护化妆、清洁用品</title>
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
      <h3>个护化妆、清洁用品</h3>
      <h4>手机通讯</h4>
      <ul class="list-ul">
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>               
      </ul>
      <h4>手机通讯</h4>
      <ul class="list-ul">
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>               
      </ul>
      <h4>手机通讯</h4>
      <ul class="list-ul">
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>               
      </ul>
      <h4>手机通讯</h4>
      <ul class="list-ul">
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>               
      </ul>
      <h4>手机通讯</h4>
      <ul class="list-ul">
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>               
      </ul>
      <h4>手机通讯</h4>
      <ul class="list-ul">
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>
          <li><a href="javascript:void(0)">小米手机</a></li>               
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
    String sql="select * from goods_tb where position='li4' ";
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