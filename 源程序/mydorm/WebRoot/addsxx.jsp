<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="mypackage.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>增加楼房</title>
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
 	function check(){
		var myReg=new RegExp("^[0-9]+(\.[0-9]{1,4})?$");
		var identityCard = /^(\d{15}|\d{18})$/;
		var agetest=/^(\d{1,3})$/;
		if(document.opform.sname.value==""){
			alert("请输入学生名称！");
			return false;
		}
		if(document.opform.sbj.value==""){
			alert("请输入班级！");
			return false;
		}
		if(document.opform.sxb.value==""){
			alert("请输入性别！");
			return false;
		}
		if(document.opform.ssfz.value==""){
			alert("请输入身份证！");
			return false;
		}
	 	
	}
</script>
</head>

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
    <td align="left" valign="middle" bgcolor="#F9FCFF">   <select name="sxb" id="sxb">
     
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
    <td width="750" height="30" align="center" valign="middle"><input type="submit" name="Submit" value="保存" />&nbsp;</td>
  </tr>
</table>
 
<input type="hidden" name="op" value="add"/>
</form>
</body>
</html>
