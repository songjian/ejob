		<%@ language="vbscript"%>
		<!--#include file="inc\dbconn.asp"-->
<html>
<head>

</head>
<body>
	<%
		dim resume_user,resume_com
		resume_user = request.querystring("userno")
		resume_com=session("com_id")
		
		dim sql
		dim myconn
		set myconn = open_conn
		dim rs
		sql = "update resumelog set resume_script='1' where resume_user='"&resume_user&"' and resume_com='"&resume_com&"'"
		'response.Write sql	
		'response.end
		set rs = myconn.execute(sql)
		response.Redirect "compage.asp"
	%>
</body>
</html>