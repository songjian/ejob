<%@ language="vbscript"%>
<html>
<head>
</head>
<body bgcolor="#3169B5">
<%
	'得到前面登陆session的ID  
		dim com_id1
		com_id1 = session("com_id")
	'得到前面登陆session的ID    end
	
	'得到填写内容
		dim com_name1,com_pass1,com_trademark1,com_trade1,com_bond1,com_address1,com_phone11,com_phone21,com_fax1,com_www1,com_email1
		com_name1=request.form("com_name")
		com_pass1=request.form("com_pass")
		com_trademark1=request.form("com_trademark")
		com_trade1=request.form("com_trade")
		com_bond1=request.form("com_bond")
		com_address1=request.form("com_address")
		com_phone11=request.form("com_phone1")
		com_phone21=request.form("com_phone2")
		com_fax1=request.form("com_fax")
		com_www1=request.form("com_www")
		com_email1=request.form("com_email")
	'得到填写内容 end
		
		dim myconn ,connstr
		set myconn = server.createObject("ADODB.Connection")
		connstr = "DSN=job"		
		myconn.open connstr
		
		dim sql,sql1,rs,rs1
		sql = "select * from coms where com_id = '"&com_id1&"'"
		set rs = myconn.execute(sql)
		
		sql1 = "update coms set com_name='"&com_name1&"',com_pass='"&com_pass1&"',com_trademark='"&com_trademark1&"',com_trade='"&com_trade1&"',com_bond='"&com_bond1&"',com_address='"&com_address1&"',com_phone1='"&com_phone11&"',com_phone2='"&com_phone21&"',com_fax='"&com_fax1&"',com_www='"&com_www1&"',com_email='"&com_email1&"' where com_id='"&com_id1&"'"
		myconn.execute sql1
		rs.close
		'共享个人信息 ↓
		dim sql2,rs2
		sql2 = "select * from coms where com_id = '"&com_id1&"'"
		set rs2 = myconn.execute(sql2)
		
		session("com_name")=rs2("com_name")
		session("com_pass")=rs2("com_pass")
		session("com_trademark")=rs2("com_trademark")
		session("com_trade")=rs2("com_trade")
		session("com_bond")=rs2("com_bond")
		session("com_address")=rs2("com_address")
		session("com_phone1")=rs2("com_phone1")
		session("com_phone2")=rs2("com_phone2")
		session("com_fax")=rs2("com_fax")
		session("com_www")=rs2("com_www")
		session("com_email")=rs2("com_email")		
		rs2.close
		'共享个人信息 end
		myconn.close		
		set myconn = nothing
		'转到页面 ↓
		response.redirect "compage.asp"
%>
	

</body>
</html>