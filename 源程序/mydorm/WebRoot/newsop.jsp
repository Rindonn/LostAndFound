<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="mypackage.*,java.util.*" %>
<%
String op=DateFormate.toGb((String)request.getParameter("op"));
String bh,bt,nr,fbsj,lx;
int    li_count=0;
newsop neop=new newsop();
 if("del".equals(op)){
	bh=DateFormate.toGb((String)request.getParameter("bh"));
	
 
	 
	neop.delete(bh);
	%>
	<script language="javascript">
	alert("操作成功");
	document.location.href="newsmanager.jsp";
	</script>
	<%	 
}else if("mod".equals(op)){
	 
	 bh=DateFormate.toGb((String)request.getParameter("bh"));
	 
	%>
	<script language="javascript">
	alert("操作成功");
	document.location.href="newsmanager.jsp";
	</script>
	<%	}else if("sh".equals(op)){
		bh=DateFormate.toGb((String)request.getParameter("bh"));
		neop.sh(bh);
	
	%>
	<script language="javascript">
	alert("操作成功");
	document.location.href="newsmanager.jsp";
	</script>
	
	<%}else if("add".equals(op)){
	bh=DateFormate.getId();
	bt=DateFormate.toGb((String)request.getParameter("bt"));
	nr=DateFormate.toGb((String)request.getParameter("nr"));
	fbsj=DateFormate.toGb((String)request.getParameter("fbsj"));
	lx=DateFormate.toGb((String)request.getParameter("lx"));
	String sid = (String)session.getAttribute("s_username");
	
	 neop.add(bh,bt,nr,fbsj,lx,sid);
	 
	%>
	<script language="javascript">
	alert("操作成功");
	document.location.href="newsmanager.jsp";
	</script>
	<%	}
	
	
	
%>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title> </title>

<body>
</body>

<iframe  width="0" height="0"></iframe>
