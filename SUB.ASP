<%
'--------------------------------
'-------将企业信息session--------
sub session_com()
	session("com_id")=rs("com_id")
	session("com_name")=rs("com_name")
	session("com_pass")=rs("com_pass")
	session("com_trademark")=rs("com_trademark")
	session("com_trade")=rs("com_trade")
	session("com_bond")=rs("com_bond")
	session("com_address")=rs("com_address")
	session("com_phone1")=rs("com_phone1")
	session("com_phone2")=rs("com_phone2")
	session("com_fax")=rs("com_fax")
	session("com_www")=rs("com_www")
	session("com_email")=rs("com_email")
	session("auth_id")=rs("auth_id")
end sub
'---------------------------------
'------将企业信息session end------




'--------------------------------
'-------将个人信息session--------
sub session_user()
	session("user_id")=rs("user_id")
	session("user_name")=rs("user_name")
	session("user_pass")=rs("user_pass")
	session("user_nationality")=rs("user_nationality")
	session("real_name")=rs("real_name")
	session("user_identity")=rs("user_identity")
	session("user_sex")=rs("user_sex")
	session("user_inhabit")=rs("user_inhabit")
	session("user_degree")=rs("user_degree")
	session("user_birthday")=rs("user_birthday")
	session("user_trade")=rs("user_trade")
	session("user_career")=rs("user_career")
	session("user_liking")=rs("user_liking")
	session("user_plan")=rs("user_plan")
	session("user_habitus")=rs("user_habitus")
	session("user_phone")=rs("user_phone")
	session("user_move")=rs("user_move")
	session("user_email")=rs("user_email")
	session("user_address")=rs("user_address")
	session("auth_id")=rs("auth_id")
end sub
'---------------------------------
'------将个人信息session end------
%>