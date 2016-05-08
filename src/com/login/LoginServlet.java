package com.login;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by VISIOM on 2016/5/8.
 */
public class LoginServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        //验证用户名和密码
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.print("<html><body>");
        String location = "";
        if(username.equals("admin") && password.equals("admin")){
            out.println("登录成功, welcome" + username);
            request.setAttribute("username", username);
            location = "Info.jsp";
        }
        else{
            out.println("用户名或密码不对");
        }
        //返回请求信息
        out.println("</body></html>");
        RequestDispatcher dispatcher = request.getRequestDispatcher(location);
        dispatcher.forward(request, response);
    }


    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
