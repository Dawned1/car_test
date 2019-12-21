<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/20
  Time: 20:29
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
    <title>管理员权限操作页面跳转</title>
</head>
<body>
<%
    String username=request.getParameter("username");
    String pwd=request.getParameter("pwd1");
//    ResultSet RS_result=connDbBean.executeQuery("select * from [allusers] where username='"+username+"'");
//
//    if(RS_result.next())
//    {
//        out.print("<script>alert('该用户名已经存在,请换其他用户名!');window.history.go(-1);</script>");
//    }
//    else{
//
//
//        String sql="insert into allusers(username,pwd) values('"+username+"','"+pwd+"')";
//
//        connDbBean.executeUpdate(sql);
//        out.print("<script>alert('添加成功!!');location.href='admin_do.jsp';</script>");
//
//    }
//    RS_result.close();

%>
</body>
</html>
