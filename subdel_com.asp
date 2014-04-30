<%@ language="vbscript"%>
<!--#include file="inc\dbconn.asp"-->
<%
	dim comlist
	comlist=request.form("comlist")
	'response.write enrollist	
	dim conn
	set conn = open_conn
	dim sql
	sql="delete from coms where com_id in ("&comlist&")"
	'response.Write sql
	'response.end
	conn.execute sql
	conn.close
	set conn=nothing
	
	response.redirect "del_com.asp"
%>