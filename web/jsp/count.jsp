<%@ page import="java.math.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %><%--
  Created by IntelliJ IDEA.
  User: 梁昕宇
  Date: 2018/12/18
  Time: 上午 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>count</title>
</head>
<body>
<%!
        BigInteger count = null;
%>

<%! //以下方法为了省事，直接在方法中处理异常，而实际中应该交给调用处处理
    public BigInteger load(File file) {    //读取计数文件
        BigInteger count = null;           //接收读取的数据
        try {                              //由于代码中存在异常，所以使用try...catch处理
            if(file.exists()){             //如果文件存在，则读取
                Scanner scan = null;       // 定义Scanner对象
                scan = new Scanner(new FileInputStream(file)); //从文件中读取
                if(scan.hasNext()){                            //存在内容
                    count = new BigInteger(scan.next());       //将内容放到BigInteger类中
                }
                 scan.close();                                 //关闭输入流
            }else{                                             //文件不存在则创建新的
                count = new BigInteger("0");                    //第一次访问
                save(file,count);                               //调用save()方法，保存新的文件
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return count;                                           //返回读取后的数据
    }
    public void save(File file,BigInteger count){               //保存技术文件

        try {
            PrintStream ps =null;        //定义输出流对象
            ps=new PrintStream(new FileOutputStream(file));  //打印流对象
            ps.println(count);                               //保存数据
            ps.close();                                      //关闭输出流
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }
%>
<%
    String fileName = this.getServletContext().
        getRealPath("/")+"count.txt";                         //文件路径
    File file = new File(fileName);                           //定义File类对象
    if(session.isNew()){                                      //如果是新的session表示允许进行增加的操作
        synchronized (this){                                  //必须进行同步操作
            count = load(file);
            count = count.add(new BigInteger("1")); //自增操作
            save(file,count);
        }
    }
%>
<h2>您是第<%=count==null?0:count%>位访客！</h2>  <%--输出内容--%>
</body>
</html>
