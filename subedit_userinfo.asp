<%@ language="vbscript"%>
<html>
<head>
</head>
<body bgcolor="#99ffff">
<%
	'得到前面登陆session的ID  
		dim user_id1
		user_id1 = session("user_id1")
	'得到前面登陆session的ID    end
	
	'得到填写内容
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
	'得到填写内容 end
		
		dim myconn ,connstr
		set myconn = server.createObject("ADODB.Connection")
		connstr = "DSN=job"		
		myconn.open connstr
		
		dim sql,rs
		sql = "select * from users where user_id = '"&user_id1&"'"
		set rs = myconn.execute(sql)	
		sql = "update users set user_name='"&user_name1&"',user_pass='"&user_pass1&"',user_nationality='"&user_nationality1&"',real_name='"&real_name1&"',user_identity='"&user_identity1&"',user_sex='"&user_sex1&"',user_inhabit='"&user_inhabit1&"',user_degree='"&user_degree1&"',user_birthday='"&user_birthday1&"',user_trade='"&user_trade1&"',user_career='"&user_career1&"',user_liking='"&user_liking1&"',user_plan='"&user_plan1&"',user_habitus='"&user_habitus1&"',user_phone='"&user_phone1&"',user_move='"&user_move1&"',user_email='"&user_email1&"',user_address='"&user_address1&"' where user_id='"&user_id1&"'"
	   	response.Write sql
		'response.write sql	
		myconn.execute sql
		rs.close
		'共享个人信息 ↓
		dim sql2,rs2
		sql2 = "select * from users where user_id = '"&user_id1&"'"
		set rs2 = myconn.execute(sql2)
		
		session("user_name1")=rs2("user_name")
		session("user_pass1")=rs2("user_pass")
		session("user_nationality1")=rs2("user_nationality")
		session("real_name1")=rs2("real_name")
		session("user_identity1")=rs2("user_identity")
		session("user_sex1")=rs2("user_sex")
		session("user_inhabit1")=rs2("user_inhabit")
		session("user_degree1")=rs2("user_degree")
		session("user_birthday1")=rs2("user_birthday")
		session("user_trade1")=rs2("user_trade")
		session("user_career1")=rs2("user_career")
		session("user_liking1")=rs2("user_liking")
		session("user_plan1")=rs2("user_plan")
		session("user_habitus1")=rs2("user_habitus")
		session("user_phone1")=rs2("user_phone")
		session("user_move1")=rs2("user_move")
		session("user_email1")=rs2("user_email")
		session("user_address1")=rs2("user_address")		
		rs2.close
		'共享个人信息 end
		myconn.close		
		set myconn = nothing
		'转到页面 ↓
		response.redirect "userpage.asp"
%>
	

</body>
</html>