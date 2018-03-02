<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>右侧固定栏</title>
    <base href="<%=basePath%>">
    <link rel='stylesheet' href='css/reset.css' />
    <link rel='stylesheet' href='css/fix-right.css' />
    <script src="js/jquery.js" ></script>
    <script type="text/javascript">
 $(function(){
 /*检测是否登录   若没有登录，则通过隐藏表单方式设置购物车商品数量*/
 if($(".username").html()=="null"){
  $(".num-area").html("<%=session.getAttribute("car_num")%>");
  var num_area=$(".num-area").html();
  if(num_area=="null"){
  $(".num-area").html("0");
 }
} /*若已经登录，则通过读取数据库方式设置购物车商品数量*/
 else{}
 
$(".cart").click(function(){ 
window.open("jsp/shopcar.jsp");
});
$(".problem").click(function(){ 
window.open("jsp/feedback.jsp");
});
$(".return-top").click(function(){ 
window.scroll(0,0);
});
});
 </script>
</head>
<body>
<div class="fix-part"> 
    <div class="person">个人中心</div> 
    <div class="cart"> 购物车 
       <span class="num-area">
       <%
 try{        
             Class.forName("org.gjt.mm.mysql.Driver");
             Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/user_info_db?useUnicode=true&characterEncoding=utf-8","root","12345");
             Statement stmt=(Statement)conn.createStatement();
             String sql="select * from users_tb where username='"+session.getAttribute("uname")+"'";
             ResultSet rs=(ResultSet)stmt.executeQuery(sql);
             if(rs.next())
                  {
                  out.println(rs.getString("choosedNumber"));
               }
               stmt.close();
           conn.close(); 
           }catch(Exception ee){ee.printStackTrace();
             
           }               
 %>
       </span>
    </div> 
    <div class="focus"> 我的关注 </div> 
    <div class="history">我的足迹</div> 
    <div class="problem"> 问题反馈</div> 
    <div class="return-top">返回顶部</div> 
</div>
</body>
</html>
