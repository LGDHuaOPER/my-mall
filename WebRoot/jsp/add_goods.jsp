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
String add_goods = request.getParameter("add_goods"); 
String [] sp=add_goods.split(",");
String name=sp[0];
String describe=sp[1];
String imgaddress=sp[2];
String price=sp[3];
String evaluate=sp[4];
String position=sp[5];
String point=sp[6];
 Class.forName("org.gjt.mm.mysql.Driver");
 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/user_info_db?useUnicode=true&characterEncoding=utf-8","root","12345"); 
 Statement stmt = conn.createStatement();
     String add_sql="insert into goods_tb(goodsName,goodsDescribe,goodsImg,goodsPrice,evaluate,position,pointTo)values('"+name+"','"+describe+"','"+imgaddress+"','"+price+"','"+evaluate+"','"+position+"','"+point+"')";
     stmt.executeUpdate(add_sql);  
             stmt.close();
             conn.close();
 %>

</body>
</html>