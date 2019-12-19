<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/18
  Time: 23:40
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
    <title>修改单选题</title>
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
    <LINK href="css/style.css" type=text/css rel=stylesheet>
</head>
<script language="javascript">
    function check()
    {
        if(document.form1.id_num.value==""){
            alert("请输入编号");
            document.form1.id_num.focus();
            return false;
        }if(document.form1.question.value==""){
            alert("请输入试题");
            document.form1.question.focus();
            return false;
        }if(document.form1.opa.value==""){
            alert("请输入选项A");
            document.form1.opa.focus();
            return false;
        }if(document.form1.opb.value==""){
            alert("请输入选项B");
            document.form1.opb.focus();
            return false;
        }if(document.form1.opc.value==""){
            alert("请输入选项C");
            document.form1.opc.focus();
            return false;
        }if(document.form1.opd.value==""){
            alert("请输入选项D");
            document.form1.opd.focus();
            return false;
        }
    }
</script>
<body >
<%
    String id=request.getParameter("id");
%>
<form name="form1" id="form1" method="post" action="singlechoice_update_post.jsp?id=<%=id %>">
    修改选择题:
    <br><br>
    <%
        String sql="select * from singlechoice where id="+id;
        String id_num="";
        String question="";
        String difficult="";
        String opa="";
        String opb="";
        String opc="";
        String opd="";
        String answer="";
//        ResultSet RS_result=connDbBean.executeQuery(sql);
//        while(RS_result.next()){
//            id_num=RS_result.getString("id_num");
//            question=RS_result.getString("questio");
//            difficult=RS_result.getString("difficult");
//            opa=RS_result.getString("opa");
//            opb=RS_result.getString("opb");
//            opc=RS_result.getString("opc");
//            opd=RS_result.getString("opd");
//            answer=RS_result.getString("answer");
//        }
    %>
    <table width="100%" border="2" align="center" cellpadding="6" cellspacing="3" bordercolor="Skyblue" style="border-collapse:collapse">
        <tr>
            <td>编号：</td>
            <td>
                <input name='id_num' type='text' id='id_num' value='<%= id_num%>' />
            </td>
        </tr>
        <tr>
            <td>试题：</td>
            <td>
                <textarea name="question" style="display:none">
                    <%=question%>
                </textarea>
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
        <script language="javascript">
            document.form1.difficult.value='<%=difficult%>';
        </script>
        <tr>
            <td>选项A：</td>
            <td>
                <input name='opa' type='text' id='opa' size='50' value='<%=opa%>' />
            </td>
        </tr>
        <tr>
            <td>选项B：</td>
            <td>
                <input name='opb' type='text' id='opb' size='50' value='<%=opb%>' />
            </td>
        </tr>
        <tr>
            <td>选项C：</td>
            <td>
                <input name='opc' type='text' id='opc' size='50' value='<%=opc%>' />
            </td>
        </tr>
        <tr>
            <td>选项D：</td>
            <td>
                <input name='opd' type='text' id='opd' size='50' value='<%=opd%>' />
            </td>
        </tr>
        <tr>
            <td>答案：</td>
            <td>
                <select name='answer' id='answer'>
                    <option value="A">A</option>
                    <option value="B">B</option>
                    <option value="C">C</option>
                    <option value="D">D</option>
                </select>
            </td>
        </tr>
        <script language="javascript">
            document.form1.answer.value='<%=answer%>';
        </script>
        <tr>
            <td>&nbsp;</td>
            <td><input type="submit" name="Submit" class="Submit" value="提交" onClick="return check();" />
                <input type="reset" name="Submit2" class="Submit2" value="重置" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>
