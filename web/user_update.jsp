<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/18
  Time: 23:07
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
    <title>修改用户信息</title>
    <script language="javascript" src="js/Calendar.js"></script>
    <script type="text/javascript" src="js/popup.js"></script>
    <script type="text/javascript">
        function up(tt)
        {
            var pop=new Popup({ contentType:1,isReloadOnClose:false,width:300,height:50});
            pop.setContent("contentUrl","upload.jsp?Result="+tt);
            pop.setContent("title","文件上传");
            pop.build();
            pop.show();
        }
    </script>
    <link href="css/style.css" type=text/css rel=stylesheet>
</head>
<script language="javascript">
    function check()
    {
        if(document.form1.username.value==""){
            alert("请输入用户名");
            document.form1.username.focus();
            return false;
        }if(document.form1.pwd.value==""){
            alert("请输入密码");
            document.form1.pwd.focus();
            return false;
        }if(document.form1.name.value==""){
            alert("请输入姓名");
            document.form1.name.focus();
            return false;
        }if(document.form1.id_card.value==""){
            alert("请输入身份证");
            document.form1.d_card.focus();
            return false;
        }if(document.form1.phone.value==""){
            alert("请输入电话");
            document.form1.phone.focus();
            return false;
        }
    }
</script>
<body >
<%
    String id=request.getParameter("id");
%>
<form name="form1" id="form1" method="post" action="user_updt_post.jsp?id=<%=id %>">
    修改考生:
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
//        ResultSet RS_result=connDbBean.executeQuery(sql);
//        while(RS_result.next()){
//            username=RS_result.getString("username");
//            pwd=RS_result.getString("pwd");
//            name=RS_result.getString("name");
//            sex=RS_result.getString("sex");
//            id_card=RS_result.getString("id_card");
//            email=RS_result.getString("email");
//            phone=RS_result.getString("phone");
//            adress=RS_result.getString("adress");
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
            <td>密码：</td>
            <td>
                <input name='pwd' type='text' id='pwd' value='<%= pwd%>' />
            </td>
        </tr>
        <tr>
            <td>姓名：</td>
            <td>
                <input name='name' type='text' id='name' value='<%= name%>' />
            </td>
        </tr>
        <tr>
            <td>性别：</td>
            <td>
                <select name='sex' id='sex'>
                    <option value="男" selected>男</option>
                    <option value="女">女</option>
                </select>
            </td>
        </tr>
        <script language="javascript">
            document.form1.sex.value='<%=sex%>';
        </script>
        <tr>
            <td>身份证：</td>
            <td>
                <input name='id_card' type='text' id='id_card' size='50' value='<%=id_card%>' />
            </td>
        </tr>
        <tr>
            <td>邮箱：</td>
            <td>
                <input name='email' type='text' id='email' value='<%= email%>' />
            </td>
        </tr>
        <tr>
            <td>电话：</td>
            <td>
                <input name='phone' type='text' id='phone' value='<%= phone%>' />
            </td>
        </tr>
        <tr>
            <td>地址：</td>
            <td>
                <input name='adress' type='text' id='adress' size='50' value='<%=adress%>' />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <input type="submit" class="Submit" value="提交" onclick="return check();" />
                <input type="reset" class="Submit2" value="重置" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>
