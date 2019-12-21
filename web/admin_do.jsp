<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/20
  Time: 20:10
  To change this template use File | Settings | File Templates.
--%>
<%--<%--%>
<%--    if (request.getSession().getAttribute("role").equals("管理员"))--%>
<%--    {--%>

<%--    }--%>
<%--    else--%>
<%--    {--%>
<%--        out.print("<script>alert('对不起,您没有这个权限!!');history.back();</script>");--%>
<%--    }--%>
<%--%>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>管理员权限操作</title>
</head>
<body>
<form name="form1" id="form1" method="post" action="admin_do_post.jsp">
    <table width="100%" border="2" align="center" cellpadding="6" cellspacing="3" bordercolor="SkyBlue" style="border-collapse:collapse">
        <tr>
        <td>用户名：</td>
        <td>
            <input name="username" type="text" id="username" />
            *</td>
        </tr>
        <tr>
            <td>密码：</td>
            <td>
                <input name="pwd1" type="password" id="pwd1" />
                *</td>
        </tr>
        <tr>
            <td>确认密码：</td>
            <td><input name="pwd2" type="password" id="pwd2" />
                *</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <input type="submit" name="Submit" value="提交" onclick="return check();" />
                <input type="reset" name="Submit2" value="重置" />
            </td>
        </tr>
    </table>
</form>
<p>已有管理员列表：</p>
<table width="100%" border="2" align="center" cellpadding="6" cellspacing="3" bordercolor="SkyBlue" style="border-collapse:collapse">
    <tr>
        <td bgcolor="#DEE1E6">序号</td>
        <td bgcolor="#DEE1E6">用户名</td>
        <td bgcolor="#DEE1E6">密码</td>
        <td bgcolor="#DEE1E6">权限</td>
        <td bgcolor="#DEE1E6">添加时间</td>
<%--        <td bgcolor="A4B6D7">修改时间</td>--%>
        <td bgcolor="#DEE1E6">操作</td>
    </tr>
    <%
//        ResultSet RS_result=connDbBean.executeQuery("select * from allusers order by id desc" );
        String id="";
        String username="";
        String pwd="";
        String role="";
        String createTime="";
        String updateTime="";
        int i=0;
//        while(RS_result.next()){
//            i=i+1;
//            id=RS_result.getString("id");
//            username=RS_result.getString("username");
//            pwd=RS_result.getString("pwd");
//            role=RS_result.getString("role");
//            createTime=RS_result.getString("createTime");
//            updateTime=RS_result.getString("updateTime");
    %>
    <tr>
        <td><%=i %></td>
        <td><%=username %></td>
        <td><%=pwd %></td>
        <td><%=role %></td>
        <td><%=createTime %></td>
<%--        <td><%=updateTime %></td>--%>
        <td><a href="del.jsp?id=<%=id %>&tablename=allusers" onclick="return confirm('真的要删除？')">删除</a></td>
    </tr>
<%--    <%--%>
<%--        }--%>
<%--    %>--%>
</table>
</body>
</html>
