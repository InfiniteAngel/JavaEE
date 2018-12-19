<%--
  Created by IntelliJ IDEA.
  User: 梁昕宇
  Date: 2018/12/17
  Time: 下午 05:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>取出Cookies</title>
</head>
<body>
<%
    Cookie c[] =request.getCookies();  //取得全部的Cookie
    for(int x=0;x<c.length;x++){
%>

<h3><%=c[x].getName()%></h3>-><%=c[x].getValue()%></h3>

<%
    }
%>

</body>
</html>
