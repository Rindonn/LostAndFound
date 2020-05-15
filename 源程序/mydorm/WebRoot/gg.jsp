<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="mypackage.*,java.util.*" %>
<%
String op=DateFormate.toGb((String)request.getParameter("op"));
if("save".equals(op)){
	GgManager gm=new GgManager();
	String ggnr=DateFormate.toGb((String)request.getParameter("ggnr"));
	String fbsj=DateFormate.toGb((String)request.getParameter("fbsj"));
	gm.setGg(ggnr,fbsj);
	%>
	<script language="javascript">
	alert("公告更新成功！");
	</script>
	<%
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>中国玉器信息网</title>
<style type="text/css">
<!--
.STYLE7 {
	color: #FFFFFF;
	font-size: 12px;
}
.STYLE8 {
	font-size: 12px;
	font-weight: bold;
}
.STYLE9 {font-size: 12px}
a.top:link {
	color: #FFFFFF;
	font-size: 12px;
	text-decoration: none;
}
a.top:visited {
	color: #FFFFFF;font-size: 12px;
}
a.top:active {
	color: #FFFFFF;
	font-size: 12px;

}
a.top:hover {
	color: #FFFFFF;font-size: 12px;
	text-decoration: underline;
}

-->
</style>
</head>

<body leftmargin="0" topmargin="0">
<center>
<form name="ggform" action="gg.jsp" method="post">
  <table width="585" border="0" cellpadding="0" cellspacing="0" style="border:1px solid #CCCCCC">
      <!--DWLayoutTable-->
      <tr>
        <td width="583" height="30" align="left" valign="middle" background="img/top2.gif" bgcolor="#F1EAD8"><span class="STYLE8">系统公告信息</span></td>
      </tr>
		        <%
      GgManager gm=new GgManager();
		Gg gg=gm.getGgInfo();
		%>
      <tr>
        <td height="111" align="center" valign="middle"><textarea name="ggnr" cols="80" rows="20"><%=gg.getGgnr()%></textarea><input name="fbsj" type="hidden" value="<%=DateFormate.getDateTime() %>" /><input name="op" type="hidden" value="save" /></td>
          </tr>
      
      <tr>
        <td height="30" align="center" valign="middle"><input type="submit" name="Submit" value="更新信息" /></td>
      </tr>
      

      
      
      
      
      
      
      
      
    </table>

</form>
</center>
</body>
</html>
<iframe  width="0" height="0"></iframe>
