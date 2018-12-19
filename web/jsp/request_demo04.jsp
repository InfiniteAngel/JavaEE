<%--
  Created by IntelliJ IDEA.
  User: 梁昕宇
  Date: 2018/12/17
  Time: 下午 02:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>练习</title>
</head>
<body>
<form action="request_demo5.jsp" method="post">
    姓名: <input type="text" name="uname"><br>
    性别：<input type="radio" name="sec" value="男" CHECKED>男
    <input type="radio" name="sex" value="女">女<br>
    城市：<select name="city">
    <option value="北京">北京</option>
    <option value="天津">天津</option>
    <option value="洛阳">洛阳</option>
</select><br>
    兴趣：<input type="checkbox" name="**inst" value="唱歌">唱歌
    <input type="checkbox" name="**inst" value="跳舞">跳舞
    <input type="checkbox" name="**inst" value="游泳">游泳
    <input type="checkbox" name="**inst" value="看书">看书
    <input type="checkbox" name="**inst" value="旅游">旅游<br>
    自我介绍：<textarea cols="30" rows="3" name="note"></textarea><br>
    <input type="hidden" name="uid" value="1">
    <input type="submit" value="提交">
    <input type="reset" value="重置">
</form>
</body>
</html>
