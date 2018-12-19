<%--
  Created by IntelliJ IDEA.
  User: 梁昕宇
  Date: 2018/12/17
  Time: 下午 05:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>设置Cookies</title>
</head>
<body>
<%
    Cookie c1 = new Cookie("lxh","lixinghua");
    Cookie c2 = new Cookie("mldn","mmldnjava");
    response.addCookie(c1);
    response.addCookie(c2);

%>
</body>
</html>
