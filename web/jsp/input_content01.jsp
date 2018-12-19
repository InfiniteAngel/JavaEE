<%--
  Created by IntelliJ IDEA.
  User: 梁昕宇
  Date: 2018/12/18
  Time: 上午 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>输入文件名称和内容</title>
</head>
<body>
<form action="input_content.jsp" method="post">
    输出文件名称：<input type="text" name="filename"><br>
    输入文件内容：<textarea name="filecontent" cois="30" rows="3"></textarea><br>
    <input type="submit" value="保存">
    <input type="reset" value="重置">
</form>
</body>
</html>
