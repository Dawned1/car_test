<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/20
  Time: 13:57
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
    <title>后台管理员/用户主页</title>
</head>
<frameset rows="127,*,11" frameborder="no" border="0" framespacing="0">
    <frame src="backstage_header.jsp" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" />
    <frame src="backstage_center.jsp" name="mainFrame" id="mainFrame" />
    <frame src="backstage_footer.jsp" name="bottomFrame" scrolling="No" noresize="noresize" id="bottomFrame" />
</frameset>
<noframes>
    <body>

    </body>
</noframes>
</html>

