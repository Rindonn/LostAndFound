<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="mypackage.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>Ա����Ϣ����</title>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 14px;
	font-weight: bold;
}
.STYLE4 {font-size: 14px}
-->
</style>
<script language="javascript">
	function del(id){
		if(confirm("�����Ҫɾ��ѡ��ļ�¼��")){
				document.location.href="lxxop.jsp?op=del&id="+id;
		}	
	}
	function check(){
		if(document.zgform.svalue.value==""){
			alert("�������ѯ����");
			return false;
		}
	}
	
</script>
</head>

<body>
<form name="zgform" action="zbxxmanager.jsp" method="post" onsubmit="javascript:return check();">
<table width="829" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#9EC3F2" style="font-size:12px">
  <!--DWLayoutTable-->
  <tr>
    <td height="25" colspan="5" align="left" valign="middle" background="img/bg_titlebarr.gif"><span class="STYLE1">������Ϣ����[<a href="addnewsgr.jsp">������Ϣ</a>]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> </td>
  </tr>
  <tr>
    <td width="170" height="25" align="center" valign="middle" bgcolor="#F9FCFF">���</td>
    <td width="239" align="center" valign="middle" bgcolor="#F9FCFF">����</td>
    <td width="127" align="center" valign="middle" bgcolor="#F9FCFF">����</td>
    <td width="129" align="center" valign="middle" bgcolor="#F9FCFF">����ʱ��</td>
    <td width="129" align="center" valign="middle" bgcolor="#F9FCFF">״̬</td>
    <td width="158" align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4">����</span></td>
  </tr>
  <%
  newsop neop=new newsop();
  String op=DateFormate.toGb((String)request.getParameter("op"));
  String svalue=DateFormate.toGb((String)request.getParameter("svalue"));
  ArrayList al=new ArrayList();
    
  String sid = (String)session.getAttribute("s_username");
	al=neop.getnewsall(sid);
 
 news n=new news();
  for(int i=0;i<al.size();i++){
	  n=(news)al.get(i);
	  
  %>
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=n.getBh() %></span></td>
    <td align="center" valign="middle" bgcolor="#F9FCFF"><%=n.getBt() %></td>
    <td align="center" valign="middle" bgcolor="#F9FCFF"><%=n.getLx()%></td>
    <td align="center" valign="middle" bgcolor="#F9FCFF"><%=n.getFbsj() %></td>
    <td align="center" valign="middle" bgcolor="#F9FCFF">
		<%if("10".equals(n.getZt())){%>
				�����
	    <%}%>
		<%if("20".equals(n.getZt())){%>
				�����
	    <%}%>
	</td>
    <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><a href="newsopgr.jsp?op=del&bh=<%=n.getBh()%>">ɾ��</a>&nbsp;&nbsp;</span></td>
  </tr>
  <%
  }
  
  %>
</table>
<input name="op" type="hidden" value="search" />
</form>
</body>
</html>
<iframe  width="0" height="0"></iframe>
