<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.* "%>
<%@ page import="com.jdbc.utils.DBHelper"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>验证页面</title>
</head>
<body>

<%
 String username= request.getParameter("username");
 String password = request.getParameter("pass");
 String email = request.getParameter("email");
  String address = request.getParameter("address");
 String contact = request.getParameter("contact");
     Class.forName("org.gjt.mm.mysql.Driver");
     Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/user_info_db?useUnicode=true&characterEncoding=utf-8","root","12345"); 
     Statement stmt = conn.createStatement(); 
 String sql="insert into users_tb(username,password,email,address,tel)values('"+username+"','"+password+"','"+email+"','"+address+"','"+contact+"')";
 String sql2="create table "+username+" like demo";     
          try{ 
           stmt.executeUpdate(sql);
          stmt.executeUpdate(sql2);
                  /*注册成功  返回注册成功页面 */
              response.sendRedirect("suc-register.jsp"); 
           }catch(Exception ee){ee.printStackTrace();}
             stmt.close();
           conn.close();
           
         
 %>


</body>
</html>