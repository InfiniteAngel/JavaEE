<%--
  Created by IntelliJ IDEA.
  User: 梁昕宇
  Date: 2018/12/18
  Time: 上午 09:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>获得session属性</title>
</head>
<body>
<%  // 从session属性范围中取得属性，并执行向下转型操作
    String username =(String)session.getAttribute("name");
    Date usebirthday = (Date) session.getAttribute("birthday");
%>
<h2>姓名：<%=username%></h2>  <!--输出取得的属性内容-->
<h2>生日：<%=usebirthday%></h2><!--输出取得的属性内容-->
</body>
</html>
