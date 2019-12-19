<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/19
  Time: 22:26
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
    <title>成绩查询2</title>
    <link href="css/style.css">
    <style>
        .list{
            font-size: 16px;
        }
    </style>
</head>
<body>
<p class="list">学生成绩查询：</p>
<table width="100%" border="2" align="center" cellpadding="6" cellspacing="3" bordercolor="SkyBlue" style="border-collapse:collapse">
    <tr>
        <td width="6%" bgcolor="#DEE1E6">序号</td>
        <td width="12%" bgcolor='#DEE1E6'>用户名</td>
        <td width="18%" bgcolor='#DEE1E6'>试卷编号</td>
        <td width="9%" bgcolor='#DEE1E6'>总分</td>
        <td width="9%" bgcolor='#DEE1E6'>单选题</td>
        <td width="9%" bgcolor="#DEE1E6">多选题</td>
        <td width="9%" bgcolor="#DEE1E6">判断题</td>
        <td width="15%" bgcolor="#DEE1E6">创建时间</td>
        <td width="13%" bgcolor="#DEE1E6">操作</td>
    </tr>
    <%
        String sql="";
        sql="select * from achievement where 1=1 ";

        sql=sql+" order by id desc";
//        ResultSet RS_result=connDbBean.executeQuery(sql);
        String id="";
        String username="";
        String testPaper_id="";
        String score="";
        String xzt="";
        String dxt="";
        String pdt="";
        String createTime="";
        int i=0;
//            while(RS_result.next()){
//            i=i+1;
//            id=RS_result.getString("id");
//            username=RS_result.getString("username");
//            testPaper_id=RS_result.getString("testPaper_id");
//            score=RS_result.getString("score");
//            xzt=RS_result.getString("xzt");
//            dxt=RS_result.getString("dxt");
//            pdt=RS_result.getString("pdt");
//            creatTime=RS_result.getString("creatTime");
    %>
    <tr>
        <td><%=i %></td>
        <td><%=username %></td>
        <td><%=testPaper_id %></td>
        <td><%=score %></td>
        <td><%=xzt %></td>
        <td><%=dxt %></td>
        <td><%=pdt %></td>
        <td><%=createTime %></td>
        <td><a href="del.jsp?id=<%=id%>&tablename=achievement">删除</a></td>
    </tr>
<%--    <%--%>
<%--        }--%>
<%--    %>--%>
</table>
<br>
以上数据共<%=i %>条,<a style="cursor:pointer" onClick="javascript:window.print();">打印本页</a>
</body>
</html>
