<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: 梁昕宇
  Date: 2018/12/17
  Time: 下午 02:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<html>
<head>
    <title>接受消息</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");   //设置统一编码
%>
<center>
<table border="1">
    <tr>
        <td>参数名称</td>
        <td>参数内容</td>
    </tr>
<%
    Enumeration enu =request.getParameterNames();  //接受全部请求参数的名称
    while(enu.hasMoreElements()){
        String ParamName=(String)enu.nextElement();

%>
    <tr>
        <td><%=ParamName%></td>
        <td>
<%
    if(ParamName.startsWith("**")){
        String paramValue[] = request.getParameterValues(ParamName);
        for(int x=0;x<paramValue.length;x++){
%>
            <%=paramValue[x]%>
<%
        }
    }else{
        String paramValue = request.getParameter(ParamName);

%>
            <%=paramValue%>
<%
    }
%>

        </td>

    </tr>
<%
    }
%>
</center>
</table>
</body>
</html>
