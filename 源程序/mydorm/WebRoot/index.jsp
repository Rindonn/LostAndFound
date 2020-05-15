 <%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="mypackage.*,java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0025)http://www.syjiajiao.org/ -->
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>失物招领管理系统</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312"><LINK 
href="images/main.css" type=text/css rel=stylesheet>
<script type="text/javascript">
	var code ; //在全局定义验证码   
		//产生验证码   
	window.onload = createCode;
	
	function createCode(){  
	     code = "";   
	     var codeLength = 4;//验证码的长度   
	     var checkCode = document.getElementById("code");   
	     var random = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R', 'S','T','U','V','W','X','Y','Z');//随机数   
	    for(var i = 0; i < codeLength; i++) {//循环操作   
	        var index = Math.floor(Math.random()*36);//取得随机数的索引（0~35）   
	        code += random[index];//根据索引取得随机数加到code上   
	    }  
	    checkCode.value = code;//把code值赋给验证码   
	}

</script>

<script language="javascript">
	function checkform(){
		
		var number = document.getElementById("number").value;
		if(number ==""){
			alert("验证码不能为空！");
			return false;
		}
		var code = document.getElementById("code").value;
		
		if(number != code){
			alert("验证码不正确！");
			return false;
		}
		
		var username = document.getElementById("username").value;
		if(username==""){
			alert("用户名不能为空！");
			return false;
		}
		var mm = document.getElementById("mm").value;
		if(mm==""){
			alert("密码不能为空！");
			return false;
		}
	}
	function exit(){
		if(confirm("您真的要退出本系统吗？")){
			window.opener=null;
			window.close();
		}
	}
	
</script>

