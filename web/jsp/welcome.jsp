<%--
  Created by IntelliJ IDEA.
  User: 梁昕宇
  Date: 2018/12/18
  Time: 上午 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎页</title>
</head>
<body>
<%
    if(session.getAttribute("userid")!=null){
%>
<h3>欢迎<%=session.getAttribute("userid")%>光临本系统，<a href="login.jsp">注销</a>!</h3>
<%
    }
%>

</body>
</html>
