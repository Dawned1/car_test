<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/19
  Time: 17:59
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
    <title>修改单选题跳转页面</title>
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
    String id=request.getParameter("id");
    String sql="update multiplechoice set id_num='"+id_num+"'," + "question='"+question+"'," +
            "difficult='"+difficult+"',opa='"+opa+"',opb='"+opb+"',opc='"+opc+"',opd='"+opd+"'," +
            "answer='"+answer+"' where id= "+id;
//    connDbBean.executeUpdate(sql);
    out.print("<script>alert('修改成功!');location.href='singlechoice_list.jsp';</script>");
%>
</body>
</html>
