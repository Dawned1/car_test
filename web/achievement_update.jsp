<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/19
  Time: 21:44
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
    <title>修改成绩</title>
</head>
<body>
<%
    String id=request.getParameter("id");
%>
<form name="form1" id="form1" method="post" action="achievement_update_post.jsp?id=<%=id %>">
    修改考生成绩:<br><br>
    <%
        String sql="select * from achievement where id="+id;
        String username="";
        String testPaper_id="";
        String score="";
        String xzt="";
        String dxt="";
        String pdt="";
//        ResultSet RS_result=connDbBean.executeQuery(sql);
//        while(RS_result.next()){
//            username=RS_result.getString("username");
//            testPaper_id=RS_result.getString("testPaper_id");
//            score=RS_result.getString("score");
//            xzt=RS_result.getString("xzt");
//            dxt=RS_result.getString("dxt");
//            pdt=RS_result.getString("pdt");

//        }
    %>
    <table width="100%" border="2" align="center" cellpadding="6" cellspacing="3" bordercolor="SkyBlue" style="border-collapse:collapse">
        <tr>
            <td>用户名：</td>
            <td>
                <input name='username' type='text' id='username' value='<%= username%>' />
            </td>
        </tr>
        <tr>
            <td>试卷编号：</td>
            <td>
                <input name='testPaper_id' type='text' id='testPaper_id' value='<%= testPaper_id%>' />
            </td>
        </tr>
        <tr>
            <td>总分：</td>
            <td>
                <input name='score' type='text' id='score' value='<%= score%>' />
            </td>
        </tr>
        <tr>
        <td>选择题：</td>
            <td>
                <input name='xzt' type='text' id='xzt' value='<%= xzt%>' />
            </td>
        </tr>
        <tr>
        <td>多选题：</td>
            <td>
                <input name='dxt' type='text' id='dxt' value='<%= dxt%>' />
            </td>
        </tr>
        <tr>
        <td>判断题：</td>
            <td>
                <input name='pdt' type='text' id='pdt' value='<%= pdt%>' />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><input type="submit" name="Submit" class="Submit" value="提交" onclick="return check();" />
                <input type="reset" name="Submit2" class="Submit2" value="重置" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>
