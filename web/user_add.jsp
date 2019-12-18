<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/18
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>考生添加</title>
    <link href="css/style.css" type=text/css rel=stylesheet>
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
            document.form1.id_card.focus();
            return false;
        }if(document.form1.phone.value==""){
            alert("请输入电话");
            document.form1.phone.focus();
            return false;
        }
    }
    function gow()
    {
        document.location.href="user_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
    }
</script>
<body>
<form name="form1" id="form1" method="post" action="user_add_post.jsp">
    添加考生:<br /><br />
    <table width="100%" border="2" align="center" cellpadding="6" cellspacing="3" bordercolor="SkyBlue" style="border-collapse:collapse">
        <tr>
            <td>用户名：</td>
            <td><input name='username' type='text' id='username' value='' />&nbsp;*</td></tr>
        <tr>
            <td>密码：</td>
            <td>
                <input name='pwd' type='text' id='pwd' value='' />&nbsp;*</td>
        </tr>
        <tr>
            <td>姓名：</td>
            <td>
                <input name='name' type='text' id='name' value='' />&nbsp;*
            </td>
        </tr>
        <tr>
            <td>性别：</td>
            <td>
                <select name='sex' id='sex'>
                    <option value="男">男</option>
                    <option value="女">女</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>身份证：</td>
            <td><input name='id_card' type='text' id='id_card' value='' size='50' />&nbsp;*</td></tr>
        <tr>
            <td>邮箱：</td><td>
            <input name='email' type='text' id='email' value='' />
        </td>
        </tr>
        <tr>
            <td>电话：</td>
            <td>
                <input name='phone' type='text' id='phone' value='' />&nbsp;*
            </td></tr>
        <tr>
            <td>地址：</td>
            <td>
                <input name='adress' type='text' id='adress' value='' size='50' />
            </td>
        </tr>
        <tr>
            <td >&nbsp;</td>
            <td>
                <input type="submit" class="Submit" value="提交" onclick="return check();" />
                <input type="reset" class="Submit2" value="重置" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>
