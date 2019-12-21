<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/20
  Time: 18:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>用户登录</title>
</head>
<body>
<table width="66%" height="68%" border="0" cellpadding="5" cellspacing="5">
    <tr>
        <td valign="top"><p>欢迎进入〉〉〉 </p>
            <p>
                <br>
                基于JAVAEE的驾考宝典系统
            </p>
            <p class="td2">联系人:XXXX</p>
            <p class="td2">电话:XXXXX</p>
            <p class="td2">手机:XXXX</p>
            <p class="td2">邮箱:XXXXX</p>
            <p class="td2">地址:XXXXXXXXXXXXX</p>
            <p class="welcome">&nbsp;</p></td>
    </tr>
</table>
<p class="welcome">&nbsp;</p>
</body>
</html>
