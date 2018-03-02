<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
String user_name = request.getParameter("username");
 try{
             Class.forName("org.gjt.mm.mysql.Driver");
             Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/user_info_db?useUnicode=true&characterEncoding=utf-8","root","12345");
             Statement stmt=(Statement)conn.createStatement();
             String sql="select * from users_tb where username='"+user_name+"'";
             ResultSet rs=(ResultSet)stmt.executeQuery(sql);
             if(rs.next())
                  {
                  /*注册失败  */
                  response.getWriter().write("false");
                  //这时注册名不可用
               }else 
               /*  注册成功   返回主页面  */
              
              response.getWriter().write("true"); //这时注册名可用
              
           }catch(Exception ee){ee.printStackTrace();}
 %>

