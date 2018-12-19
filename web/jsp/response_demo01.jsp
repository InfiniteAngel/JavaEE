<%--
  Created by IntelliJ IDEA.
  User: 梁昕宇
  Date: 2018/12/17
  Time: 下午 04:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>设置头信息</title>
</head>
<body>
<%! //定义全局变量
    int count = 0;
%>
<%
    response.setHeader("refresh","2");//设置两秒一刷新
%>
<h3>已经访问了<%=count++%>次！</h3>

</body>
</html>
