<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/19
  Time: 20:01
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
    <title>用户列表</title>
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
<p class="list">已有考生列表：</p>
<form name="form1" id="form1" method="post" action="">
    搜索: 用户名：<input name="username" type="text" id="username" />
    姓名：<input name="name" type="text" id="name" />
    性别：
    <select name="sex" id="sex">
        <option value="">所有</option>
        <option value="男">男</option>
        <option value="女">女</option>
    </select>
    身份证：<input name="id_card" type="text" id="id_card" />
    <input type="submit" class="Submit" value="查找" />
</form>
<table width="100%" border="2" align="center" cellpadding="6" cellspacing="3" bordercolor="SkyBlue" style="border-collapse:collapse">
    <tr>
        <td width="30" align="center" bgcolor="CCFFFF">序号</td>
        <td bgcolor='#CCFFFF'>用户名</td>
        <td bgcolor='#CCFFFF'>密码</td>
        <td bgcolor='#CCFFFF'>姓名</td>
        <td bgcolor='#CCFFFF'>性别</td>
        <td bgcolor='#CCFFFF'>身份证</td>
        <td bgcolor='#CCFFFF'>邮箱</td>
        <td bgcolor='#CCFFFF'>电话</td>
        <td bgcolor='#CCFFFF'>地址</td>
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
        String fysql="select count(id) as ss from users";
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
        sql="select top "+page_record+" * from users where id not in (select top "+((curpage-1)*page_record)+" id from users order by id desc) ";
        if(request.getParameter("username")=="" ||request.getParameter("username")==null ){}
        else{sql=sql+" and username like '%"+new String(request.getParameter("username").getBytes("8859_1"))+"%'";}
        if(request.getParameter("name")=="" ||request.getParameter("name")==null ){}
        else{sql=sql+" and name like '%"+new String(request.getParameter("name").getBytes("8859_1"))+"%'";}
        if(request.getParameter("sex")=="所有" ||request.getParameter("sex")==null ){}
        else{sql=sql+" and sex like '%"+new String(request.getParameter("sex").getBytes("8859_1"))+"%'";}
        if(request.getParameter("id_card")=="" ||request.getParameter("id_card")==null ){}
        else{sql=sql+" and id_card like '%"+new String(request.getParameter("id_card").getBytes("8859_1"))+"%'";}
        sql=sql+" order by id desc";
//        RS_result=connDbBean.executeQuery(sql);
        String id="";
        String username="";
        String pwd="";
        String name="";
        String sex="";
        String id_card="";
        String email="";
        String phone="";
        String adress="";
        String createTime="";
        String updateTime="";
        int i=0;
//        while(RS_result.next()){
//            i=i+1;
//            id=RS_result.getString("id");
//            username=RS_result.getString("username");
//            pwd=RS_result.getString("pwd");
//            name=RS_result.getString("name");
//            sex=RS_result.getString("sex");
//            id_card=RS_result.getString("id_card");
//            email=RS_result.getString("email");
//            phone=RS_result.getString("phone");
//            adress=RS_result.getString("adress");
//            createTime=RS_result.getString("createTime");
//            updateTime=RS_result.getString("updateTime");
    %>
    <tr>
        <td width="30" align="center"><%=i %></td>
        <td><%=username %></td>
        <td><%=pwd %></td>
        <td><%=name %></td>
        <td><%=sex %></td>
        <td><%=id_card %></td>
        <td><%=email %></td>
        <td><%=phone %></td>
        <td><%=adress %></td>
        <td width="138" align="center"><%=createTime %></td>
        <td width="138" align="center"><%=updateTime %></td>
        <td width="90" align="center">
            <a href="user_update.jsp?id=<%=id%>">修改</a>
            <a href="del.jsp?id=<%=id %>&tablename=users" onclick="return confirm('真的要删除？')">删除</a>
            <a href="user_detail.jsp?id=<%=id%>" target="_blank">详细</a>
        </td>
    </tr>
<%--    <%--%>
<%--        }--%>
<%--    %>--%>
</table><br>
以上数据共<%=i %>条,<a style="cursor:pointer" onclick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　
    <a href="user_list.jsp?page=1">首页</a>　
    <a href="user_list.jsp?page=<%= curpage-1%>">上一页</a>　
    <a href="user_list.jsp?page=<%= curpage+1%>">下一页</a>　
    <a href="user_list.jsp?page=<%=zys %>">尾页</a>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
</body>
</html>
