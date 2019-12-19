<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/19
  Time: 20:24
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
    <title>用户详情查看</title>
    <script language="javascript" src="js/Calendar.js"></script>
    <link href="css/style.css" type=text/css rel=stylesheet>
</head>
<script language="javascript">
    function check()
    {
        fewgidsoidfjdkgds
    }
</script>
<body >
<%
    String id=request.getParameter("id");
%>
考生详情:
<br><br>
<%
    String sql="select * from users where id="+id;
    String username="";
    String pwd="";
    String name="";
    String sex="";
    String id_card="";
    String email="";
    String phone="";
    String adress="";
//    ResultSet RS_result=connDbBean.executeQuery(sql);
//    while(RS_result.next()){
//        username=RS_result.getString("username");
//        pwd=RS_result.getString("pwd");
//        name=RS_result.getString("name");
//        sex=RS_result.getString("sex");
//        id_card=RS_result.getString("id_card");
//        email=RS_result.getString("email");
//        phone=RS_result.getString("phone");
//        adress=RS_result.getString("adress");
//    }
%>
<table width="100%" border="2" align="center" cellpadding="6" cellspacing="3" bordercolor="SkyBlue" style="border-collapse:collapse">
    <tr>
    <td width='11%'>用户名：</td>
    <td width='39%'><%=username%></td>
    <td width='11%'>密码：</td>
    <td width='39%'><%=pwd%></td>
    </tr>
    <tr>
        <td width='11%'>姓名：</td>
        <td width='39%'><%=name%></td>
        <td width='11%'>性别：</td>
        <td width='39%'><%=sex%></td>
    </tr>
    <tr>
        <td width='11%'>身份证：</td>
        <td width='39%'><%=id_card%></td>
        <td width='11%'>邮箱：</td>
        <td width='39%'><%=email%></td>
    </tr>
    <tr>
        <td width='11%'>电话：</td>
        <td width='39%'><%=phone%></td>
        <td width='11%'>地址：</td>
        <td width='39%'><%=adress%></td>
    </tr>
        <td colspan="4" align="center">
            <input type="button" class="Submit" name="Submit" value="返回" onclick="javascript:history.back()" />
        </td>
    </tr>
</table>
</body>
</html>



