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
	alert("������Ϣ��д���");
	document.location.href="rzmanager2.jsp";
	</script>
	
	<%
}else if("del".equals(op)){
	sid=DateFormate.toGb((String)request.getParameter("sid"));
 
	 
	if(!sxx.checkRz(sid)){
	%>
		<script language="javascript">
	    alert("����������ס��Ԥ����Ϣ�����ܽ��д˲�����");
	    document.location.href="sxxmanager.jsp";
	    </script>
	<%
	}
	else
	{
	sxx.delete(sid);
	%>
	<script language="javascript">
	alert("�����ɹ�");
	document.location.href="sxxmanager.jsp";
	</script>
	 
	<%	}
	}
%>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title> </title>


<body>
</body>

