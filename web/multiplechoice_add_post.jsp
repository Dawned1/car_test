<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/19
  Time: 14:55
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
    <title>增加多选题跳转页面</title>
</head>
<body>
<%
    String id_num=request.getParameter("id_num");
    String question=request.getParameter("question");
    String difficult=request.getParameter("difficult");
    String opa=request.getParameter("opa");
    String opb=request.getParameter("opb");
    String opc=request.getParameter("opc");
    String opd=request.getParameter("opd");
    String answer=request.getParameter("answer");
    String sql="insert into multiplechoice(id_num,question,difficult,opa,opb,opc,opd,answer) values('"+id_num+"','"+question+"','"+difficult+"','"+opa+"','"+opb+"','"+opc+"','"+opd+"','"+answer+"') ";
//    connDbBean.executeUpdate(sql);
    out.print("<script>alert('添加成功!');" +
            "location.href='multiplechoice_add.jsp';</script>");
%>
</body>
</html>
