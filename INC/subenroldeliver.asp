<%@ language="vbscript"%>
<html>
<head>
</head>
<body bgcolor="#3169B5">
	<%
		dim enrol_type,trade_id,enrol_function1,enrol_quantity1,enrol_sex1,enrol_age1,enrol_specialt1,enrol_degree1,enrol_career1,enrol_wage1,enrol_deadline1,enrol_locality1,enrol_introduce1,com_id1,enrol_time
		enrol_type=request.form("enrol_type")
		trade_id=request.form("trade_id")
		enrol_function1=request.form("enrol_function")
		enrol_quantity1=request.form("enrol_quantity")
		enrol_sex1=request.form("enrol_sex")
		enrol_age1=request.form("enrol_age")
		enrol_specialt1=request.form("enrol_specialt")
		enrol_degree1=request.form("enrol_degree")
		enrol_career1=request.form("enrol_career")
		enrol_wage1=request.form("enrol_wage")
		enrol_deadline1=request.form("enrol_deadline")
		enrol_locality1=request.form("enrol_locality")
		enrol_introduce1=request.form("enrol_introduce")
		com_id1=session("com_id")
		enrol_time=now
		
		dim myconn ,connstr
		set myconn = server.createObject("ADODB.Connection")
		connstr = "DSN=job"		
		myconn.open connstr
		
		dim sql4
		dim rs4
		sql4 = "select * from trade where trade_id = '"&trade_id&"'"
		set rs4 = myconn.execute(sql4)
	
		dim sql
		sql = "insert into enrol(enrol_type,enrol_trade,enrol_function,enrol_quantity,enrol_sex,enrol_age,enrol_specialt,enrol_degree,enrol_career,enrol_wage,enrol_deadline,enrol_locality,enrol_introduce,com_id,enrol_time,delmark) values('"&enrol_type&"','"&rs4("trade_name")&"','"&enrol_function1&"','"&enrol_quantity1&"','"&enrol_sex1&"','"&enrol_age1&"','"&enrol_specialt1&"','"&enrol_degree1&"','"&enrol_career1&"','"&enrol_wage1&"','"&enrol_deadline1&"','"&enrol_locality1&"','"&enrol_introduce1&"','"&com_id1&"','"&enrol_time&"',1)"
		'response.write sql
		'response.end
		
		myconn.execute sql
		
		myconn.close		
		set myconn = nothing
		response.redirect "compage.asp"
	%>

</body>
</html>
