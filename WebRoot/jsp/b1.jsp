<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="java.sql.* "%>
<%@ page import="com.jdbc.utils.DBHelper"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>手机</title>
    <base href="<%=basePath%>">
    <link rel='stylesheet' href='css/reset.css' />
    <link rel='stylesheet' href='css/item.css' />
    <script src="js/jquery.js" ></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/distpicker.data.js"></script>
    <script src="js/distpicker.js"></script>
    <script src="js/address.js"></script>
</head>
<body>

<!--头部  开始 -->
<jsp:include page="head.jsp"></jsp:include>
<!--头部  结束 -->

<!--导航 商品详细列表    开始 -->
<jsp:include page="banner3.jsp"></jsp:include>
<!--导航 商品详细列表    结束 -->


<!-- 主体部分  开始 -->

<div class="main">
   <!-- 主体部分右侧上部  开始 -->
   <div class="options-container right">
      <ul>
          <li>
              <b>手机：</b><span ><a href="">裸机 (773)</a></span><span><a href="">合约机 (192)</a></span>
          </li>
          <li>
              <b>品牌：</b><span class="no-limit"><a href="">不限</a></span><span><a href="">三星</a></span><span><a href="">三星</a></span><span><a href="">三星</a></span><span><a href="">三星</a></span><span><a href="">三星</a></span>
          </li>
          <li>
              <b>屏幕尺寸：</b><span class="no-limit"><a href="">不限</a></span><span><a href="">超大屏幕 (>5.9英寸)</a></span><span><a href="">大屏幕 (4.8-5.8英寸)</a></span><span><a href="">主流屏幕 (4.0-4.7英寸)</a></span>
          </li>
          <li>
              <b>操作系统：</b><span class="no-limit"><a href="">不限</a></span><span><a href="">Android</a></span><span><a href="">Android</a></span><span><a href="">Android</a></span><span><a href="">Android</a></span>
          </li>
          <li>
              <b>网络制式：</b><span class="no-limit"><a href="">不限</a></span><span><a href="">4G(TD-LTE)</a></span><span><a href="">4G(TD-LTE)</a></span><span><a href="">4G(TD-LTE)</a></span><span><a href="">4G(TD-LTE)</a></span>
          </li>
          <li>
              <b>更多选项：</b>
              <select style="margin-left:0px; ">
                 <option value="CPU核心数">CPU核心数</option>
                 <option value="CPU核心数" selected="selected">CPU核心数</option>
                 <option value="CPU核心数">CPU核心数</option>
                 <option value="CPU核心数">CPU核心数</option>
              </select>
              <select style="margin-left:10px;">
                 <option value="摄像头像素">摄像头像素</option>
                 <option value="摄像头像素">摄像头像素</option>
                 <option value="摄像头像素">摄像头像素</option>
                 <option value="摄像头像素" selected="selected">摄像头像素</option>
              </select>
          </li>
          <li class="last-li">
              <b class="left">送至</b>
              <form class="form-inline left">
                 <div data-toggle="distpicker">
                    <div class="form-group">
                       <select class="form-control" id="province2" data-province="---- 选择省 ----"></select>
                    </div>
                    <div class="form-group">
                       <select class="form-control" id="city2" data-city="---- 选择市 ----"></select>
                    </div>
                    <div class="form-group">
                       <select class="form-control" id="district2" data-district="---- 选择区 ----"></select>
                    </div>
                  </div>
              </form>
              <i class="right">共 <i style="color:#D70054;font-weight:bold;font-style: normal;">18797</i> 件商品</i></li>
        </ul>
   </div>
   <!--主体部分右侧上部  结束 -->

   <!--主体部分左侧  开始 -->
   <div class="main-list">
      <h3>相关产品推荐</h3>
      <h4>手机配件</h4>
      <ul class="list-ul">
        <li><a href="">手机电池</a></li>
        <li><a href="">蓝牙耳机</a></li>
        <li><a href="">手机贴膜</a></li>
        <li><a href="">手机挂坠</a></li>
        <li><a href="">充电器</a></li>
        <li><a href="">存储卡</a></li>
        <li><a href="">数据线</a></li>
        <li><a href="">保护套</a></li>
      </ul>
      <h4>手机配件</h4>
      <ul class="list-ul">
        <li><a href="">手机电池</a></li>
        <li><a href="">蓝牙耳机</a></li>
        <li><a href="">手机贴膜</a></li>
        <li><a href="">手机挂坠</a></li>
        <li><a href="">充电器</a></li>
        <li><a href="">存储卡</a></li>
        <li><a href="">数据线</a></li>
        <li><a href="">保护套</a></li>
      </ul>
      <ul class="img-ul">
         <li><a href=""><img src="images/item.jpg"><div class="img-desrciption">全网底价Apple 苹果 ipad mini 1</div><div class="img-price">￥2088.00</div></a></li>
         <li><a href=""><img src="images/item.jpg"><div class="img-desrciption">全网底价Apple 苹果 ipad mini 1</div><div class="img-price">￥2088.00</div></a></li>
         <li><a href=""><img src="images/item.jpg"><div class="img-desrciption">全网底价Apple 苹果 ipad mini 1</div><div class="img-price">￥2088.00</div></a></li>
         <li><a href=""><img src="images/item.jpg"><div class="img-desrciption">全网底价Apple 苹果 ipad mini 1</div><div class="img-price">￥2088.00</div></a></li>
         <li><a href=""><img src="images/item.jpg"><div class="img-desrciption">全网底价Apple 苹果 ipad mini 1</div><div class="img-price">￥2088.00</div></a></li>
      </ul>
   </div>
   <!--主体部分左侧 结束 -->


   <!--主体部分右侧下部  开始 -->
   <div class="main-right right">
      <ul>
         <%
  try{
    Class.forName("org.gjt.mm.mysql.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/user_info_db?useUnicode=true&characterEncoding=utf-8","root","12345"); 
    Statement stmt = conn.createStatement();
    String sql="select * from goods_tb where position='b1' ";
    ResultSet rs=stmt.executeQuery(sql);
    while(rs.next()){
  %>
         <li>
             <div class="box" > 
                <a href="<%=rs.getObject(8)%>"><img src="<%=rs.getObject(4)%>"></a>
                <div class="li-text"><a href="<%=rs.getObject(8)%>"><%=rs.getObject(2)%></a></div> 
                <div class="li-style">默认选择：<span><%=rs.getObject(3)%></span></div>   
                <div><b style="color:#D70000;">￥</b><span class="price" ><%=rs.getObject(5)%>.00</span>共 <a class="evaluate" href="<%=rs.getObject(8)%>"><%=rs.getObject(6)%></a> 条评论</div>  
                <button class="addcar" type="button"><span class="imooc-icon" >&#xe93a;</span>加入购物车</button>
             </div> 
         </li>
          <%
  }
   rs.close();
   stmt.close();
   conn.close();
   }catch(Exception e){
    e.printStackTrace();
   }
   %>
      </ul>


      <div class="page-icon">
         <span class="page-disabled">上一页</span>
         <a class="page-current" href="#">1</a>
         <a href="#">2</a>
         <a href="#">3</a>
         <a href="#">4</a>
         <a href="#">5</a>
         <a href="#">6</a>
         <a href="#">7</a>
         <a href="#">...</a>
         <a href="#">199</a>
         <a href="#">200</a>
        <span class="page-next" href="#">下一页</span>
      </div>
   </div>
