<%@ language="vbscript"%>
<!--#include file="inc/dbconn.asp"-->
<%
	dim recruit_script,com_id,user_id
	recruit_script = request.QueryString("recruit_script")
	com_id = request.querystring("com_id")
	user_id=session("user_id")
	dim myconn
	set myconn = open_conn
	dim sql
	
	if recruit_script = "1" then '�����ݿ�recruit_script�����ֵ��Ϊ1
		sql = "update recruit set recruit_script='1' where com_id='"&com_id&"' and user_id='"&user_id&"'"
		myconn.Execute(sql)		
	elseif recruit_script = "0" then '�����ݿ�recruit_script�����ֵ��Ϊ0
		sql = "update recruit set recruit_script='0' where com_id='"&com_id&"' and user_id='"&user_id&"'"
		myconn.Execute(sql)
	end if
	response.Redirect "user_invite.asp"
%>