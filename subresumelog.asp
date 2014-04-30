		<%@ language="vbscript"%>
		<!--#include file="inc\dbconn.asp"-->
<html>
<head>

</head>
<body>
	<%
		dim resume_user,resume_com,resume_time,enrol_id
		resume_user=session("user_id1")
		resume_com=session("com_id1")
		resume_time=now
		enrol_id=session("enrol_id1")
		
		dim sql
		dim myconn	
		set myconn = open_conn
		dim rs
		sql = "insert into resumelog(enrol_id,resume_user,resume_com,resume_script,resume_time) values('"&enrol_id&"','"&resume_user&"','"&resume_com&"','0','"&resume_time&"')"		

		'response.Write sql	
		'response.end
		set rs = myconn.execute(sql)
		response.Redirect "job.asp"
	%>
</body>
</html>