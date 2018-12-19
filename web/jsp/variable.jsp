<%--
  Created by IntelliJ IDEA.
  User: 梁昕宇
  Date: 2018/12/19
  Time: 上午 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JavaScript &amp; jQuery - Chapter 2:Basic JavaScript Instructions - Example</title>
</head>
<body>
    <h1>Elderflower</h1>
    <div id="content">
        <div id ="greeting" class="message">Hello!</div>
        <table>
            <tr>
                <td>Custom sign:</td>
                <td id="userSign:"></td>
            </tr>
            <tr>
                <td>Total tiles</td>
                <td id="total"></td>
            </tr>
            <tr>
                <td>Subtotal:</td>
                <td id="subtotal">$</td>
            </tr>
            <tr>
                <td> Shipping</td>
                <td id="shipping">$</td>
            </tr>
            <tr>
                <td>Grand total:</td>
                <td id="grand">$</td>
            </tr>
        </table>
        <a href="#" class="action">Pay Now</a>
    </div>
    <script src="example.js"></script>
</body>
</html>
