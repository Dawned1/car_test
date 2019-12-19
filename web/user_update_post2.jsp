<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/19
  Time: 23:03
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
    <title>用户更新跳转2</title>
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
    String sql="update users set username='"+username+"',pwd='"+pwd+"',name='"+name+"',sex='"+sex+"',id_card='"+id_card+"',email='"+email+"',phone='"+phone+"',adress='"+adress+"' where username= '"+request.getSession().getAttribute("username")+"'";
//    connDbBean.executeUpdate(sql);
    out.print("<script>alert('修改成功!');location.href='user_update2.jsp';</script>");
%>
</body>
</html>
