<%--
  Created by IntelliJ IDEA.
  User: 梁昕宇
  Date: 2018/12/17
  Time: 下午 04:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>取得客户端的IP地址、访问路径信息、提交的方式</title>
</head>
<body>
<%
    String method = request.getMethod();   //取得提交方式
    String ip = request.getRemoteAddr();   //取得客户端的IP地址
    String path = request.getServletPath(); //取得访问路径
    String contextPath = request.getContextPath(); //取得上下文资源名称

%>
<h3>请求方式：<%=method%></h3>
<h3>IP地址：<%=ip%></h3>
<h3>访问路劲：<%=path%></h3>
<h3>上下文名称：<%=contextPath%></h3>
</body>
</html>
