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
    <title>手机、数码</title>
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
      <h3>手机、数码</h3>
      <h4>手机通讯</h4>
      <ul class="list-ul">
          <li><a href="jsp/b1.jsp">手机</a></li>
          <li><a href="javascript:void(0)">对讲机</a></li>
          <li><a href="javascript:void(0)">以旧换新</a></li>
          <li><a href="javascript:void(0)">手机维修</a></li>          
      </ul>
      <h4>手机配件</h4>
      <ul class="list-ul">
          <li><a href="javascript:void(0)">手机电池</a></li>
          <li><a href="javascript:void(0)">移动电源</a></li>
          <li><a href="javascript:void(0)">手机耳机</a></li>
          <li><a href="javascript:void(0)">充电器</a></li>
          <li><a href="javascript:void(0)">数据线</a></li>
          <li><a href="javascript:void(0)">手机支架</a></li>     
      </ul>
      <h4>摄影摄像</h4>
      <ul class="list-ul">
          <li><a href="javascript:void(0)">单反相机</a></li>
          <li><a href="javascript:void(0)">运动相机</a></li>
          <li><a href="javascript:void(0)">户外器材</a></li>
          <li><a href="javascript:void(0)">影棚器材</a></li>
          <li><a href="javascript:void(0)">冲印服务</a></li>             
      </ul>
      <h4>数码配件</h4>
      <ul class="list-ul">
          <li><a href="javascript:void(0)">存储卡</a></li>
          <li><a href="javascript:void(0)">读卡器</a></li>
          <li><a href="javascript:void(0)">闪光灯</a></li>
          <li><a href="javascript:void(0)">手柄</a></li>
          <li><a href="javascript:void(0)">三脚架</a></li>
          <li><a href="javascript:void(0)">云台</a></li>
          <li><a href="javascript:void(0)">机身附件</a></li>
          <li><a href="javascript:void(0)">充电器</a></li>               
      </ul>
      <h4>影音娱乐</h4>
      <ul class="list-ul">
          <li><a href="javascript:void(0)">耳机</a></li>
          <li><a href="javascript:void(0)">耳麦</a></li>
          <li><a href="javascript:void(0)">音箱</a></li>
          <li><a href="javascript:void(0)">音响</a></li>
          <li><a href="javascript:void(0)">收音机</a></li>
          <li><a href="javascript:void(0)">麦克风</a></li>
          <li><a href="javascript:void(0)">MP3</a></li>
          <li><a href="javascript:void(0)">MP4</a></li>               
      </ul>
      <h4>智能设备</h4>
      <ul class="list-ul">
          <li><a href="javascript:void(0)">智能手环</a></li>
          <li><a href="javascript:void(0)">智能手表</a></li>
          <li><a href="javascript:void(0)">智能眼镜</a></li>
          <li><a href="javascript:void(0)">智能机器</a></li>
          <li><a href="javascript:void(0)">其他智能</a></li>             
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
    String sql="select * from goods_tb where position='li1' ";
    ResultSet rs=stmt.executeQuery(sql);
    while(rs.next()){
  %>
               <ul class="top-item">
               <li><a class="item-img" href="<%=rs.getObject(8)%>"><img src="<%=rs.getObject(4)%>"></a></li>
               <li><a class="item-description" href="<%=rs.getObject(8)%>"><%=rs.getObject(2)%></a></li>
               <li><span class="item-price" >￥<%=rs.getObject(5)%>.00</span></li>
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