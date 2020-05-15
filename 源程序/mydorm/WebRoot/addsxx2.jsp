 <%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="mypackage.*,java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0040)http://www.syjiajiao.org/RegProtocol.asp -->
<HTML><HEAD><TITLE>用户注册</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312"><LINK 
href="images/main.css" type=text/css rel=stylesheet>
<META content="MSHTML 6.00.2900.5726" name=GENERATOR>
<style type="text/css">
<!--
.STYLE2 {color: #0000FF}
.STYLE4 {color: #FF0000}
.STYLE9 {	color: #FF0000;
	font-size: 14px;
	font-weight: bold;
}
.STYLE1 {	font-size: 14px;
	font-weight: bold;
}
-->
</style>
</HEAD>
 
  <%@ include file="top2.jsp"%>
<%
newsop newop=new newsop();
news ne=new news(); 
String bh=DateFormate.toGb((String)request.getParameter("bh"));
ne=newop.getnewsbybh(bh);
 
  %>
<body>
<form name="opform" method="post" action="sxxop.jsp" onsubmit="javascript:return check();">
<table width="750" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="1" bgcolor="#9EC3F2" style="font-size:12px">
  <!--DWLayoutTable-->
  <tr>
    <td height="25" colspan="2" align="left" valign="middle" background="img/bg_titlebarr.gif"><span class="STYLE1">&nbsp;新增会员信息&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
  </tr>
  
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">用户名</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="sid" type="text" id="sid" /></td>
  </tr>
  <tr>
    <td width="115" height="25" align="center" valign="middle" bgcolor="#F9FCFF">姓名</td>
    <td width="632" align="left" valign="middle" bgcolor="#F9FCFF"><input name="sname" type="text" id="sname" /></td>
    </tr>
  
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">性别</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF"> <select name="sxb" id="sxb">
     
      <option value="男" selected="selected">男</option>
      <option value="女">女</option>
    </select></td>
  </tr>
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">密码</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="sbj" type="password" id="sbj" /></td>
  </tr>
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">联系电话</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="ssfz" type="text" id="ssfz" maxlength="18" /></td>
    </tr>
</table>
<table width="750" border="0" cellpadding="0" cellspacing="0" align="center">
  <!--DWLayoutTable-->
  <tr>
    <td width="750" height="30" align="center" valign="middle"><input type="submit" name="Submit" value="注册" />
    &nbsp;</td>
  </tr>
</table>
 
<input type="hidden" name="op" value="add"/>
</form>
</body>
</html>

