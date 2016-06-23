<!--#include file="inc/dbconn.asp"-->
<%
	sub show_enrol_type()
		dim H
		H = "<select name='enrol_type'>"
		H = H &	"<option value='全职'>全职</option>"
		H = H &	"<option value='兼职'>兼职</option>"
		H = H &	"<option value='临时'>临时</option>"
		H = H &	"</select>"
		response.Write H				
	end sub

	sub show_auth()
		dim myconn
		set myconn = open_conn	
		dim sql
		sql="select * from auth order by auth_id"
		
		dim rs
		set rs = myconn.Execute(sql)
		
		if rs.eof then
			dim H1			
			H1 = "<select name='auth_id'>"
			H1 = H1 & "<option>没有权限记录</option>"
			response.Write H1
			close_object(rs)
			close_object(myconn)
		else
			dim H2
			H2 = "<select name='auth_name'>"
			do while not rs.eof			
				
				H2 = H2 & "<option value="&rs("auth_id")&">"&rs("auth_name")&"</option>"
				rs.MoveNext
			loop
			H2 = H2 & "</select>"
			response.Write H2
			
			close_object(rs)
			close_object(myconn)
		end if
	end sub
	
	sub show_province()
		dim myconn
		set myconn = open_conn	
		dim sql
		sql="select * from province order by pr_id"
		'response.Write sql
		'response.end
		dim rs
		set rs = myconn.Execute(sql)
			dim H2
			H2 = "<select name='pr_id'>"
			do while not rs.eof			
				
				H2 = H2 & "<option value="&rs("pr_id")&">"&rs("pr_name")&"</option>"
				rs.MoveNext
			loop
			H2 = H2 & "</select>"
			response.Write H2
			
			close_object(rs)
			close_object(myconn)
	end sub
	
	sub show_trade()
		dim myconn
		set myconn = open_conn	
		dim sql
		sql="select * from trade order by trade_id"
		'response.Write sql
		'response.end
		dim rs
		set rs = myconn.Execute(sql)
			dim H2
			H2 = "<select name='trade_id'>"
			do while not rs.eof			
				
				H2 = H2 & "<option value="&rs("trade_id")&">"&rs("trade_name")&"</option>"
				rs.MoveNext
			loop
			H2 = H2 & "</select>"
			response.Write H2
			
			close_object(rs)
			close_object(myconn)
	end sub
	
	sub show_nationality()
		dim myconn
		set myconn = open_conn	
		dim sql
		sql="select * from nationality order by na_id"
		'response.Write sql
		'response.end
		dim rs
		set rs = myconn.Execute(sql)
			dim H2
			H2 = "<select name='na_id'>"
			do while not rs.eof			
				
				H2 = H2 & "<option value="&rs("na_id")&">"&rs("na_name")&"</option>"
				rs.MoveNext
			loop
			H2 = H2 & "</select>"
			response.Write H2
			
			close_object(rs)
			close_object(myconn)
	end sub
%>
