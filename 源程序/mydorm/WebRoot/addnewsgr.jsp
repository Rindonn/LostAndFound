<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="mypackage.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>����</title>
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
		if(document.opform.tb.value==""){
			alert("���������ƣ�");
			return false;
		}
		 
	 	
	}
</script>
<script language="javascript">
function upfile(){
	var ret=window.showModalDialog("upfile.jsp",window,"dialogHeight:140px;dialogWidth:640px;status:off;center:yes;resizable:no;scroll:no;edge:raised;help:no");	
	if(ret==null){
		document.opform.pic.value="";
	}else{
		document.opform.pic.value=ret;
	}	
}
</script>
</head>

<body>
<form name="opform" method="post" action="newsopgr.jsp" onsubmit="javascript:return check();">
<table width="609" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="1" bgcolor="#9EC3F2" style="font-size:12px">
  <!--DWLayoutTable-->
  <tr>
    <td height="25" colspan="2" align="left" valign="middle" background="img/bg_titlebarr.gif"><span class="STYLE1">&nbsp;������Ϣ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
  </tr>
  
  <tr>
    <td width="115" height="25" align="center" valign="middle" bgcolor="#F9FCFF">����</td>
    <td width="382" align="left" valign="middle" bgcolor="#F9FCFF"><input name="bt" type="text" id="bt" size="30" />
      *</td>
    </tr>
  
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">����</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF"><textarea name="nr" cols="60" rows="20" id="nr"></textarea></td>
  </tr>
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">����ʱ��</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="fbsj" type="text" id="fbsj" />
    ��ʽ��yyyy-mm-dd</td>
  </tr>
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">����</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF"><select name="lx" id="lx">
      
      <option value="ʧ����Ϣ" selected="selected">ʧ����Ϣ</option>
      <option value="������Ϣ">������Ϣ</option>
    </select>
    </td>
  </tr>
</table>
<table width="750" border="0" cellpadding="0" cellspacing="0" align="center">
  <!--DWLayoutTable-->
  <tr>
    <td width="750" height="30" align="center" valign="middle"><input type="submit" name="Submit" value="����" />&nbsp;</td>
  </tr>
</table>
 
<input type="hidden" name="op" value="add"/>
</form>
</body>
</html>
<iframe  width="0" height="0"></iframe>
