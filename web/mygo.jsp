<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/20
  Time: 13:32
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
    <title>左部导航栏与角色</title>
</head>
<body>
<%
//    response.sendRedirect("backstage_left0.html");
    if (request.getSession().getAttribute("role").equals("管理员"))
    {
        response.sendRedirect("backstage_left0.html");
    }
    else
    {
        response.sendRedirect("backstage_left.html");
    }
%>
</body>
</html>
