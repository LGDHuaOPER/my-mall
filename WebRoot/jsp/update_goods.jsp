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
String update_goods = request.getParameter("update_goods"); 
String [] sp=update_goods.split(",");
String id=sp[0];
String name=sp[1];
String describe=sp[2];
String imgaddress=sp[3];
String price=sp[4];
String evaluate=sp[5];
String position=sp[6];
String point=sp[7];
 Class.forName("org.gjt.mm.mysql.Driver");
 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/user_info_db?useUnicode=true&characterEncoding=utf-8","root","12345"); 
 Statement stmt = conn.createStatement();

     String update_sql="update goods_tb set goodsName='"+name+"',goodsDescribe='"+describe+"',goodsImg='"+imgaddress+"',goodsPrice='"+price+"',evaluate='"+evaluate+"',position='"+position+"',pointTo='"+point+"' where id='"+id+"' ";
     stmt.executeUpdate(update_sql);  
       
     
             stmt.close();
             conn.close();
 %>

</body>
</html>