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

String goods_info = request.getParameter("goods_info"); 
String [] sp=goods_info.split(",");
String tableName=sp[0];
String goodsName=sp[1];
String goodsDescribe=sp[2];
String goodsImg=sp[3];
String goodsPrice=sp[4];
String goodsNumber=sp[5];
int price=Integer.parseInt(goodsPrice);
int num=Integer.parseInt(goodsNumber);
int total=price*num;
String subTotal=Integer.toString(total);
 Class.forName("org.gjt.mm.mysql.Driver");
 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/user_info_db?useUnicode=true&characterEncoding=utf-8","root","12345"); 
 Statement stmt = conn.createStatement();
 String select_sql="select * from "+tableName+" where goodsName='"+goodsName+"' and goodsDescribe='"+goodsDescribe+"' and goodsPrice='"+goodsPrice+"' and ordered='未下单' ";
 ResultSet RS=(ResultSet)stmt.executeQuery(select_sql);
   if(RS.next()){
     int id= RS.getInt("id");
     int number1= RS.getInt("goodsNumber");
     String totalprice= RS.getString("subTotal");
     int total_number=num+number1;
     if(total_number>=1){
     int totalPrice=Integer.parseInt(totalprice);
     totalPrice+=total;
     String TotalPrice=Integer.toString(totalPrice);
     String update_sql="update "+tableName+" set goodsNumber="+total_number+" where id='"+id+"' ";
     String update_sql2="update "+tableName+" set subTotal="+TotalPrice+" where id='"+id+"' ";
                  stmt.executeUpdate(update_sql);
                  stmt.executeUpdate(update_sql2);
     }else{ 
     String delete_sql="delete from "+tableName+" where goodsName='"+goodsName+"' and goodsDescribe='"+goodsDescribe+"' and goodsPrice='"+goodsPrice+"' and ordered='未下单' ";
                  stmt.executeUpdate(delete_sql);
     }
   
   }
   else{
 String insert_sql="insert into "+tableName+" (goodsName,goodsDescribe,goodsImg,goodsPrice,goodsNumber,subTotal)values('"+goodsName+"','"+goodsDescribe+"','"+goodsImg+"','"+goodsPrice+"','"+goodsNumber+"','"+subTotal+"')";
  try{ 
           stmt.executeUpdate(insert_sql);
           }catch(Exception ee){ee.printStackTrace();}
         }
         int s=0;
 String sql2="select * from "+tableName+" where ordered='未下单' "; 
        ResultSet rs=(ResultSet)stmt.executeQuery(sql2);
             while(rs.next())
                  {
                  int Number1= rs.getInt("goodsNumber");
                   s=s+Number1;
               }  
       String sql3="update users_tb set choosedNumber="+s+" where username='"+tableName+"' ";
                  stmt.executeUpdate(sql3);
             stmt.close();
             conn.close();
 %>

</body>
</html>