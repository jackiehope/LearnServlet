<%--
  Created by IntelliJ IDEA.
  User: VISIOM
  Date: 2016/5/8
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*"%>

<html>
<head>
    <title>客户端信息</title>
</head>
<body>
<%
    Integer accessCount = (Integer) session.getAttribute("accessCount");
    /*out.println(accessCount);*/
    if (accessCount == null) {
        accessCount = new Integer(1);
    } else {
        accessCount = accessCount + 1;
    }
    session.setAttribute("accessCount", accessCount);
%>

<div align="center">
    <%-- 表达式语言EL --%>
<p>${header["user-agent"]}</p>
<p>${cookie.values()}</p>
${param.size()}<br>
        <table align="center" cellpadding="1" bgcolor="#faebd7" cellspacing="1" border="1">
        <tr><td>客户主机名</td><td><%= request.getRemoteHost() %></td></tr>
        <tr><td>客户端IP地址</td><td><%= request.getRemoteAddr() %></td></tr>
        <tr><td>请求方法</td><td><%= request.getMethod() %></td></tr>
        <tr><td>请求协议</td><td><%= request.getProtocol() %></td></tr>
        <tr><td>编码方式</td><td><%= request.getCharacterEncoding() %></td></tr>
        <tr><td>内容类型</td><td><%= request.getContentType() %></td></tr>
        <tr><td>请求URI</td><td><%= request.getRequestURI()%></td></tr>
        <tr><td>端口</td><td><%= request.getRemotePort()%></td></tr>
        <tr><td>请求参数</td><td><%= request.getQueryString()%></td></tr>
        <tr><td>回话状态</td><td><%= session.isNew()?"新会话":"旧会话"%></td></tr>
        <tr><td>回话ID</td><td><%= session.getId() %></td></tr>
        <tr><td>Cookie</td><td><%= request.getHeader("Cookie") %></td></tr>
        <tr><td>创建时间</td><td><%= new Date(session.getCreationTime()) %></td></tr>
        <tr><td>最近访问时间</td><td><%= new Date(session.getLastAccessedTime()) %></td></tr>
        <tr><td>访问次数</td><td><%= session.getAttribute("accessCount") %></td></tr>
        <tr><td>失效时间</td><td><%= session.getMaxInactiveInterval() %></td></tr>
        <tr><td>页面信息</td><td><%= getServletInfo() %></td></tr>
        <tr><td>页面配置</td><td><%= getServletConfig() %></td></tr>
        </table>
        <input type="button" name="clear" value="清除cookie">
        <%--<% session.invalidate(); %>--%>
我知道你的IP了：<%= request.getCookies() %><br>
</div>
</body>
</html>
