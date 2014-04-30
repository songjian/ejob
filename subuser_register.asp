<%@ language="vbscript"%>
<html>
<head>
</head>
<body bgcolor="#99ffff">
	<%
		dim user_name1,user_pass1,user_nationality1,real_name1,user_identity1,user_sex1,user_inhabit1,user_degree1,user_birthday1,user_trade1,user_career1,user_liking1,user_plan1,user_habitus1,user_phone1,user_move1,user_email1,user_address1
		user_name1=request.form("user_name")
		user_pass1=request.form("user_pass")
		user_nationality1=request.form("user_nationality")
		real_name1=request.form("real_name")
		user_identity1=request.form("user_identity")
		user_sex1=request.form("user_sex")
		user_inhabit1=request.form("user_inhabit")
		user_degree1=request.form("user_degree")
		user_birthday1=request.form("user_birthday")
		user_trade1=request.form("user_trade")
		user_career1=request.form("user_career")
		user_liking1=request.form("user_liking")
		user_plan1=request.form("user_plan")
		user_habitus1=request.form("user_habitus")
		user_phone1=request.form("user_phone")
		user_move1=request.form("user_move")
		user_email1=request.form("user_email")
		user_address1=request.form("user_address")
		
		dim myconn ,connstr
		set myconn = server.createObject("ADODB.Connection")
		connstr = "DSN=job"
		
		myconn.open connstr
		
		dim sql,rs
		
		sql="select user_id from users where user_name='"&user_name1&"'"
		'response.write sql
		set rs = myconn.execute(sql)
		
		if not rs.eof then	 
			response.write "对不起该帐号以被使用<br>"
			response.end
		end if			
		sql = "insert into users(user_name,user_pass,user_nationality,real_name,user_identity,user_sex,user_inhabit,user_degree,user_birthday,user_trade,user_career,user_liking,user_plan,user_habitus,user_phone,user_move,user_email,user_address,auth_id,delmark) values('"&user_name1&"','"&user_pass1&"','"&user_nationality1&"','"&real_name1&"','"&user_identity1&"','"&user_sex1&"','"&user_inhabit1&"','"&user_degree1&"','"&user_birthday1&"','"&user_trade1&"','"&user_career1&"','"&user_liking1&"','"&user_plan1&"','"&user_habitus1&"','"&user_phone1&"','"&user_move1&"','"&user_email1&"','"&user_address1&"','4','1')"		
		
		'response.write sql
		myconn.execute sql
		rs.close
		myconn.close		
		set myconn = nothing
		
		dim myconn2 ,connstr2
		set myconn2 = server.createObject("ADODB.Connection")
		connstr2 = "DSN=job"
		
		myconn2.open connstr2
		dim sql2,rs2
		sql2 = "select user_id from users where user_name = '"&user_name1&"'"
		'response.write sql2
		set rs2 = myconn2.execute(sql2)
		'response.write rs2			
		session("user_id1")=rs2("user_id")
		myconn2.execute sql2
		rs2.close
		myconn2.close		
		set myconn2 = nothing
		response.redirect "user_calling.asp"
	%>

</body>
</html>
