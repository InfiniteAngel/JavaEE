<%@ page import="com.javaweb.ch02.Person" %><%--
  Created by IntelliJ IDEA.
  User: 梁昕宇
  Date: 2018/12/16
  Time: 下午 09:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JavaBean</title>
</head>
<body>
    <%
        Person p1 =new Person();

        pageContext.setAttribute("p1",p1);
        p1.setName("wawa");
        p1.setAge(23);
    %>
    <%=p1.getName()%><br/>
    <%=p1.getAge()%><br/>

</body>
</html>
