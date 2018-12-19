<%--
  Created by IntelliJ IDEA.
  User: 梁昕宇
  Date: 2018/12/18
  Time: 上午 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>获取真实路径</title>
</head>
<body>
    <%
      String path = application.getRealPath("/");
    %>
    <h3>真实路径：<%=path%></h3>

</body>
</html>
