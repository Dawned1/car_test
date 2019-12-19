<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/19
  Time: 16:42
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
    <title>删除管理</title>
</head>
<body>
<%
    String id=request.getParameter("id");
    String tablename=request.getParameter("tablename");
    String sql="delete from "+tablename+" where id="+id+"";
//    connDbBean.executeUpdate(sql);
    out.print("<script>alert('删除成功!');location.href='"+request.getHeader("Referer")+"';</script>");
%>
</body>
</html>
