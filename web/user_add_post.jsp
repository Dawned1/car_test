<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/19
  Time: 19:48
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
    <title>用户添加页面跳转</title>
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
    String sql="insert into users(username,pwd,name,sex,id_card,email,phone,adress) values('"+username+"','"+pwd+"','"+name+"','"+sex+"','"+id_card+"','"+email+"','"+phone+"','"+adress+"') ";
//    connDbBean.executeUpdate(sql);
    sql="insert into achievement(username) values('"+username+"')";
//    connDbBean.executeUpdate(sql);
    out.print("<script>alert('添加成功!!');location.href='user_add.jsp';</script>");
%>

</body>
</html>
