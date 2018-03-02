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
    <title>我的购物车</title>
    <base href="<%=basePath%>">
    <link rel='stylesheet' href='css/reset.css' />
    <link rel='stylesheet' href='css/shopcar.css' />
    <script src="js/jquery.js" ></script>
    <script type="text/javascript" >
    $(function(){
/*登录检测*/
 if($(".username").html()=="null"){ 
	$(".alert").css("display","block");
	$(".goods-part").css("display","none");
	$(".goods-part2").css("display","block");
}else{
	$(".alert").css("display","none");
	$(".goods-part").css("display","block");
	$(".goods-part2").css("display","none");
};

/*全选事件*/
$("#select-all").click(function(){ 
if($("#select-all").prop("checked")==true){
$("input").prop("checked",false);
$("li").css("background-color","#FFF4E8");
$("input").prop("checked",true);
var num1=0;
var num2=0;
$("li").each(function(index){ 
   num1+=parseInt($(this).find('.rs6').html());
   num2+=parseInt($(this).find('.rs7').html());
    });
 $(".checked-num").html(num1);
   $(".total-price").html(num2);
}else{$("input").prop("checked",false);
$("li").css("background-color","#fff");
$(".checked-num").html('0');
   $(".total-price").html('0');
}
});
$("#select-all2").click(function(){ 
if($("#select-all2").prop("checked")==true){
$("input").prop("checked",false);
$("li").css("background-color","#FFF4E8");
$("input").prop("checked",true);
var num3=0;
var num4=0;
$("li").each(function(index){ 
   num3+=parseInt($(this).find('.rs6').html());
   num4+=parseInt($(this).find('.rs7').html());
    });
 $(".checked-num").html(num3);
   $(".total-price").html(num4);
}else{$("input").prop("checked",false);
$("li").css("background-color","#fff");
$(".checked-num").html('0');
   $(".total-price").html('0');
}
});
     
}	
);
    </script>
</head>
<body>

<!--头部  开始 -->

<jsp:include page="shopcar-head.jsp"></jsp:include>

<!--头部  结束 -->


<!-- 主体部分  开始 -->

