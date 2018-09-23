package servlet;

import bean.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by DELL on 2018/7/5.
 */

public class SignUpServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //以下两行主要解决中文乱码问题
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String regUser=request.getParameter("regName");//注册用户名
        String regPassword=request.getParameter("regPwd");//注册密码
        ConnectMysql connectMysql=new ConnectMysql();
//实例化自定义的 ConnectMysql对象
        Connection connection=connectMysql.getConnection();//从connectMysql中获得数据连接对象
        ResultSet rs;//游标对象
        User user=new User();
        int result= 0;
        try {
            PreparedStatement regStatement=connection.prepareStatement("INSERT INTO user (user,password)VALUES(?,?)");
            regStatement.setString(1,regUser);
            regStatement.setString(2,regPassword);
            result=regStatement.executeUpdate();
            //connectMysql.closeDatabase();//关闭数据连接
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if(result==0){
            request.setAttribute("message","注册失败,请换一个用户名试试看哦");
            request.getRequestDispatcher("login.jsp").forward(request, response);

        }else{
            request.setAttribute("message","恭喜你，注册成功,请登录");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

    }
}
