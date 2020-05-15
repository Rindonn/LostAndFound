<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="mypackage.*,java.util.*" %>
<%
String op=DateFormate.toGb((String)request.getParameter("op"));
String sid,sname,sxb,sbj,ssfz;
 
sxxop sxx=new sxxop();
if("add".equals(op)){
    sid=DateFormate.toGb((String)request.getParameter("sid"));
	sname=DateFormate.toGb((String)request.getParameter("sname"));
	sxb=DateFormate.toGb((String)request.getParameter("sxb"));
	sbj=DateFormate.toGb((String)request.getParameter("sbj"));
 	ssfz=DateFormate.toGb((String)request.getParameter("ssfz"));
 
	sxx.add(sid,sname,sxb,sbj,ssfz);
	%>
	<script language="javascript">
	alert("操作成功 请到网站首面登陆");
	document.location.href="index.jsp";
	</script>
	
	<%
}else if("del".equals(op)){
	sid=DateFormate.toGb((String)request.getParameter("sid"));
 
	 
	sxx.delete(sid);
	%>
	<script language="javascript">
	alert("操作成功");
	document.location.href="sxxmanager.jsp";
	</script>
	 
	<%	
	}
%>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title> </title>


<body>
</body>