<div class="main-part common">
    <div class="alert"><span>您好，您还没有登录，请先登录！登录后添加的商品才能在购物车中显示</span><a class="login-btn right" href="jsp/login.jsp">立即登录</a></div>
    <div class="main-title">
    <input  type="checkbox" value="1"  name="checkbox" id="select-all"  />
    <span class="select-all">全选</span>
    <span class="goods">商品</span>
    <span class="price">单价（元）</span>
    <span class="number">数量</span>
    <span class="subtotal">小计（元）</span>
    <span class="operation">操作</span>
    </div>
    <div class="goods-part">
      <%
  try{
    Class.forName("org.gjt.mm.mysql.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/user_info_db?useUnicode=true&characterEncoding=utf-8","root","12345"); 
    Statement stmt = conn.createStatement();
    String sql="select * from "+session.getAttribute("uname")+" where ordered='未下单'";
    ResultSet rs=stmt.executeQuery(sql);
    while(rs.next()){
  %>
   <ul >
   <li>
   <div><input type="checkbox" value="1"  name="checkbox" class="selected"  /></div>
   <img class="image left" style="width:40px;height:50px;" src="<%=rs.getObject(4) %>"/>
   <div class="goodsName"><span class="rs2"><%=rs.getObject(2)%></span><br><span class="rs3"><%=rs.getObject(3)%></span></div>
   <div class="goodsPrice">￥<span class="rs5"><%=rs.getObject(5)%></span>.00</div>
   <div class="goods_Number"><div class="add-and-reduce">
   <span class="reduce">&minus;</span><span class="rs6"><%=rs.getObject(6)%></span><span class="add">&#43;</span>
   </div> </div>
   <div class="subTotal">￥<span class="rs7"><%=rs.getObject(7)%></span>.00</div>
   <div class="delete"><%=rs.getObject(11) %></div><div class="ordered"></div>
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
   <jsp:include page="hidden.jsp"></jsp:include>
   <script type="text/javascript">
  $(function(){
   $(".add").click(function(){
   var num=$(this).prev().html();
   var int_num=parseInt(num);
   int_num++;
   $(this).prev().html(int_num);
   var subtotal=$(this).parents('li').find('.rs7').html();
   var int_subtotal=parseInt(subtotal);
   var price=$(this).parents('li').find('.rs5').html();
   var int_price=parseInt(price);
   int_subtotal=int_price*int_num;
   $(this).parents('li').find('.rs7').html(int_subtotal);
       var username=$(".username").html();
       var goodsName=$(this).parents('li').find('.rs2').text();
       var goodsDescribe=$(this).parents('li').find('.rs3').text();
       var goodsImg=' ';
       var goodsPrice=$(this).parents('li').find('.rs5').html();
       goodsPrice=parseInt(goodsPrice);
       var goodsNumber="1";
        var time=new Date();
       var goods_info=username+","+goodsName+","+goodsDescribe+","+goodsImg+","+goodsPrice+","+goodsNumber+","+time;
        $("#goods_info").focus();
       $("#goods_info").val(goods_info);
        $("#goods_info").blur();
   });
   
   $(".reduce").click(function(){
   var num=$(this).next().html();
   var int_num=parseInt(num);
   if(int_num>=2){
   int_num--;
   $(this).next().html(int_num);
   var subtotal=$(this).parents('li').find('.rs7').html();
   var int_subtotal=parseInt(subtotal);
   var price=$(this).parents('li').find('.rs5').html();
   var int_price=parseInt(price);
   int_subtotal=int_price*int_num;
   $(this).parents('li').find('.rs7').html(int_subtotal);
       var username=$(".username").html();
       var goodsName=$(this).parents('li').find('.rs2').text();
       var goodsDescribe=$(this).parents('li').find('.rs3').text();
       var goodsImg=' ';
       var goodsPrice=$(this).parents('li').find('.rs5').html();
       goodsPrice=parseInt(goodsPrice);
       var goodsNumber="-1";
        var time=new Date();
       var goods_info=username+","+goodsName+","+goodsDescribe+","+goodsImg+","+goodsPrice+","+goodsNumber+","+time;
        $("#goods_info").focus();
       $("#goods_info").val(goods_info);
        $("#goods_info").blur();
   }
   });
   /*单个删除操作*/
    $(".delete").click(function(){
    var num=$(this).parents('li').find('.rs6').html();
       var username=$(".username").html();
       var goodsName=$(this).parents('li').find('.rs2').text();
       var goodsDescribe=$(this).parents('li').find('.rs3').text();
       var goodsImg=' ';
       var goodsPrice=$(this).parents('li').find('.rs5').html();
       goodsPrice=parseInt(goodsPrice);
       var goodsNumber="-"+num;
       var goods_info=username+","+goodsName+","+goodsDescribe+","+goodsImg+","+goodsPrice+","+goodsNumber;    
        $("#goods_info").focus();
       $("#goods_info").val(goods_info);
        $("#goods_info").blur();   
     $(this).parents('li').css("display","none");
   });
   
   $(".ordered").click(function(){
       var username=$(".username").html();
       var goodsName=$(this).parents('li').find('.rs2').text();
       var goodsDescribe=$(this).parents('li').find('.rs3').text();
       var order_info=username+","+goodsName+","+goodsDescribe;    
        $("#order_info").focus();
       $("#order_info").val(order_info);
        $("#order_info").blur();
   });
   
     /*批量删除操作*/
   $(".delete-select").click(function(){ 
   $("#select-all").prop("checked",false);
   $("#select-all2").prop("checked",false);  
   $("li").each(function(index){ 
    if( $(this).find('input').prop("checked")==true){
    $(this).find('.delete').click();
    }
   })
   });
   /*单个商品点击对已选择数量及总价的影响函数*/
   $("li input").click(function(){
   if($(this).prop("checked")==true){
   $(this).parents('li').css("background-color","#FFF4E8");
   var number=$(this).parents('li').find('.rs6').html();
   var subtotal=$(this).parents('li').find('.rs7').html();
   var num=$(".checked-num").html();
   var price=$(".total-price").html();
   var totalprice=parseInt(price)+parseInt(subtotal);
   var checkednumber=parseInt(num)+parseInt(number);
   $(".checked-num").html(checkednumber);
   $(".total-price").html(totalprice);
   }else{
   $(this).parents('li').css("background-color","#fff"); 
   var number=$(this).parents('li').find('.rs6').html();
   var subtotal=$(this).parents('li').find('.rs7').html();
   var num=$(".checked-num").html();
   var price=$(".total-price").html();
   var totalprice=parseInt(price)-parseInt(subtotal);
   var checkednumber=parseInt(num)-parseInt(number);
   $(".checked-num").html(checkednumber);
   $(".total-price").html(totalprice);
   }
   })
   /*去结算*/
  $("#billing").click(function(){
  if($(".checked-num").html()==0){alert("您还没有选中任何商品！");}
  else{
  $("li").each(function(index){ 
    if( $(this).find('input').prop("checked")==true){
    $(this).find('.ordered').click();
    }  
   })
    window.location.href='jsp/billing.jsp';
    }
  }) 
  })
   </script>
    <div class="main-operation">
    <input  type="checkbox" value="1"  name="checkbox" id="select-all2"  />
    <span class="select-all">全选</span>
    <a href="javascript:void(0)" class="delete-select">删除选中的商品</a>
    <span style="margin-left:250px;">已选择</span> <b class="checked-num" style="color:#f00;">0</b> <span>件商品</span><span style="margin-left:80px;">总价（不含运费）：</span> <b style="color:#f00;">￥</b><b class="total-price" style="color:#f00;">0</b><b style="color:#f00;">.00</b>
    <a href="javascript:void(0)" class="right" id="billing">去结算</a>
    </div>  
    </div>
    <div class="goods-part2" >出错了 -_-||</div>
</div>

<!--主体部分     结束 -->
<div style="height:120px;"></div>
 

<!-- 底部  开始 -->
 
<jsp:include page="foot.jsp"></jsp:include>

 <!-- 底部  结束 -->

</body>

</html>