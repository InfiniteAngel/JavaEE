<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: 梁昕宇
  Date: 2018/12/17
  Time: 下午 03:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>显示全部的头信息</title>
</head>
<body>
<%
    Enumeration enu = request.getHeaderNames();    //取得全部头信息
    while (enu.hasMoreElements()){                  //依次取出头信息
        String headerName= (String) enu.nextElement();
        String headerValue=request.getHeader(headerName);  //取出头信息内容
%>
        <h5><%=headerName%>--><%=headerName%></h5>
<%
    }
%>
</body>
</html>
