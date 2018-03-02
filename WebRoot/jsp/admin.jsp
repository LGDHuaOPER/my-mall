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
   
   <div class="middle"></div>
   
   <div class="main">
      <div class="main-left left">
         <div class="left-title">
                        主要功能模块
         </div>
         <ul>
         <li class="active"><img alt="" src="images/user.png">用户管理</li>
         <li><img alt="" src="images/goods.png">商品管理</li>
         <li><img alt="" src="images/order.png">订单管理</li>
         </ul>
      </div>
      
      <jsp:include page="admin-hidden.jsp"></jsp:include>
      
      <div class="main-right right">
      <div class="users">
         <div class="users-head common">
         <span class="id">id</span>
         <span class="name">用户名</span>
         <span class="pass">密码</span>
         <span class="mail">邮箱</span>
         <span class="address">地址</span>
         <span class="tel">联系方式</span>
         <span class="carnum">购物车商品数量</span>
         <span class="ordernum">订单数量</span>
         <span class="operation">操作</span>
         </div>
         <div class="users-content">
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
        String sql = "SELECT * FROM users_tb";  
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
        <li class="users-li">
         <span class="id"><input type="checkbox" style="margin-right:5px;position:relative;top:1px;"/><%=rs.getObject(1)%></span>
         <span class="name"><%=rs.getObject(2)%></span>
         <span class="pass"><%=rs.getObject(3)%></span>
         <span class="mail"><%=rs.getObject(4)%></span>
         <span class="address"><%=rs.getObject(5)%></span>
         <span class="tel"><%=rs.getObject(6)%></span>
         <span class="carnum"><%=rs.getObject(7)%></span>
         <span class="ordernum"><%=rs.getObject(8)%></span>
         <span class="operation"><span class="delete">删除</span></span>
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
<a href = "jsp/admin.jsp?curPage=1" >首页</a>  
<a class="prev"  href = "jsp/admin.jsp?curPage=<%=curPage-1%>" >上一页</a>  
<a class="next" href = "jsp/admin.jsp?curPage=<%=curPage+1%>" >下一页</a>  
<a href = "jsp/admin.jsp?curPage=<%=pageCount%>" style="padding-right:20px;">尾页</a>  
   第<span class="curPage"><%=curPage%></span>页/共<span class="pageCount"><%=pageCount%></span>页 
  </div>
         <div class="users-bottom common">
         <span><input type="checkbox"  id="select-all" style="margin-right:5px;position:relative;top:1px;"/>全选</span><span class="delete-select">删除选中的用户</span>
         </div>
      </div>
      </div>
   </div>
  </body>
</html>
