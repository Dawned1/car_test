<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/19
  Time: 15:06
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
    <title>多选题列表</title>
    <link href="css/style.css" type=text/css rel=stylesheet>
    <style>
        .list{
            font-size: 16px;
        }
    </style>
    <script language="javascript" src="js/Calendar.js"></script>
</head>
<%
    String sql;
//    ResultSet RS_result;
%>
<body >
<p class="list">已有多选题列表：</p>
<form name="form1" id="form1" method="post" action="">
    搜索: 编号：<input name="id_num" type="text" id="id_num" />
    试题：<input name="question" type="text" id="question" />
    难易程度：
    <select name='difficult' id='difficult'>
        <option value="">所有</option>
        <option value="1">易</option>
        <option value="2">中</option>
        <option value="3">难</option>
    </select>
    <input type="submit" class="Submit" value="查找" />
</form>
<table width="100%" border="2" align="center" cellpadding="6" cellspacing="3" bordercolor="SkyBlue" style="border-collapse:collapse">
    <tr>
        <td width="30" align="center" bgcolor="CCFFFF">序号</td>
        <td bgcolor='#CCFFFF'>编号</td>
        <td bgcolor='#CCFFFF'>难易程度</td>
        <td bgcolor='#CCFFFF'>选项A</td>
        <td bgcolor='#CCFFFF'>选项B</td>
        <td bgcolor='#CCFFFF'>选项C</td>
        <td bgcolor='#CCFFFF'>选项D</td>
        <td bgcolor='#CCFFFF'>答案</td>
        <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
        <td width="138" align="center" bgcolor="CCFFFF">修改时间</td>
        <td width="60" align="center" bgcolor="CCFFFF">操作</td>
    </tr>
    <%
        int curpage=1;//当前页
        int page_record=10;//每页显示的记录数
        int zgs=0;
        int zys=0;
        //用下面的方法（sql查询完成，速度快）
        String hsgnpage=request.getParameter("page");
        String fysql="select count(id) as ss from multiplechoice";
//        ResultSet RS_resultfy=connDbBean.executeQuery(fysql);
//        while(RS_resultfy.next()){
//            zgs=Integer.parseInt(RS_resultfy.getString("ss"));
//            zys=zgs/page_record+1;
//        }
        if (hsgnpage!=null)
        {
            curpage=Integer.parseInt(request.getParameter("page"));
            //获取传递的值，需要显示的页
        }
        else
        {
            curpage=1;
        }
        if (curpage==0)
        {
            curpage=1;
        }
        if(curpage>zys)
        {
            curpage=zys;
        }
        sql="";
        sql="select top "+page_record+" * from multiplechoice where id not in (select top "+((curpage-1)*page_record)+" id from multiplechoice order by id desc) ";
        if(request.getParameter("id_num")=="" ||request.getParameter("id_num")==null ){}
        else{sql=sql+" and id_num like '%"+new String(request.getParameter("id_num").getBytes("8859_1"))+"%'";}
        if(request.getParameter("question")=="" ||request.getParameter("question")==null ){}else{sql=sql+" and question like '%"+new String(request.getParameter("question").getBytes("8859_1"))+"%'";}
        if(request.getParameter("difficult")=="所有" ||request.getParameter("difficult")==null ){}else{sql=sql+" and difficult like '%"+new String(request.getParameter("difficult").getBytes("8859_1"))+"%'";}
        sql=sql+" order by id desc";
//        RS_result=connDbBean.executeQuery(sql);
        String id="";
        String id_num="";
        String question="";
        String difficult="";
        String opa="";
        String opb="";
        String opc="";
        String opd="";
        String answer="";
        String createTime="";
        String updateTime="";
        int i=0;
//        while(RS_result.next()){
//            i=i+1;
//            id=RS_result.getString("id");
//            id_num=RS_result.getString("id_num");
//            question=RS_result.getString("question");
//            difficult=RS_result.getString("difficult");
//            opa=RS_result.getString("opa");
//            opb=RS_result.getString("opb");
//            opc=RS_result.getString("opc");
//            opd=RS_result.getString("opd");
//            answer=RS_result.getString("answer");
//            createTime=RS_result.getString("createTime");

    %>
    <tr>
        <td width="30" align="center">
            <%=i %>
        </td>
        <td><%=id_num %></td>
        <td><%=difficult %></td>
        <td><%=opa %></td>
        <td><%=opb %></td>
        <td><%=opc %></td>
        <td><%=opd %></td>
        <td><%=answer %></td>
        <td width="138" align="center"><%=createTime %></td>
        <td width="138" align="center"><%=updateTime %></td>
        <td width="60" align="center">
            <a href="multiplechoice_update.jsp?id=<%=id%>">修改</a>
            <a href="del.jsp?id=<%=id %>&tablename=multiplechoice" onClick="return confirm('真的要删除？')">删除</a>
        </td>
    </tr>
<%--    <%--%>
<%--        }--%>
<%--    %>--%>
</table>
<br>
以上数据共<%=i %>条,
<a style="cursor:pointer" onClick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　
    <a href="multiplechoice_list.jsp?page=1">首页</a>　
    <a href="multiplechoice_list.jsp?page=<%= curpage-1%>">上一页</a>　
    <a href="multiplechoice_list.jsp?page=<%= curpage+1%>">下一页</a>　
    <a href="multiplechoice_list.jsp?page=<%=zys %>">尾页</a>　
    当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
</body>
</html>


