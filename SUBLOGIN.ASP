<%@ language="vbscript"%>
<!--#include file="inc\dbconn.asp"-->
<!--#include file="sub.asp"-->
<%
    dim login_name,login_pass,auth_name
    login_name=request.form("user_name")
    login_pass=request.form("user_pass")
    auth_id=request.form("auth_id") 
	dim sql
	dim myconn
	set myconn = open_conn
	dim rs
	
	'个人登陆验证  ↓
    if auth_id = "4" then	 	 
	   sql="select * from users where user_name='"&login_name&"' and user_pass='"&login_pass&"'"
	   set rs = myconn.execute(sql)
	   if rs.eof then
		  response.write "<br><br><br><br><center><font size=4 face=楷体>你输入的用户名或密码错误</font></center><br>"
		  response.write "<a href=# onClick= history.back()>确定</a>"	  
		  set rs=nothing
		  close_object(rs)
		  close_object(myconn)
		  response.end		
	   end if
	  session("user_id1")=""&rs("user_id")&""
	  session_user()
	  rs.close
	  set rs = nothing
	  close_object(myconn)	 
	 '登陆后转到  ↓
	 
	 response.redirect "user_calling.asp"
	 
	 
	 
	'企业用户登陆验证  ↓  
    elseif auth_id = "3" then
	   sql="select * from coms where com_name='"&login_name&"' and com_pass='"&login_pass&"'"
	   	    
	 set rs = myconn.execute(sql)
	  
	  if rs.eof then
		  response.write "<br><br><br><br><center><font size=4 face=楷体>你输入的用户名或密码错误</font></center><br>"
		  response.write "<a href=# onClick= history.back()>确定</a>"
		  rs.close
		  response.end
		
	  end if
	  
	 '共享企业登陆后的ID  ↓
	 session("com_id1")=""&rs("com_id")&""
	 session_com()
	 rs.close
	 set rs=nothing
	 close_object(myconn)
	 
	 '登陆后转到  ↓
	 response.redirect "compage.asp"
   end if
%>