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
    <title>订单结算页</title>
    <base href="<%=basePath%>">
    <link rel='stylesheet' href='css/reset.css' />
    <link rel='stylesheet' href='css/billing.css' />
    <script src="js/jquery.js" ></script>
    <script src="js/billing.js" ></script>
    <script type="text/javascript">
    $(function(){
    var s=0;
    $("li").each(function(index){ 
    s=s+parseInt($(this).find('.rs6').text())*parseInt($(this).find('.rs5').text());
    });
   $(".right-num").html(s);
   
   /*返回购物车*/
  $("#return-shopcar").click(function(){
     var username=$(".username").html();   
      $("#return_shopcar").focus();
      $("#return_shopcar").val(username);
      $("#return_shopcar").blur();
    window.location.href='jsp/shopcar.jsp';
  })
  
  /*提交订单*/
  $(".submit").click(function(){
     var username=$(".username").html();
     var num=$(".right-num").html();
     var pay=username+","+ num;
     var content="";
     $("li").each(function(index){ 
     content+=$(this).find('.rs2').html()+"&nbsp;&nbsp;&nbsp;&nbsp;"+$(this).find('.rs3').html()+" &times; "+$(this).find('.rs6').html()+"<br>";
     });
     var time=new Date(); 
     var y=time.getFullYear();
     var m=time.getMonth()+1; 
     var d=time.getDate();
     var date=y+"-"+m+"-"+d;
     var insert_orders=username+","+content+","+date+","+num;    
      $("#pay").focus();
      $("#pay").val(pay);
      $("#pay").blur();
      $("#insert_orders").focus();
      $("#insert_orders").val(insert_orders);
      $("#insert_orders").blur();
    window.location.href='jsp/pay.jsp';
  })
    })
    </script>
</head>
<body>

<!--头部  开始 -->

<jsp:include page="billing-head.jsp"></jsp:include>

<!--头部  结束 -->

 <jsp:include page="hidden.jsp"></jsp:include>
<!-- 主体部分  开始 -->
<div class="main">
<h2>填写并核对订单信息</h2>
<div class="main-part">

<div class="bill user">
<h3>收货人信息</h3>
<form action="">
<div class="address one">
<input type="radio" name="address" checked="checked">
<span><%=session.getAttribute("uname")%></span>
<span><%=session.getAttribute("address")%></span>
<span><%=session.getAttribute("tel")%></span>
</div>
<div class="address two">
<input type="radio" name="address">
<span><%=session.getAttribute("uname")%></span>
<span><%=session.getAttribute("address")%></span>
<span><%=session.getAttribute("tel")%></span>
</div>
<div class="address three">
<input type="radio" name="address" >
<span><%=session.getAttribute("uname")%></span>
<span><%=session.getAttribute("address")%></span>
<span><%=session.getAttribute("tel")%></span>
</div>
<span class="more-address">更多地址 &darr;</span>
<span class="hide-address">收起地址 &uarr;</span>
</form>
</div>

<div class="bill method">
<h3>支付方式</h3>
<a href="javascript:void(0)" class="method-one" style="margin-left:50px;">货到付款</a>
<a href="javascript:void(0)" class="method-one">微信支付</a>
<a href="javascript:void(0)" class="method-one active">支付宝支付</a>
<a href="javascript:void(0)" class="method-one">网银支付</a>
</div>

<div class="bill list">
<h4 id="return-shopcar">返回修改购物车 &gt;&gt;</h4>
<h3>送货清单</h3>
<div>
<div class="goods-part">
      <%
  try{
    Class.forName("org.gjt.mm.mysql.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/user_info_db?useUnicode=true&characterEncoding=utf-8","root","12345"); 
    Statement stmt = conn.createStatement();
    String sql="select * from "+session.getAttribute("uname")+" where clearing='结算中' and ordered='未下单' ";
    ResultSet rs=stmt.executeQuery(sql);
    while(rs.next()){
  %>
   <ul >
   <li><img src="<%=rs.getObject(4)%>"/><span class="left"><span class="rs2"><%=rs.getObject(2)%></span><br><span class="rs3"><%=rs.getObject(3)%></span></span><span>邮寄方式：快递平邮</span><span> &times;<span class="rs6"><%=rs.getObject(6)%></span> </span><span style="color:#f00;">￥<span class="rs5"><%=rs.getObject(5)%></span>.00</span>
   </li>
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

<div class="bill invoice">
<h3>发票信息</h3>
<span style="margin-left:25px;">普通发票（电子）</span><span>个人</span><span>明细</span>
</div>
</div>
<div class="total"><span class="right submit">提交订单</span> <span class="right price">应付总额：<span>￥</span><span class="right-num">0</span><span>.00</span></span></div>
</div>

<!--主体部分     结束 -->
<!-- 底部  开始 -->
 
<jsp:include page="foot.jsp"></jsp:include>

 <!-- 底部  结束 -->

</body>

</html>