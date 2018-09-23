package servlet;

import java.sql.*;

import com.mysql.jdbc.*;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import com.sun.xml.internal.ws.policy.ComplexAssertion;

public class ConnectMysql{
	  private static Connection conn = null;
	  private static Statement stmt = null;
	  private static ResultSet rs = null;
	//数据库url
	  private static String url ="jdbc:mysql://localhost/test?user=root&password=&useUnicode=true&&characterEncoding=utf-8&autoReconnect = true";
	//访问数据库的用户名
	  private static String user = "root";
	//访问数据库的密码
	  private static String password = "";
	  //构造方法
	 public  ConnectMysql() {
		 try {
			 //加载驱动类
			   Class.forName("com.mysql.jdbc.Driver"); //加载mysql驱动
			   System.out.println("驱动加载成功！");
			  } catch (ClassNotFoundException e) {
			   System.out.println("驱动加载错误！");
			   e.printStackTrace();//
			  }
	 }
	 //获得数据库连接对象的方法
	 public static Connection getConnection(){
		  
		  try {
		   conn = (Connection) DriverManager.getConnection(url,user,password);
		   System.out.println("创建数据库成功！");
		   } catch (SQLException e) {
		   System.out.println("数据库链接错误");
		   e.printStackTrace();
		   }
		  return conn;
	 }
	 //关闭数据库
	 public static void closeDatabase() {
		  try {
		   if(rs != null) {
		    rs.close();
		    rs = null;
		   }
		   if(stmt != null) {
		    stmt.close();
		    stmt = null;
		   }
		   if(conn != null) {
		    conn.close();
		    conn = null;
		   }
		  } catch(Exception e) {
		   System.out.println("数据库关闭错误");
		   e.printStackTrace();
		  }
		 }
}
