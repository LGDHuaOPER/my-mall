<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.* "%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>验证页面</title>
</head>
<body>

<%
 String user_name= request.getParameter("username");
 String pass_word = request.getParameter("pass");
 try{
             Class.forName("org.gjt.mm.mysql.Driver");
             Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/user_info_db?useUnicode=true&characterEncoding=utf-8","root","12345");
             Statement stmt=(Statement)conn.createStatement();
             String sql="select * from users_tb where username='"+user_name+"'";
             sql +="and password='"+pass_word+"'";
             ResultSet rs=(ResultSet)stmt.executeQuery(sql);
             if(rs.next())
                  {
                  String choosedNumber= rs.getString("choosedNumber");
                  String address= rs.getString("address");
                  String tel= rs.getString("tel");
                  session.setAttribute("login","ok");
                  session.setAttribute("uname",user_name);
                  session.setAttribute("address",address);
                  session.setAttribute("tel",tel);
                  session.setAttribute("choosedNumber",choosedNumber);
                  /*登录成功  返回首页 */
             response.sendRedirect("../index.jsp");
               }else 
               /*  登录失败   返回登录页面  */
              
               response.sendRedirect("wrong-login.jsp");
              
           }catch(Exception ee){ee.printStackTrace();}
        
 %>

</body>
</html>