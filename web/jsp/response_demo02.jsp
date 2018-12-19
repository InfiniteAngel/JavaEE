<%--
  Created by IntelliJ IDEA.
  User: 梁昕宇
  Date: 2018/12/17
  Time: 下午 04:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>页面跳转</title>
</head>
<body>
<%!
    int count =0;
%>
<%
    response.setHeader("refresh","3;URL=hello.htm");
%>

</body>
</html>
