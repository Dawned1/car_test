<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/20
  Time: 19:12
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
    <title>在线考试</title>
</head>
<body>
<form name="form1" id="form1" method="post" action="exam_post.jsp">
    在线测试:
    <br>
    <br>
    <%
        String sql,content;
        sql="select xzt from achievement where username='"+request.getSession().getAttribute("username")+"'";
//        ResultSet RS_result=connDbBean.executeQuery(sql);
//        while(RS_result.next()){
//            String ycj=RS_result.getString("xzt");
//            if (ycj.equals("0.0"))
//            {
//
//            }
//            else
//            {
//                out.print("<script>alert('对不起，您已测试过了，请不要重复测试');history.back();</script>");
//
//            }
//
//        }
        sql="select * from singlechoice order by id desc";
//        RS_result=connDbBean.executeQuery(sql);
        String id="";
        String id_num="";
        String question="";
        String opa="";
        String opb="";
        String opc="";
        String opd="";
        String answer="";
        String createTime="";
        int i=0;
//        while(RS_result.next()){
//            i=i+1;
//            id=RS_result.getString("id");
//            id_num=RS_result.getString("id_num");
//            question=RS_result.getString("question");
//            opa=RS_result.getString("opa");
//            opb=RS_result.getString("opb");
//            opc=RS_result.getString("opc");
//            opd=RS_result.getString("opd");
//            answer=RS_result.getString("answer");
//            createTime=RS_result.getString("createTime");
    %>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
        <tr>
            <td class="css" colspan="2">&nbsp;试题<%=i%>:
                <%
                    content=question;
                    out.print(content);
                %></td>
        </tr>
        <tr>
            <td class="css" width="49%"> &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" name="NO<%=id%>" value="A">
                A、<%content=opa;
                    out.print(content);
                %></td>
            <td class="css" width="51%">
                <input type="radio" name="NO<%=id%>" value="B">
                B、<%content=opb;
                out.print(content);
            %></td>
        </tr>
        <tr bordercolor="#C0C0C0">
            <td class="css"> &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" name="NO<%=id%>" value="C">
                C、<%content=opc;
                    out.print(content);
                %>&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="css">
                <input type="radio" name="NO<%=id%>" value="D">
                D、<% content=opd;
                out.print(content);
            %></td>
        </tr>
    </table>
    <div align="center">
        <p>
<%--            <%--%>
<%--                }--%>
<%--            %>--%>
            <input type="submit" name="Submit" value="交卷">
        </p>
    </div>
</form>
</body>
</html>