<META content="MSHTML 6.00.2900.5726" name=GENERATOR>
<style type="text/css">
<!--
.STYLE7 {color: #0000FF}
-->
</style>
</HEAD>
<BODY onload=XMLDataShow()>
<%@ include file="top2.jsp"%>
<TABLE cellSpacing=0 cellPadding=0 width=920 align=center border=0>
  <TBODY>
  <TR>
    <TD colSpan=3 height=5></TD></TR>
  <TR>
    <TD vAlign=top width=252><!--登录开始-->
      <TABLE class=listContent cellSpacing=1 cellPadding=0 width="100%" 
border=0>
        <TBODY>
        <TR>
          <TD class=list2>
		  
		  
		  <form name="loginform" method="post" action="logintest2.jsp" onSubmit="javascript:return checkform();">
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD background=images/title_blue.gif height=31>
				
				
				
				
				
                  <TABLE cellSpacing=0 cellPadding=0 width="90%" align=center 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD width="63%" class=title1>用户登录</TD>
                      <TD width="37%"><a href="add.asp"></a></TD>
                    </TR></TBODY></TABLE></TD></TR>
              <TR>
                <TD height="129"><table width="248" border="0" cellspacing="0" style="font-size:12px">
                  <tr>
                    <td width="68" height="33">用户名</td>
                    <td width="176"><input name="username" type="text" id="username"></td>
                  </tr>
                  <tr>
                    <td height="25">密码</td>
                    <td><input name="password" type="password" id="password"></td>
                  </tr>
                  <tr>
                    <td height="25">验证码</td>
                    <td>
                    	<input name="chknumber" type="text" id = "number" maxlength="4" class="chknumber_input" style="width: 55px"/>
        			<input type="button" id="code" onClick="createCode()" class="btn" style="background:url('/zhaoling/images/yz.jpg');"/>
                    </td>
                  </tr>
                  <tr>
                    <td height="26"><a href="addsxx2.jsp" class="STYLE7">用户注册</a></td>
                    <td><input name="type" type="radio" value="3" checked>
                      普通用户</td>
                  </tr>
                  <tr>
                    <td height="26"><a href="gl.asp"></a></td>
                    <td><input type="submit" name="Submit" value="登  陆">
                      &nbsp;&nbsp;
                      <input type="reset" name="Submit2" value="重  置"></td>
                  </tr>
                </table>
				
				 
				
				</TD>
              </TR></TABLE>
			  
			  
			  </form>
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  </TD></TR></TABLE><!--登录结束-->
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD height=6></TD></TR></TBODY></TABLE> 
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD height=6></TD></TR></TBODY></TABLE><!--搜索开始-->
          <!--搜索结束-->
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD height=6></TD></TR></TBODY></TABLE><!---->
      <TABLE class=listContent cellSpacing=1 cellPadding=0 width="100%" 
border=0>
        <TBODY>
        <TR>
          <TD class=list>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD background=images/title_blue.gif height=31>
                  <TABLE cellSpacing=0 cellPadding=0 width="90%" align=center 
                  border=0>
                    <TBODY>
                    <TR>
                              <TD class=title1>校园风采</TD>
                              <TD width="20%">&nbsp;</TD>
                            </TR></TBODY></TABLE></TD></TR>
              <TR>
                <TD>
                  <TABLE cellSpacing=0 cellPadding=0 width="94%" align=center 
                  border=0>
                    <TBODY>
                    <TR>
                              <TD height=47				><img src="img/11.jpg" width="248" height="180"></TD>
                            </TR>
                    <TR>
                      
                      <TD 
        height=6><p><img src="img/22.jpg" width="248" height="180"></p>
                                <p><img src="img/33.jpg" width="248" height="180"></p>
                                </TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
      </TD>
    <TD width=6></TD>
    <TD vAlign=top><!--右侧开始-->
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD vAlign=top width="331"><!--活动信息开始-->
            <TABLE class=listContent cellSpacing=1 cellPadding=0 width="100%" 
            border=0>
              <TBODY>
              <TR>
                <TD class=list>
                  <TABLE id=Table4 cellSpacing=0 cellPadding=0 width="100%" 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD background=images/title_blue.gif height=31>
                        <TABLE id=Table5 cellSpacing=0 cellPadding=0 width="96%" 
                        align=center border=0>
                          <TBODY>
                          <TR>
                            <TD class=title1>系统简介</TD>
                            <TD align=right width="20%"><a href="news.asp"></a></TD>
                          </TR></TBODY></TABLE></TD></TR>
                    <TR>
                      <TD vAlign=top height=143><table id=Table9 cellspacing=0 cellpadding=0 width="305" 
                        align=center border=0 height="157">
                        
                        <tr>
                          <td height="20"><marquee direction="up" width="300" height="150" scrollamount="1" style="font-size: 9pt; text-indent: 0; line-height: 150%; list-style-type: disc;  color: #0000FF"><%
	GgManager gm=new GgManager();
	Gg gg=gm.getGgInfo();
	String dispgg=gg.getGgnr();
	if(dispgg.length()<=0){
		dispgg="暂无公告";
	}
		%><%=dispgg%></marquee></td>
                          </tr>
                        
                      </table></TD>
                    </TR></TBODY></TABLE></TD></TR></TBODY></TABLE><!--活动信息结束--></TD>
          <TD width=4></TD>
          <TD width="327" vAlign=top><!--温馨提示开始-->
            <TABLE class=listContent id=Table6 cellSpacing=1 cellPadding=0 
            width="100%" border=0>
              <TBODY>
              <TR>
                <TD class=list>
                  <TABLE id=Table7 cellSpacing=0 cellPadding=0 width="318" 
                  border=0 height="189">
                    <TBODY>
                    <TR>
                      <TD background=images/title_blue.gif colSpan=2 
                      height=31>
                        <TABLE id=Table8 cellSpacing=0 cellPadding=0 width="96%" 
                        align=center border=0>
                          <TBODY>
                          <TR>
                            <TD class=title1>校园新闻</TD>
                            <TD align=right width="20%"><a href="zc.asp"></a></TD>
                          </TR></TBODY></TABLE></TD></TR>
                    <TR>
                      <TD width=80 height=143><IMG height=143 
                        src="images/pic03.jpg" width=80></TD>
                      <TD valign="top"><table id=Table9 cellspacing=0 cellpadding=0 width="96%" 
                        align=center border=0>
                        <%
  newsop newop=new newsop();
  
  ArrayList al8=new ArrayList();
  
  al8=newop.getnewbylx("新闻公告");
 
 news n8=new news();
  for(int i=0;i<al8.size()&&i<7;i++){
	  n8=(news)al8.get(i);
 
  
					  %>
                        <tr>
                          <td height="6"> <a href="dispnewsxw.jsp?bh=<%=n8.getBh()%>"><%=n8.getBt()%></a></td>
                          </tr>
                       <%
						
						}
						
						%>
                      </table></TD>
              </TR></TBODY></TABLE></TD></TR></TBODY></TABLE><!--温馨提示结束--></TD></TR></TBODY></TABLE><!--ad1-->
      <TABLE id=Table1 cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD height=6></TD></TR>
        <TR>
          <TD bgColor=#cccccc height=90><A href="http:///" target=_blank><IMG 
            style="BORDER-LEFT-COLOR: #999999; BORDER-BOTTOM-COLOR: #999999; BORDER-TOP-COLOR: #999999; BORDER-RIGHT-COLOR: #999999" 
            height=90 alt=点燃希望之火 src="images/200805170000000001.jpg" 
            width=662 border=0></A></TD></TR></TBODY></TABLE><!--ad1结束-->
      <TABLE id=Table2 cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD height=6></TD></TR></TBODY></TABLE><!--学员开始-->
      <TABLE class=listContent cellSpacing=1 cellPadding=0 width="100%" 
border=0>
        <TBODY>
        <TR>
          <TD class=list>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD background=images/title_blue.gif colSpan=2 
height=31>
                  <TABLE cellSpacing=0 cellPadding=0 width="96%" align=center 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD class=title1>失物信息<br></TD>
                      <TD align=right width="20%"><A 
                        href="morenews1.jsp"><FONT 
                        color=#3366ff>更多&gt;&gt;</FONT></A></TD>
                    </TR></TBODY></TABLE></TD></TR>
              <TR>
                <TD vAlign=top width=85 height=155><IMG 
                  src="images/pic01.jpg"></TD>
                <TD vAlign=top>
                  <TABLE id=Table3 cellSpacing=0 cellPadding=0 width="97%" 
                  align=center border=0 style="font-size:12px">
                    <TBODY>
                    <TR>
                      <TD width="76%" height=6></TD>
                    </TR>
					    <%
  
  
  ArrayList al3=new ArrayList();
  
  al3=newop.getnewbylx("失物信息");
 
 news n1=new news();
  for(int i=0;i<al3.size()&&i<7;i++){
	  n1=(news)al3.get(i);
 
  
					  %>
					  
                    <TR height=25>
                      <TD><IMG src="images/dot01.gif"><a href="dispnews.jsp?bh=<%=n1.getBh()%>"><%=n1.getBt()%></a></TD>
                      <TD width="24%">[ <%=n1.getFbsj()%>
                      ]</TD></TR>
						<%
						
						}
						
						%>
						 
						
                    <TR>
                      <TD background=images/dot_line01.gif colSpan=2 
                      height=1></TD></TR>
                    <TR>
                      <TD background=images/dot_line01.gif colSpan=2 
                      height=1></TD></TR>
                    <TR>
                      <TD 
        height=6></TD></TR></TBODY></table>
		
		
		
		</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><!----><!--ad2-->
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD height=6></TD></TR>
        <TR>
          <TD bgColor=#cccccc height=90><A href="http:///" target=_blank><IMG 
            style="BORDER-LEFT-COLOR: #999999; BORDER-BOTTOM-COLOR: #999999; BORDER-TOP-COLOR: #999999; BORDER-RIGHT-COLOR: #999999" 
            height=90 alt=育才助长 src="images/200805170000000002.jpg" 
            width=662 border=0></A></TD></TR></TBODY></TABLE><!--ad2结束-->
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD height=6></TD></TR></TBODY></TABLE><!---->
      <TABLE class=listContent cellSpacing=1 cellPadding=0 width="100%" 
border=0>
        <TBODY>
        <TR>
          <TD class=list>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD background=images/title_blue.gif colSpan=2 
height=31>
                  <TABLE cellSpacing=0 cellPadding=0 width="96%" align=center 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD class=title1>招领信息<br></TD>
                      <TD align=right width="20%"><a href="morenews2.jsp">更多</a></TD>
                    </TR></TBODY></TABLE></TD></TR>
              <TR>
                <TD vAlign=top width=85 height=155><IMG 
                  src="images/pic02.jpg"></TD>
                <TD vAlign=top><TABLE id=Table3 cellSpacing=0 cellPadding=0 width="97%" 
                  align=center border=0 style="font-size:12px">
                  <TBODY>
                    <TR>
                      <TD width="76%" height=6></TD>
                    </TR>
                    <%
  
  
  ArrayList al4=new ArrayList();
  
  al4=newop.getnewbylx("招领信息");
 
 news n2=new news();
  for(int i=0;i<al4.size()&&i<7;i++){
	  n2=(news)al4.get(i);
 
  
					  %>
                    <TR height=25>
                      <TD><IMG src="images/dot01.gif"><a href="dispnews.jsp?bh=<%=n2.getBh()%>"><%=n2.getBt()%></a></TD>
                      <TD width="24%">[ <%=n2.getFbsj()%> ]</TD>
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
                </table></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><!--家教结束--><!--右侧开始--></TD></TR></TBODY></TABLE><!--链接开始-->
<TABLE cellSpacing=0 cellPadding=0 width=920 align=center border=0>
  <TBODY>
  <TR>
  <TR>
    <TD bgColor=#efefef>
      <TABLE cellSpacing=10 cellPadding=0 width="1778" align=center border=0 height="77">
        <TBODY>
        <TR>
          <TD align=middle><br></TD>
          <TD align=middle><br></TD>
          <TD align=middle><br></TD>
          <TD align=middle><br></TD>
          <TD align=middle><br></TD>
          <TD align=middle><br></TD>
          <TD align=middle><br></TD>
          <TD align=middle><br></TD>
          <TD align=middle><br></TD>
        <TR>
          <TD align=middle><A href="http://www.syit.edu.cn/" 
            target=_blank><br></A></TD>
          <TD align=middle><A href="http://www.sut.edu.cn/" target=_blank><br></A></TD>
          <TD align=middle><A href="http://www.sycm.com.cn/" 
            target=_blank><br></A></TD>
          <TD align=middle><A href="http://www.syty.edu.cn/" 
            target=_blank><br></A></TD>
          <TD align=middle><A href="http://sytvu.ln.cninfo.net/" 
            target=_blank><br></A></TD>
          <TD align=middle><A href="http://www.syiae.edu.cn/" 
            target=_blank><br></A></TD>
          <TD align=middle><A href="http://www.syce.edu.cn/" 
            target=_blank><br></A></TD>
          <TD align=middle><A href="http://www.sjzu.edu.cn/" 
            target=_blank><br></A></TD>
          <TD align=middle><br></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><!--链接结束-->
<TABLE cellSpacing=0 cellPadding=0 width=920 align=center border=0>
  <TBODY>
  <TR>
    <TD height=6></TD></TR>
  <TR>
    <TD bgColor=#cccccc height=2></TD></TR>
  <TR>
    <TD height=10></TD></TR>
  <TR>
    <TD align=middle><div align="center">失物招领管理系统[<a href="login.jsp">管理员入口</a>]</div></TD>
  </TR>
  <TR>
    <TD class=td_hanker align=middle><div align="center"><br></div></TD></TR>
  <TR>
    <TD height=10><br><br><br></TD></TR></TBODY></TABLE></BODY></HTML>
