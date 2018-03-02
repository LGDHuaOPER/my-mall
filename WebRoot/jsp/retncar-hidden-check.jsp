<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.* "%>
<%@page import="java.util.* "%>
<%@ page import="com.jdbc.utils.DBHelper"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>验证页面</title>
</head>
<body>

<%
String tableName = request.getParameter("return_shopcar"); 
 Class.forName("org.gjt.mm.mysql.Driver");
 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/user_info_db?useUnicode=true&characterEncoding=utf-8","root","12345"); 
 Statement stmt = conn.createStatement();
 String select_sql="select * from "+tableName+" where ordered='未下单' and clearing='结算中' ";
 ResultSet RS=(ResultSet)stmt.executeQuery(select_sql);
   while(RS.next()){
     int id= RS.getInt("id");
     Statement stmt2 = conn.createStatement();
     stmt2.executeUpdate( "update "+tableName+" set clearing='未结算' where id='"+id+"' ");         
     }   
  
             stmt.close();
             conn.close();
 %>

</body>
</html>