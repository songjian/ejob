		<%@ language="vbscript"%>
		<!--#include file="inc\dbconn.asp"-->
<html>
	<head>
		
	</head>
	<body bgcolor="#99ffff">
	<%
		dim enrollist
		enrollist=request.form("enrollist")
		'response.write enrollist	
		dim conn
		set conn = open_conn
		dim sql
		sql="delete from enrol where enrol_id in ("&enrollist&")"
		'response.Write sql
		'response.end
		conn.execute sql
		conn.close
		set conn=nothing
		
		response.redirect "delete_enrol.asp"
			
		
	%>
	
	</body>
</html>