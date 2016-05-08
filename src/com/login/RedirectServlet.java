package com.login;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by VISIOM on 2016/5/8.
 */
@WebServlet(name = "RedirectServlet")
public class RedirectServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userAgent = request.getHeader("User-Agent");
        if ((userAgent != null) && (userAgent.indexOf("MSIE") != -1 )) {
            PrintWriter out = response.getWriter();
            out.println("hello redirect");
           /* 容器立即返回内容
            out.flush();*/
            response.sendRedirect("http://www.microsoft.com");
            return;
        } else {
            response.sendRedirect("https://www.baidu.com");
            return;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
