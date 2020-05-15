 <%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="mypackage.*,java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0040)http://www.syjiajiao.org/RegProtocol.asp -->
<HTML><HEAD><TITLE>失物及招 领信息</TITLE>
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
-->
</style>
</HEAD>
<%
newsop newop=new newsop();
news ne=new news(); 
String bh=DateFormate.toGb((String)request.getParameter("bh"));
 ne=newop.getnewsbybh(bh);
 sxxop sxxop = new sxxop();
 sxx sx = sxxop.getDetail(ne.getSid());
  %>
<BODY leftMargin=0 topMargin=0>
<%@ include file="top2.jsp"%>
<TABLE cellSpacing=0 cellPadding=0 width=920 align=center bgColor=white 
border=0>
  <TBODY>
  <TR>
    <TD width=1 bgColor=#dfdfdf></TD>
    <TD align="left" valign="top"><table width="907" height="94" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="35" align="center" valign="middle"><span class="STYLE9"><%=ne.getBt()%></span></td>
      </tr>
      <tr>
        <td height="27">
          &nbsp;&nbsp;&nbsp;&nbsp;<%=ne.getNr()%> </td>
      </tr>
      <tr>
        <td width="907" height="32" align="right" valign="middle">发布人：<%=sx.getSname() %>|联系电话：<%=sx.getSsfz() %>|日期：<span class="STYLE4"><%=ne.getFbsj()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
      </tr>
    </table></TD>
    <TD width=1 bgColor=#dfdfdf></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=920 align=center border=0>
  <TBODY>
  <TR>
    <TD height=6></TD></TR>
  <TR>
    <TD bgColor=#cccccc height=2></TD></TR>
  <TR>
    <TD height=10></TD></TR>
  <TR>
    <TD align=middle>&nbsp;</TD>
  </TR>
  <TR>
    <TD class=td_hanker align=middle><A href="http://www.hanker.cn/" 
      target=_blank></A></TD>
  </TR>
  <TR>
    <TD height=10></TD></TR></TBODY></TABLE></BODY></HTML>
