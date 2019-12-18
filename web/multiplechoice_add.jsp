<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/18
  Time: 18:03
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
    <title>多选题添加</title>
    <LINK href="css/style.css" type=text/css rel=stylesheet>
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
<%--<script language="javascript">--%>
<%--    function check()--%>
<%--    {--%>
<%--        if(document.form1.bianhao.value==""){alert("请输入编号");document.form1.bianhao.focus();return false;}if(document.form1.xuanxiangA.value==""){alert("请输入选项A");document.form1.xuanxiangA.focus();return false;}if(document.form1.xuanxiangB.value==""){alert("请输入选项B");document.form1.xuanxiangB.focus();return false;}if(document.form1.xuanxiangC.value==""){alert("请输入选项C");document.form1.xuanxiangC.focus();return false;}if(document.form1.xuanxiangD.value==""){alert("请输入选项D");document.form1.xuanxiangD.focus();return false;}--%>
<%--    }--%>
<%--    function gow()--%>
<%--    {--%>
<%--        document.location.href="multiplechoice_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;--%>
<%--    }--%>
<%--</script>--%>
<body >
<form name="form1" id="form1" method="post" action="multiplechoice_add_post.jsp">
    添加多选题:<br><br>
    <table width="100%" border="2" align="center" cellpadding="6" cellspacing="3" bordercolor="SkyBlue" style="border-collapse:collapse">
        <tr>
            <td>编号：</td>
            <td>
                <input name='id_num' type='text' id='id_num' value='' />&nbsp;*
            </td>
        </tr>
        <tr>
            <td>试题：</td>
            <td>
                <textarea name="question" style="display:none"></textarea>
                <iframe ID="eWebEditor1" src="eWebEditor_V4.60/ewebeditor.htm?id=question&style=coolblue" frameborder="0" scrolling="no" width="600" HEIGHT="350"></iframe>
            </td>
        </tr>
        <tr>
            <td>难易程度：</td>
            <td>
                <select name='difficult' id='difficult'>
                    <option value="1">易</option>
                    <option value="2">中</option>
                    <option value="3">难</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>选项A：</td>
            <td>
                <input name='opa' type='text' id='opa' value='' size='50' />&nbsp;*
            </td>
        </tr>
        <tr>
            <td>选项B：</td>
            <td>
                <input name='opb' type='text' id='opb' value='' size='50' />&nbsp;*
            </td>
        </tr>
        <tr>
            <td>选项C：</td>
            <td>
                <input name='opc' type='text' id='opc' value='' size='50' />&nbsp;*
            </td>
        </tr>
        <tr>
            <td>选项D：</td>
            <td>
                <input name='opd' type='text' id='opd' value='' size='50' />&nbsp;*
            </td>
        </tr>
        <tr>
            <td>答案：</td>
            <td>
                <input name='answer' type='text' id='answer' value='' />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><input type="submit" class="Submit" value="提交" onClick="return check();" />
                <input type="reset" class="Submit2" value="重置" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>
