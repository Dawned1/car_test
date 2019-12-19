<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/19
  Time: 22:13
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
    <title>修改成绩页面跳转</title>
</head>
<body>
<%
    String testPaper_id=request.getParameter("testPaper_id");
    String score=request.getParameter("score");
    String xzt=request.getParameter("xzt");
    String dxt=request.getParameter("dxt");
    String pdt=request.getParameter("pdt");
    String id=request.getParameter("id");
    String sql="update achievement set xzt="+xzt+",dxt="+dxt+",pdt="+pdt+" where id= "+id;
//    connDbBean.executeUpdate(sql);
    out.print("<script>alert('修改成功!');location.href='achievement.jsp';</script>");
%>
</body>
</html>
