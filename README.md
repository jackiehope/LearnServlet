# 学习servlet
### 今天是2016/05/07
[TOC]
# Servlet学习
##web基本知识
1. Web服务器和Web浏览器
2. http协议
3. web容器tomcat, jetty
4. html
5. 什么是servlet,它的优缺点(对比cgi)

###http请求

jdk下载：
www.oracle.com
tomcat下载:
tomcat.apache.org

tomcat目录及作用
Servlet重载功能:reloadable="true"

##学习servlet
开发步骤: 编写代码、编译、部署、执行
1. 通过编辑器编写源代码
2. 利用jdk进行编译
3. 建立好目录结构，部署到web容器的webapp目录下
4. 启动web容器
5. 通过浏览器访问http://localhost:8080/<context>

如果使用IDE开发的话,上述步骤可以在通过IDE实现
servlet基础教程：http://www.runoob.com/servlet/servlet-tutorial.html
###web.xml
通过<servlet></servlet>和<servlet-mapping></servlet-mapping>两对标签来配置servlet
<init-param>初始化参数
<load-on-startup> servlet加载顺序控制
<welcome-file-list> 设置欢迎页面



###JSP页面
JSP全名为Java Server Pages，中文名叫java服务器页面，其根本是一个简化的Servlet设计，它[1]  是由Sun Microsystems公司倡导、许多公司参与一起建立的一种动态网页技术标准。JSP技术有点类似ASP技术，它是在传统的网页HTML（标准通用标记语言的子集）文件(*.htm,*.html)中插入Java程序段(Scriptlet)和JSP标记(tag)，从而形成JSP文件，后缀名为(*.jsp)。 用JSP开发的Web应用是跨平台的，既能在Linux下运行，也能在其他操作系统上运行。
它实现了Html语法中的java扩展（以 <%, %>形式）。JSP与Servlet一样，是在服务器端执行的。通常返回给客户端的就是一个HTML文本，因此客户端只要有浏览器就能浏览。
JSP技术使用Java编程语言编写类XML的tags和scriptlets，来封装产生动态网页的处理逻辑。网页还能通过tags和scriptlets访问存在于服务端的资源的应用逻辑。JSP将网页逻辑与网页设计的显示分离，支持可重用的基于组件的设计，使基于Web的应用程序的开发变得迅速和容易。 JSP(JavaServer Pages)是一种动态页面技术，它的主要目的是将表示逻辑从Servlet中分离出来。
Java Servlet是JSP的技术基础，而且大型的Web应用程序的开发需要Java Servlet和JSP配合才能完成。JSP具备了Java技术的简单易用，完全的面向对象，具有平台无关性且安全可靠，主要面向因特网的所有特点。

JSP新手教程 http://www.runoob.com/jsp/jsp-tutorial.html
|JSP页面元素   | 说明               | 标签语法           |
|--------------| ------             | ---------          |
| 声明         | 声明变量和定义方法 | <%! Java声明 %> |
| 小脚本       | 执行业务逻辑的Java代码| <% Java 代码 %> |
| 表达式       | 输出表达式的值     | <%= 表达式 %>      |
| 指令         | 设置页面属性       | <%@ 指令 %>        |
| 动作         | 指示页面完成的动作 | <jsp：动作名 />    |
| EL表达式     | 表达式语言         | ${param.username}  |
| 注释         | 注释               | <%-- 这是注释  --%>|
| 模板文本     | html文本           | <body></body>      |



###Servlet执行过程和生命周期
1. 调用init()方法加载和实例化Servlet类；
2. 初始化Servlet，
3. 容器接收到请求就调用它的service()方法；
4. 最后容器在Servlet实例上调用destroy()方法进入销毁状态。

###HttpServletRequest
###HttpServletResponse

###请求转发
###响应重定向
###发送状态码和错误消息

###DD文件

###ServletConfig接口
###ServletContext接口

##会话管理
##Cookie
