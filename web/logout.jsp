<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/20
  Time: 18:22
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
    <title>注销登录</title>
</head>
<body>
<%
    session.removeAttribute("username");
    session.removeAttribute("role");
    response.sendRedirect("login.jsp");
%>
</body>
</html>
