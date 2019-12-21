<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/20
  Time: 19:26
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
    <title>在线测试页面跳转</title>
</head>
<body>
<%
    String sql;
    sql="select * from singlechoice order by id desc";
//    ResultSet RS_result=connDbBean.executeQuery(sql);
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
    int chengji=0;
//    while(RS_result.next()){
//        i=i+1;
//        id=RS_result.getString("id");
//        id_num=RS_result.getString("id_num");
//        question=RS_result.getString("question");
//        opa=RS_result.getString("opa");
//        opb=RS_result.getString("opb");
//        opc=RS_result.getString("opc");
//        opd=RS_result.getString("opd");
//        answer=RS_result.getString("answer");
//        createTime=RS_result.getString("createTime");
//        if(answer.equals(request.getParameter("NO"+id)))
//        {
//            chengji=chengji+5;
//        }
//    }
    sql="update achievement set xzt="+chengji+" where username='"+request.getSession().getAttribute("username")+"'";
//    connDbBean.executeUpdate(sql);
    out.print("<script>alert('答题成功!您的成绩为"+chengji+"分');location.href='sy.jsp';</script>");
%>
</body>
</html>
