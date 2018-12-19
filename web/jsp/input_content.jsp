<%@ page import="java.io.File" %>
<%@ page import="java.io.PrintStream" %>
<%@ page import="java.io.FileOutputStream" %>
<%@ page import="java.util.Scanner" %>
<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.nio.Buffer" %><%--
  Created by IntelliJ IDEA.
  User: 梁昕宇
  Date: 2018/12/18
  Time: 上午 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>接受内容并保存文件及内容</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("filename");
    String content = request.getParameter("filecontent");
    String fileName=this.getServletContext().getRealPath("/")+"note"+ File.separator+name;
    File file = new File(fileName);
    if(!file.getParentFile().exists()){
        file.getParentFile().mkdir();
    }
    PrintStream ps =null;
    ps=new PrintStream(new FileOutputStream(file));
    ps.println(content);
    ps.close();
%>
<% //读取出来
    Scanner scan = new Scanner(new FileInputStream(file));
    scan.useDelimiter("\n");
    StringBuffer buf = new StringBuffer();
    while (scan.hasNext()){
        buf.append(scan.next()).append("<br>");
    }
    scan.close();
%>
<%=buf%>                          <%-- 输出内容 --%>
</body>
</html>