<!--主体部分右侧下部  结束 -->

</div>
<!--主体部分  结束 -->

<!--右侧固定栏  开始 -->

<jsp:include page="fix-right.jsp"></jsp:include>

<!--右侧固顶栏 结束 -->
<!-- 隐藏表单  开始 -->
 

<jsp:include page="hidden.jsp"></jsp:include>

 <!-- 隐藏表单  结束 -->
<script type="text/javascript" src='js/jquery-ui.min.js'></script>
<script type="text/javascript">
 $(function(){
 /*检测是否登录   若没有登录，则通过隐藏表单方式设置购物车商品数量*/
 if($(".username").html()=="null"){
      $('.addcar').on('click', function (){
       var num=$(".num-area").html();
    var int_num=parseInt(num);
    int_num++;
    $("#car_num").focus();
    $("#car_num").val(int_num);
    $("#car_num").blur();
    setTimeout(function(){ $(".num-area").html(int_num);
        $(".goodsNumber span").html(int_num);
},1500)
      });
} /*若已经登录，则通过读取数据库方式设置购物车商品数量*/
 else{ $('.addcar').on('click', function (){
    var num=$(".num-area").html();
    var int_num=parseInt(num);
    int_num++;
    setTimeout(function(){ $(".num-area").html(int_num);
        $(".goodsNumber span").html(int_num);
},1500)
       var username=$(".username").html();
       var goodsName=$(this).parent().find('.li-text').text();
       var goodsDescribe=$(this).parent().find('.li-style span').text();
       var goodsImg=$(this).parent().find('img').attr('src');
       var goodsPrice=$(this).parent().find('.price').html();
       goodsPrice=parseInt(goodsPrice);
       var goodsNumber="1";
       var time=new Date();
       var goods_info=username+","+goodsName+","+goodsDescribe+","+goodsImg+","+goodsPrice+","+goodsNumber+","+time;
        $("#goods_info").focus();
       $("#goods_info").val(goods_info);
        $("#goods_info").blur();
      });
 
 }})

$('.addcar').on('click', function () {
    var cart = $('.cart');
    var imgtodrag = $(this).parent().find('img').eq(0);
    if (imgtodrag) {
        var imgclone = imgtodrag.clone().offset({
            top: imgtodrag.offset().top,
            left: imgtodrag.offset().left
        }).css({
            'opacity': '0.5',
            'position': 'absolute',
            'height': '150px',
            'width': '150px',
            'z-index': '100'
        }).appendTo($('body')).animate({
            'top': cart.offset().top + 10,
            'left': cart.offset().left + 10,
            'width': 75,
            'height': 75
        }, 1000, 'easeInOutExpo');
        setTimeout(function () {
            cart.effect('shake', { times: 1 }, 200);
        }, 1500);
        imgclone.animate({
            'width': 0,
            'height': 0
        }, function () {
            $(this).detach();
        });
    }
});

</script>

<div class="clear" style="height:50px;"></div>
 <!-- 底部  开始 -->
 
<jsp:include page="foot.jsp"></jsp:include>

 <!-- 底部  结束 -->
 
<!-- 顶部 对右侧固定栏中购物车数量进行读取 -->
 <script src="js/read-num.js" ></script> 
</body>

</html>