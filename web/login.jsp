<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/14
  Time: 17:04
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
    <title>用户登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <link href="css/login.css" rel='stylesheet' type='text/css' />
</head>
<body>
<h1>用户登录</h1>
<div class="w3ls-login box">
    <img src="images/login_car.png" alt="logo_img" width="400px" height="400px"/>
    <form action="#" method="post">
        <div class="agile-field-txt">
            <input type="text" name="username" placeholder="用户名" required="" />
        </div>
        <div class="agile-field-txt">
            <input type="password" name="password" placeholder="密码" required="" id="myInput" />
        </div>
        <div class="agile-field-txt">
            <select name="role" id="roleId">
                <option value="角色" selected="selected" disabled="disabled">角色</option>
                <option value="管理员">管理员</option>
                <option value="考生">考生</option>
            </select>
            <br /><br />
            <div class="agile_label">
                <input id="check3" name="check3" type="checkbox" value="show password">
                <label class="check" for="check3">记住密码</label>
            </div>
        </div>
        <div class="w3ls-bot">
            <input type="submit" value="登录">
            <input type="reset" value="重置">
        </div>
    </form>
</div>
</body>
</html>
