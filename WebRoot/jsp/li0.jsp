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
    <title>食品、酒类、饮料</title>
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
      <h3>食品、酒类、饮料</h3>
      <h4>进口食品</h4>
      <ul class="list-ul">
          <li><a href="javascript:void(0)">牛奶</a></li>
          <li><a href="javascript:void(0)">饼干</a></li>
          <li><a href="javascript:void(0)">蛋糕</a></li>
          <li><a href="javascript:void(0)">糖果</a></li>
          <li><a href="javascript:void(0)">巧克力</a></li>
          <li><a href="javascript:void(0)">冲调饮品</a></li>
          <li><a href="javascript:void(0)">休闲零食</a></li>              
      </ul>
      <h4>休闲食品</h4>
      <ul class="list-ul">
          <li><a href="javascript:void(0)">休闲零食</a></li>
          <li><a href="javascript:void(0)">坚果炒货</a></li>
          <li><a href="javascript:void(0)">肉干肉脯</a></li>
          <li><a href="javascript:void(0)">蜜饯果干</a></li>
          <li><a href="javascript:void(0)">无糖食品</a></li>
      </ul>
      <h4>中外名酒</h4>
      <ul class="list-ul">
          <li><a href="javascript:void(0)">葡萄酒</a></li>
          <li><a href="javascript:void(0)">白酒</a></li>
          <li><a href="javascript:void(0)">啤酒</a></li>
          <li><a href="javascript:void(0)">洋酒</a></li>
          <li><a href="javascript:void(0)">黄酒</a></li>
          <li><a href="javascript:void(0)">养生酒</a></li>           
      </ul>
      <h4>国内茗茶</h4>
      <ul class="list-ul">
          <li><a href="javascript:void(0)">铁观音</a></li>
          <li><a href="javascript:void(0)">普洱</a></li>
          <li><a href="javascript:void(0)">龙井</a></li>
          <li><a href="javascript:void(0)">红茶</a></li>
          <li><a href="javascript:void(0)">其他茶类</a></li>              
      </ul>
      <h4>饮料冲调</h4>
      <ul class="list-ul">
          <li><a href="javascript:void(0)">牛奶乳品</a></li>
          <li><a href="javascript:void(0)">饮料</a></li>
          <li><a href="javascript:void(0)">咖啡</a></li>
          <li><a href="javascript:void(0)">奶茶</a></li>
          <li><a href="javascript:void(0)">蜂蜜</a></li>
          <li><a href="javascript:void(0)">柚子茶</a></li>
          <li><a href="javascript:void(0)">冲饮谷物</a></li>            
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
    String sql="select * from goods_tb where position='li0' ";
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
      