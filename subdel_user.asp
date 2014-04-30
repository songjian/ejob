		<%@ language="vbscript"%>
		<!--#include file="inc\dbconn.asp"-->
<html>
	<head>
		
	</head>
	<body bgcolor="#99ffff">
	<%
		dim userlist
		userlist=request.form("userlist")
		response.write userlist	
		dim conn
		set conn = open_conn
		dim sql
		sql="delete from users where user_id in ("&userlist&")"
		conn.execute sql
		conn.close
		set conn=nothing
		
		response.redirect "del_user.asp"
			
		
	%>
	
	</body>
</html>