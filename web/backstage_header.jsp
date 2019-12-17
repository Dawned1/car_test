<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/17
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台管理主页头部</title>
    <style type="text/css">
        body {
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
        }
        .compu{
            position: fixed;
            width: 80px;
            height: 80px;
            top: 8px;
            left: 23px;
        }
        .STYLE1{
            font-size: 13px;
            font-weight: 500;
            vertical-align: middle;
            color: #000000;
        }
        .STYLE5 {font-size: 13px;vertical-align: middle;}
        .STYLE7 {font-size: 13px; color: #FFFFFF; vertical-align: middle;}
    </style>
    <script>
        function tick() {
            var ye,mo,da;
            var hours, minutes, seconds, xfile;
            var intHours, intMinutes, intSeconds;
            var today;
            today = new Date();
            // 使用getYear方法会报错,因为浏览器兼容问题
            ye = today.getFullYear();
            mo = today.getMonth()+1;
            if (mo < 10) {
                mo = "0"+mo;
            }
            da = today.getDate();
            if (da < 10) {
                da = "0"+da;
            }
            intHours = today.getHours();
            intMinutes = today.getMinutes();
            intSeconds = today.getSeconds();
            if (intHours == 0) {
                hours = "12:";
                xfile = "PM";//午夜
            } else if (intHours < 12) {
                ours = intHours+":";
                xfile = "AM";//上午
            } else if (intHours == 12) {
                hours = "12:";
                xfile = "PM";//正午
            } else {
                intHours = intHours - 12
                hours = intHours + ":";
                xfile = "PM";//下午
            }
            if (intHours < 10) {
                hours = "0"+intHours+":";
            }
            if (intMinutes < 10) {
                minutes = "0"+intMinutes+":";
            } else {
                minutes = intMinutes+":";
            }
            if (intSeconds < 10) {
                seconds = "0"+intSeconds+" ";
            } else {
                seconds = intSeconds+" ";
            }
            var color, size, face, out;
            var text = "black";
            var font_size = 1;
            var font_face = "Arial";
            color = (text)? text : "black";
            size = (font_size)? font_size : 1;
            face = (font_face)? font_face : "Arial";
            timeString = "<font style='font-size:14px;'>";
            timeString += ye+"-"+mo+"-"+da+"  ";
            timeString += hours+minutes+seconds+" "+xfile+"&nbsp;&nbsp;&nbsp;";
            Clock.innerHTML = timeString;
            window.setTimeout("tick();", 100);
        }
        window.onload = tick;
    </script>
</head>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <img src="images/computers.png" class="compu">
    <tr>
        <td height="57" background="images/main_03.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="104" height="57" background="images/main_01.png">&nbsp;&nbsp;</td>
                <td width="889"><div style="font-family:宋体; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2); WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt">
                    &nbsp;基于JAVAEE的驾考宝典系统
                </div></td>
                <td width="258" valign="bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="33" height="27"><img src="images/main_05.gif" width="33" height="27" /></td>
                        <td width="248" background="images/main_06.gif"><table width="225" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                                <td height="17"><div align="center"><a href="mod.jsp" target="hsgmain"><img src="images/pass.gif" width="75" height="21" border="0" /></a></div></td>
                                <td><div align="right"><a href="logout.jsp" target="_parent"><img src="images/quit.gif" width="75" height="21" border="0" /></a></div></td>
                            </tr>
                        </table></td>
                    </tr>
                </table></td>
            </tr>
        </table></td>
    </tr>
    <tr>
        <td height="40" background="images/main_10.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="194" height="40" background="images/main_07.png">&nbsp;</td>
                <td>&nbsp;</td>
                <td width="240" background="images/main_11.gif"> <table width="78%" border="0" align="right" class="STYLE7">
                    <tr>
                        <td><font id="Clock"  align="center">  &nbsp; </font></td>
                    </tr>
                </table></td>
            </tr>
        </table></td>
    </tr>
    <tr>
        <td height="30" background="images/main_31.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="0" height="30"><img src="images/main_28.gif" width="0" height="30" /></td>
                <td width="147" background="images/main_29.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="28%">&nbsp;</td>
                        <td width="39%" height="20" valign="bottom" class="STYLE1">管理菜单</td>
                        <td width="33%">&nbsp;</td>
                    </tr>
                </table></td>
                <td width="39"><img src="images/main_30.gif" width="39" height="30" /></td>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr id="trtype">
                        <td height="20" valign="bottom"><span class="STYLE1">当前登录用户：<%=request.getSession().getAttribute("username") %> &nbsp;用户角色：<%=request.getSession().getAttribute("cx") %></span></td>
                        <td valign="bottom" class="STYLE1"><div align="right"><img src="images/sj.gif" width="6" height="7" /> IP：<%=request.getRemoteAddr() %> &nbsp; &nbsp;&nbsp;<img src="images/sj.gif" width="6" height="7" /> 系统开发者：曾丽丽 &nbsp;&nbsp;&nbsp; <img src="images/sj.gif" width="6" height="7" /> 单位：福州大学至诚学院&nbsp;&nbsp;</div></td>
                    </tr>
                </table></td>
                <td width="0"><img src="images/main_32.gif" width="0" height="30" /></td>
            </tr>
        </table></td>
    </tr>
</table>
</body>
</html>
