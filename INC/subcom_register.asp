<%@ language="vbscript"%>
<!--#include file="../../方案4/招聘网/文件/sub.asp"-->
<%
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
	
	dim myconn,connstr
	set myconn = server.createObject("ADODB.Connection")
	connstr = "DSN=job"
	
	myconn.open connstr
	
	dim sql,rs
	
	sql="select * from coms where com_name='"&com_name1&"'"
	'response.write sql
	set rs = myconn.execute(sql)
	
	if not rs.eof then
		response.Redirect "com_register.asp?mark=1"
		'close_object(rs)
		'close_object(conn)
		rs.close
		myconn.close		
		set myconn = nothing
	else
		sql = "insert into coms(com_name,com_pass,com_trademark,com_trade,com_bond,com_address,com_phone1,com_phone2,com_fax,com_www,com_email,auth_id,delmark) values('"&com_name1&"','"&com_pass1&"','"&com_trademark1&"','"&com_trade1&"','"&com_bond1&"','"&com_address1&"','"&com_phone11&"','"&com_phone21&"','"&com_fax1&"','"&com_www1&"','"&com_email1&"','3','1')"		
		'response.write sql		
		myconn.execute sql		
		
		dim sql2,rs2
		sql2 = "select * from coms where com_name = '"&com_name1&"'"
		set rs2 = myconn.execute(sql2)

		myconn.execute sql2
		
		session("com_id")=rs2("com_id")
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
		session("auth_id")=rs2("auth_id")
	
		'close_object(rs)
		'close_object(myconn)
		rs.close
		rs2.close
		myconn.close		
		set myconn = nothing
		
		
		response.redirect "index.asp"
		
	end if	
%>