<%@language="vbscript"%>
<!--#include file="inc/dbconn.asp"-->
<%
	dim com_name,com_id,user_id,recruit_time
	com_name = session("com_name")
	com_id = session("com_id")
	user_id = request.Form("user_id")
	recruit_time = now
	
	dim myconn
	set myconn = open_conn
	
	dim sql
	
	sql="insert into recruit values('"&com_id&"','"&com_name&"','"&user_id&"','0','"&recruit_time&"')"
	myconn.Execute(sql)
	
	close_object(myconn)
	response.Redirect("talent.asp")
%>