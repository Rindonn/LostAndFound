<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="mypackage.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
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
		if(confirm("您真的要删除选择的记录吗？")){
				document.location.href="lxxop.jsp?op=del&id="+id;
		}	
	}
	function check(){
		if(document.zgform.svalue.value==""){
			alert("请输入查询内容");
			return false;
		}
	}
	
</script>
</head>

<body>
<form name="zgform" action="sxxmanager.jsp" method="post" onsubmit="javascript:return check();">
<table width="778" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#9EC3F2" style="font-size:12px">
  <!--DWLayoutTable-->
  <tr>
    <td height="25" colspan="6" align="left" valign="middle" background="img/bg_titlebarr.gif"><span class="STYLE1">&nbsp;会员信息管理[<a href="addsxx.jsp">新增会员</a>]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>性名：
      <input name="svalue" type="text" size="15" />
      &nbsp;
    <input type="submit" name="Submit" value="查找" /></td>
  </tr>
  <tr>
    <td width="127" align="center" valign="middle" bgcolor="#F9FCFF">会员号</td>
    <td width="119" align="center" valign="middle" bgcolor="#F9FCFF">名称</td>
    <td width="129" height="25" align="center" valign="middle" bgcolor="#F9FCFF">性别</td>
    <td width="125" align="center" valign="middle" bgcolor="#F9FCFF">密码</td>
    <td width="165" align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4">联系电话</td>
    <td width="106" align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4">操作</span></td>
  </tr>
  <%
  sxxop sxop=new sxxop();
  String op=DateFormate.toGb((String)request.getParameter("op"));
  String svalue=DateFormate.toGb((String)request.getParameter("svalue"));
  ArrayList al=new ArrayList();
  if("search".equals(op)){
	  al=sxop.getSxxName(svalue); 
  }else{
	al=sxop.getSxx();
	}
 sxx sx=new sxx();
  for(int i=0;i<al.size();i++){
	  sx=(sxx)al.get(i);
	  
  %>
  <tr>
    <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=sx.getSid() %></span></td>
    <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=sx.getSname() %></span></td>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=sx.getSxb() %></span></td>
    <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=sx.getSbj() %></span></td>
    <td align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4"> <span class="STYLE4"><%=sx.getSsfz() %></span></td>
    <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><a href="sxxop.jsp?op=del&sid=<%=sx.getSid()%>">删除</a></span></td>
  </tr>
  <%
  }
  
  %>
</table>
<input name="op" type="hidden" value="search" />
</form>
</body>
</html>
