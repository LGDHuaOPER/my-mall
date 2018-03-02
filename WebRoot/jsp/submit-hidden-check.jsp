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
String pay = request.getParameter("pay"); 
String [] sp=pay.split(",");
String tableName=sp[0];
String num=sp[1];
num="￥"+num+".00";
session.setAttribute("num",num);
 Class.forName("org.gjt.mm.mysql.Driver");
 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/user_info_db?useUnicode=true&characterEncoding=utf-8","root","12345"); 
 Statement stmt = conn.createStatement();
 String select_sql="select * from "+tableName+" where clearing='结算中' ";
 ResultSet RS=(ResultSet)stmt.executeQuery(select_sql);
   while(RS.next()){
     int id= RS.getInt("id");
     Statement stmt2 = conn.createStatement();
     stmt2.executeUpdate( "update "+tableName+" set ordered='已下单' where id='"+id+"' ");         
     }   
      int S=0;
 String sql2="select * from "+tableName+" where ordered='未下单' "; 
        ResultSet rs=(ResultSet)stmt.executeQuery(sql2);
             while(rs.next())
                  {
                  int Number1= rs.getInt("goodsNumber");
                   S=S+Number1;
               }  
       String sql3="update users_tb set choosedNumber="+S+" where username='"+tableName+"' ";
             stmt.executeUpdate(sql3);               
              int B=0; 
             String sql4="select * from orders_tb where username='"+tableName+"' "; 
             ResultSet rs2=(ResultSet)stmt.executeQuery(sql4);
             while(rs2.next())
                  {
                  B++;
               } 
             String sql5="update users_tb set orders="+B+" where username='"+tableName+"' ";
             stmt.executeUpdate(sql5);
  
             stmt.close();
             conn.close();
 %>

</body>
</html>