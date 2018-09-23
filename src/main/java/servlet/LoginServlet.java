package servlet;
import bean.User;

import java.awt.datatransfer.SystemFlavorMap;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;

public class LoginServlet extends HttpServlet{
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
       doGet(request, response);
   }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
 throws ServletException, IOException {
 HttpSession session=request.getSession();
  //以下两行主要解决中文乱码问题
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
  //获得表单请求信息
        String getUser=request.getParameter("form-username");//用户名
        System.out.println(getUser);
        System.out.println("session参数"+getUser);
        String getpassword=request.getParameter("form-password");//密码
        String otherAction=request.getParameter("action");//获取退出登录等信息
//验证登录信息
 ConnectMysql connectMysql=new ConnectMysql();
//实例化自定义的 ConnectMysql对象
 Connection connection=connectMysql.getConnection();//从connectMysql中获得数据连接对象
ResultSet rs;//游标对象
User user=new User();



        String uploadPath = request.getServletContext().getRealPath("./") + File.separator + "upload" + File.separator + getUser;
        System.out.println("......"+uploadPath);


        String uploadPath0 = uploadPath + File.separator + "festival";
        String uploadPath1 = uploadPath + File.separator + "scene";
        String uploadPath2 = uploadPath + File.separator + "design";
        String uploadPath3 = uploadPath + File.separator + "beauty";
        String uploadPath4 = uploadPath + File.separator + "anime";
        String uploadPath5 = uploadPath + File.separator + "food";

        // 如果目录不存在则创建
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }
        File uploadDir0 = new File(uploadPath0);
        if (!uploadDir0.exists()) {
            uploadDir0.mkdir();
        }
        File uploadDir1 = new File(uploadPath1);
        if (!uploadDir1.exists()) {
            uploadDir1.mkdir();
        }
        File uploadDir2 = new File(uploadPath2);
        if (!uploadDir2.exists()) {
            uploadDir2.mkdir();
        }
        File uploadDir3 = new File(uploadPath3);
        if (!uploadDir3.exists()) {
            uploadDir3.mkdir();
        }
        File uploadDir4 = new File(uploadPath4);
        if (!uploadDir4.exists()) {
            uploadDir4.mkdir();
        }
        File uploadDir5 = new File(uploadPath5);
        if (!uploadDir5.exists()) {
            uploadDir5.mkdir();
        }


 try {
   PreparedStatement pStatement=connection.prepareStatement("select * from user where user=? and password=?");
   pStatement.setString(1, getUser);
   pStatement.setString(2, getpassword);
  //把经过查询得到的符合条件的记录交给游标对象rs
   rs=pStatement.executeQuery();
  //在游标对象rs中找到每一条记录，实际上如果用户名username不允许重复，则记录只有一条
     System.out.println(otherAction+"wai");

     if(otherAction!=null){
         //如果得到了"退出登录"的请求，则将登录的用户名信息置为null
         System.out.println(otherAction);
         session.setAttribute("lUserName", null);
         response.sendRedirect("home.jsp");


     }else {
         if (rs.next()) {
             //把查询的数据封装到User对象，以后使用时只需要使用这个对象就可以了
             request.setAttribute("message", getUser);

             session.setAttribute("lUserName", getUser);//向会话对象写入数据

             request.getRequestDispatcher("homee.jsp").forward(request, response);
             user.setUserData(rs.getString(3), rs.getString(1), rs.getString(2));
             // response.sendRedirect("Photo.jsp");

         } else {

             request.setAttribute("message", "用户名或者密码错误，登陆失败！请重新登录");
             request.getRequestDispatcher("login.jsp").forward(request, response);

             System.out.println("---");
         }
     }
 } catch (SQLException e) {

     e.printStackTrace();

 }



          }

}
