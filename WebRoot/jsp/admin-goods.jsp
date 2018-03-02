<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.* "%>
<%@ page import="com.jdbc.utils.DBHelper"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>后台管理</title>
	<link rel="stylesheet" type="text/css" href="css/admin.css">
	<link rel="stylesheet" type="text/css" href="css/reset.css">
	<script src="js/jquery.js" ></script>
	<script src="js/admin.js" ></script>
  </head>
  <body style="background-color:#EAE5E5">
   <jsp:include page="admin-head.jsp"></jsp:include>
   
   <div class="middle">
      <div class="hidden">
      <span style="text-align:center;margin:0 5px 0 30px;width:5%;">id:</span>
      <span class="input1" ></span>
      <input type="text" value="" class="input2" style="width:27%;">
      <input type="text" value="" class="input3" style="width:18%;">
      <input type="text" value="" class="input4" style="width:12%;">
      <input type="text" value="" class="input5" style="width:4%;">
      <input type="text" value="" class="input6" style="width:5%;">
      <input type="text" value="" class="input7" style="width:4%;">
      <input type="text" value="" class="input8">
      <input type="button" onclick="update_goods()" value="确认" style="border-radius:2px;padding:3px;cursor:pointer;background-color:#79C2E7;color:#fff;">
      </div>
      <div class="hidden2">
      <input type="text" value="" class="input9" style="width:27%;">
      <input type="text" value=" " class="input10" style="width:18%;">
      <input type="text" value="images/.jpg" class="input11" style="width:13%;">
      <input type="text" value="" class="input12" style="width:5%;">
      <input type="text" value="0" class="input13" style="width:5%;">
      <input type="text" value="" class="input14" style="width:5%;">
      <input type="text" value="javascript:void(0)" class="input15" style="width:10%;">
      <input type="button" onclick="add_goods()" value="确认" style="border-radius:2px;padding:3px;cursor:pointer;background-color:#79C2E7;color:#fff;">
      </div>
   </div>
   
   <div class="main">
      <div class="main-left left">
         <div class="left-title">
                        主要功能模块
         </div>
         <ul>
         <li ><img alt="" src="images/user.png">用户管理</li>
         <li class="active"><img alt="" src="images/goods.png">商品管理</li>
         <li><img alt="" src="images/order.png">订单管理</li>
         </ul>
      </div>
      
      <jsp:include page="admin-hidden.jsp"></jsp:include>
      
      <div class="main-right right">
      <div class="goods-head common">
         <span class="id">id</span>
         <span class="name">商品名称</span>
         <span class="describe">商品描述</span>
         <span class="imgaddress">图片地址</span>
         <span class="price">价格</span>
         <span class="evaluate">评论数量</span>
         <span class="position">所在位置</span>
         <span class="point">跳转页面</span>
         <span class="operation">操作</span>
         </div>
         <div class="goods-content">
         <%!  
    public static final String DRIVER = "com.mysql.jdbc.Driver";  
    public static final String USER = "root";  
    public static final String PASS = "12345";  
    public static final String URL = "jdbc:mysql://localhost:3306/user_info_db";  
    public static final int PAGESIZE = 14;  
    int pageCount;  
    int curPage = 1;  
%>
 <%  
    //一页放14个  
    String user = null;  
    String pass = null;  
    try{  
        Class.forName(DRIVER);  
        Connection con = DriverManager.getConnection(URL,USER,PASS);  
        String sql = "SELECT * FROM goods_tb";  
        PreparedStatement stat = con.prepareStatement(sql,ResultSet.TYPE_FORWARD_ONLY,ResultSet.CONCUR_READ_ONLY);  
        ResultSet rs = stat.executeQuery();  
        rs.last();  
        int size = rs.getRow();  
        pageCount = (size%PAGESIZE==0)?(size/PAGESIZE):(size/PAGESIZE+1);  
        String tmp = request.getParameter("curPage");  
        if(tmp==null){  
            tmp="1";  
        }  
        curPage = Integer.parseInt(tmp);  
        if(curPage>=pageCount) curPage = pageCount;  
        boolean flag = rs.absolute((curPage-1)*PAGESIZE+1);
        int count = 0;  
          
        do{  
            if(count>=PAGESIZE)break;  
            count++;  
            %>
  <ul >
        <li class="goods-li">
         <span class="id"><input type="checkbox" style="margin-right:5px;position:relative;top:1px;"/><%=rs.getObject(1)%></span>
         <span class="name"><%=rs.getObject(2)%></span>
         <span class="describe"><%=rs.getObject(3)%></span>
         <span class="imgaddress"><%=rs.getObject(4)%></span>
         <span class="price"><%=rs.getObject(5)%></span>
         <span class="evaluate"><%=rs.getObject(6)%></span>
         <span class="position"><%=rs.getObject(7)%></span>
         <span class="point"><%=rs.getObject(8)%></span>
         <span class="operation"><span class="delete">删除</span><span class="update">更改</span></span>
       </li>
   </ul>
  <%
   
        }while(rs.next());  
        con.close();  
    }  
    catch(Exception e){  
          
    }  
%> 
         </div>
         <div class="page">
<a href = "jsp/admin-goods.jsp?curPage=1" >首页</a>  
<a class="prev"  href = "jsp/admin-goods.jsp?curPage=<%=curPage-1%>" >上一页</a>  
<a class="next" href = "jsp/admin-goods.jsp?curPage=<%=curPage+1%>" >下一页</a>  
<a href = "jsp/admin-goods.jsp?curPage=<%=pageCount%>" style="padding-right:20px;">尾页</a>  
   第<span class="curPage"><%=curPage%></span>页/共<span class="pageCount"><%=pageCount%></span>页
  </div>
          <div class="goods-bottom common">
         <span><input type="checkbox"  id="select-all2" style="margin-right:5px;position:relative;top:1px;"/>全选</span>
         <span class="delete-select2">删除选中的商品</span>
         <span class="add-goods">添加商品</span>
         <span class="upload-goods">上传商品图片</span>
         <span class="upload-jsps">上传商品详情页</span>
         <form id="form1" class="right" action='jsp/upload.jsp' method='post' enctype='multipart/form-data'>
                      请选择要上传的图片 <input type='file' id="upfile" name='upfile' size='50'>
         <input type='submit' id="submit" value='确 认'>
         </form>
         <form id="form2" class="right" action='jsp/upload2.jsp' method='post' enctype='multipart/form-data'>
                      请选择要上传的jsp文件 <input type='file' id="upfile" name='upfile' size='50'>
         <input type='submit' id="submit" value='确 认'>
         </form>
         </div>
    
      </div>
   </div>
  </body>
</html>
