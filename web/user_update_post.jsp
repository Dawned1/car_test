<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/19
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>修改用户页面跳转</title>
</head>
<body>
<%
    String username=request.getParameter("username");
    String pwd=request.getParameter("pwd");
    String name=request.getParameter("name");
    String sex=request.getParameter("sex");
    String id_card=request.getParameter("id_card");
    String email=request.getParameter("email");
    String phone=request.getParameter("phone");
    String adress=request.getParameter("adress");
    String id=request.getParameter("id");
    String sql="update users set username='"+username+"',pwd='"+pwd+"'," +
            "name='"+name+"',sex='"+sex+"',id_card='"+id_card+"',email='"+
            email+"',phone='"+phone+"',adress='"+adress+"' where id= "+id;
//    connDbBean.executeUpdate(sql);
    out.print("<script>alert('修改成功!');location.href='user_list.jsp';</script>");
%>
</body>
</html>
