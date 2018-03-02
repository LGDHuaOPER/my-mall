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

String delete_user = request.getParameter("delete_user"); 
String [] sp=delete_user.split(",");
String user_id=sp[0];
String user_tb=sp[1];
 Class.forName("org.gjt.mm.mysql.Driver");
 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/user_info_db?useUnicode=true&characterEncoding=utf-8","root","12345"); 
 Statement stmt = conn.createStatement();
     String sql1="delete from users_tb where id='"+user_id+"' ";
     String sql2="drop table "+user_tb+"";
       stmt.executeUpdate(sql1);
       stmt.executeUpdate(sql2);
             stmt.close();
             conn.close();
 %>

</body>
</html>