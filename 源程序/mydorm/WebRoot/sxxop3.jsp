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
	sbj="1";
 	ssfz=DateFormate.toGb((String)request.getParameter("ssfz"));
 
	sxx.add(sid,sname,sxb,sbj,ssfz);
	%>
	<script language="javascript">
	alert("基本信息填写完成");
	document.location.href="rzmanager2.jsp";
	</script>
	
	<%
}else if("del".equals(op)){
	sid=DateFormate.toGb((String)request.getParameter("sid"));
 
	 
	if(!sxx.checkRz(sid)){
	%>
		<script language="javascript">
	    alert("此人已有入住或预定信息，不能进行此操作！");
	    document.location.href="sxxmanager.jsp";
	    </script>
	<%
	}
	else
	{
	sxx.delete(sid);
	%>
	<script language="javascript">
	alert("操作成功");
	document.location.href="sxxmanager.jsp";
	</script>
	 
	<%	}
	}
%>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title> </title>


<body>
</body>

