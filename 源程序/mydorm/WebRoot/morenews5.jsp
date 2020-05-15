 <%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="mypackage.*,java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0040)http://www.syjiajiao.org/RegProtocol.asp -->
<HTML><HEAD><TITLE>招领信息</TITLE>
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
 
  <%@ include file="top2.jsp"%>
<BODY leftMargin=0 topMargin=0>
 
<TABLE cellSpacing=0 cellPadding=0 width=920 align=center bgColor=white 
border=0>
  <TBODY>
  <TR>
    <TD width=1 bgColor=#dfdfdf></TD>
    <TD align="left" valign="top"><table width="907" height="94" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="35" align="center" valign="middle"><span class="STYLE9"> </span></td>
      </tr>
      <tr>
        <td height="27"><TABLE id=Table3 cellSpacing=0 cellPadding=0 width="97%" 
                  align=center border=0 style="font-size:12px">
          <TBODY>
            <TR>
              <TD width="76%" height=6></TD>
            </TR>
            <TR>
              <TD width="76%" height=6><form action="morenews5.jsp" method = "post">关键字：<input type="text" size="50" name="ss"/> <input type="submit" value="搜索"/></form></TD>
            </TR>
            <%
  newsop newop=new newsop();
  
  ArrayList al3=new ArrayList();
  String ss = request.getParameter("ss");
  al3=newop.getnewbylx2("招领信息",ss);
 
 news n1=new news();
  for(int i=0;i<al3.size();i++){
	  n1=(news)al3.get(i);
 
  
					  %>
            <TR height=25>
              <TD><IMG src="images/dot01.gif"><a href="dispnews.jsp?bh=<%=n1.getBh()%>"><%=n1.getBt()%></a></TD>
              <TD width="24%">[ <%=n1.getFbsj()%> ]</TD>
            </TR>
            <%
						
						}
						
						%>
            <TR>
              <TD background=images/dot_line01.gif colSpan=2 
                      height=1></TD>
            </TR>
            <TR>
              <TD background=images/dot_line01.gif colSpan=2 
                      height=1></TD>
            </TR>
            <TR>
              <TD 
        height=6></TD>
            </TR>
          </TBODY>
        </table>         </td>
      </tr>
      <tr>
        <td width="907" height="32" align="right" valign="middle"> <span class="STYLE4">&nbsp;&nbsp;&nbsp;</span></td>
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
