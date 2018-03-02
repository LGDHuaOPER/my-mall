package com.jdbc.utils;

import java.sql.ResultSet;  
import java.sql.SQLException;  

public class Demo {
	static String sql = null;  
    static DBHelper db1 = null;  
    static ResultSet ret = null;  
  
    public static void main(String[] args) {  
        sql = "select *from users_tb";//SQL语句  
        db1 = new DBHelper(sql);//创建DBHelper对象  
    int s=0;
        try {
            ret = db1.pst.executeQuery();//执行语句，得到结果集  
            while (ret.next()) {  
                String uid = ret.getString(2);  
                String ufname = ret.getString(3);  
                String ulname = ret.getString(4);  
                int udate = ret.getInt(7); 
                s=s+udate;
                System.out.println(uid + "\t" + ufname + "\t" + ulname + "\t" + udate );  
            }//显示数据  
            System.out.println(s);
            ret.close();  
            db1.close();//关闭连接  
        } catch (SQLException e) {  
            e.printStackTrace();  
        }  
    }  
}
