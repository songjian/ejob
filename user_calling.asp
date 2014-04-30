<%@ language="vbscript"%>
<!--#include file="inc\dbconn.asp"-->
<body>
<%
	dim user_id1
	user_id1 = session("user_id1")
	
	dim sql
	dim myconn	
	set myconn = open_conn
	dim rs
	sql = "select * from users where user_id = '"&user_id1&"'"
	'response.Write sql	
	set rs = myconn.execute(sql)
	dim user_name1,user_pass1,user_nationality1,real_name1,user_identity1,user_sex1,user_inhabit1,user_degree1,user_birthday1,user_trade1,user_career1,user_liking1,user_plan1,user_habitus1,user_phone1,user_move1,user_email1,user_address1
		
		session("user_name1")=rs("user_name")
		session("user_pass1")=rs("user_pass")
		session("user_nationality1")=rs("user_nationality")
		session("real_name1")=rs("real_name")
		session("user_identity1")=rs("user_identity")
		session("user_sex1")=rs("user_sex")
		session("user_inhabit1")=rs("user_inhabit")
		session("user_degree1")=rs("user_degree")
		session("user_birthday1")=rs("user_birthday")
		session("user_trade1")=rs("user_trade")
		session("user_career1")=rs("user_career")
		session("user_liking1")=rs("user_liking")
		session("user_plan1")=rs("user_plan")
		session("user_habitus1")=rs("user_habitus")
		session("user_phone1")=rs("user_phone")
		session("user_move1")=rs("user_move")
		session("user_email1")=rs("user_email")
		session("user_address1")=rs("user_address")
	    rs.close
	    set rs=nothing
	    close_object(myconn)
		response.Redirect "userpage.asp"
	    response.end
	%>