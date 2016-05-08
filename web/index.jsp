<%--
  Created by IntelliJ IDEA.
  User: VISIOM
  Date: 2016/5/8
  Time: 1:57
  To change this template use File | Settings | File Templates.
--%>
<%-- JSP指令标签 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ include file="login.html"%>

<html>
  <head>
    <title>学习JSP</title>
  </head>
  <body>
  <%-- 页面每5秒自动刷新一次--%>
  <p><% response.setHeader("Refresh", "5"); %></p>
  <%-- JSP动作标签--%>
  <jsp:include page="Info.jsp"/>
  <b>hello</b><br>
  <%-- JSP的声明标签 --%>
  <%!
      String color[] = {"red", "green", "blue"};
      String getColor(int i){
        return color[i];
      }
  %>
  <%-- JSP表达式标签 --%>
  <%= color[0] %><br>
  <%! int count = 0; %>
  <%-- JSP脚本标签--%>
  <%  count++; %>
  您的IP是：<%= request.getRemoteAddr() %><br>
  您的IP是：<%= request.getRemoteHost() %><br>
  该页面已被访问 <%= count %> 次<br>
  该页面已被访问 <% out.println(count); %> 次

  </body>
</html>
