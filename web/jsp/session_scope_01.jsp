<%--
  Created by IntelliJ IDEA.
  User: 梁昕宇
  Date: 2018/12/18
  Time: 上午 09:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>session属性</title>
</head>
<body>
<% //设置session 属性范围，此属性在一个浏览器中始终生效
    session.setAttribute("name","李兴华");
    session.setAttribute("birthday",new Date());

%>
<a href="session_scope_02.jsp">通过超链接取得属性</a>
</body>
</html>
