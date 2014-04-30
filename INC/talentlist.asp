<script language="javascript">
<!--
	function sub_recruit()
	{
		myform.submit();
	}
-->
</script>
<table width="100%" align="center" cellpadding="0" cellspacing="0">
  <tr>
	<td bgcolor="3169B5" height="20" class="style6" colspan="3" align="center">求职者列表</td>
  <tr bgcolor="#E4E4E4" class="style4">
	<td width="60%" height="20" align="center">求职者姓名</td>
	<td width="40%" height="20" align="center">求职意向</td>
  </tr>
	<td colspan="3">
	<%
		dim myconn
		set myconn = open_conn
		const adOpenStatic=3
		
		dim rs
		set rs = server.createobject("ADODB.Recordset")
		 
		dim sql
		sql="select * from users order by user_id"
		

		
		
			rs.open sql,myconn,adOpenStatic
			rs.pagesize=15
			dim pageno
			pageno=cint(request.querystring("pageno"))
			if pageno<1 then
				pageno=1
			end if
			
			 if pageno>rs.pagecount then
				pageno=rs.pagecount
			 end if
		 
			 rs.absolutepage=pageno
			 dim i
			 response.write "<form name=myform action='subrecruit.asp' method=post>"
			 response.write "<table align=center width='100%' cellpadding=0 cellspacing=0>"
								
			 for i=1 to rs.pagesize
				if rs.eof then
					exit for
				end if
				if i mod 2 = 0 then
					response.write "<tr bgcolor='#E4E4E4'>"
				else
					response.write "<tr>"
				end if
				if session("auth_id") = "3" then
					response.Write "<td align='left' width='20' height='20'>"
					response.Write "<input type='checkbox' value="&rs("user_id")&" name=user_id title="&rs("user_name")&">"
					response.write "</td>"
				end if
				response.Write "<td align='left' width='60%' height='20'>"
				response.write "<a href='looktalent.asp?userno="&rs("user_id")&"' target='_blank'>"&rs("real_name")&"</a><br>"
				response.write "</td>"
				response.Write "<td align='center' width='40%'>"
				response.write rs("user_trade")
				response.write "</td>"
				response.write "</tr>"
				rs.movenext
				
			 next
			 response.write "</table>"
			 response.write "</form>"
			 
			 response.Write "<table cellpadding='0' cellspacing='0' width='100%'>"
			response.write "<form method='get' action='talent.asp'>"
			response.Write "<tr>"
			response.Write "<td>"
			if session("auth_id") = "3" then
				response.Write "<input name=button type=button value=发送面试邀请 onClick='sub_recruit()'>"
			end if		
			response.write "库中人才总数"&rs.recordcount&"条"
			response.Write "</td>"
			response.Write "<td height=20 align=right>"
			if pageno<>1 then
				response.write "<a href='talent.asp?pageno=1'>首页&nbsp;</a>"
				response.write "<a href='talent.asp?pageno="&pageno-1&"'>上一页&nbsp;</a>"
			else
				response.write "首页&nbsp;"
				response.write "上一页&nbsp;"
			end if
			
			if pageno<>rs.pagecount then
				response.write "<a href='talent.asp?pageno="&pageno+1&"'>下一页&nbsp;</a>"
				response.write "<a href='talent.asp?pageno="&rs.pagecount&"'>最后一页</a>"
			else
				response.write "下一页&nbsp;"
				response.write "最后一页"
			end if
		
			response.write "&nbsp;转到<input type=text name=pageno size=2 >页/共"&rs.pagecount&"页"
	
			response.Write "</td>"
			response.Write "</tr>"
			response.write "</form>"
			response.Write "</table>"
			
			close_object(rs)
			close_object(myconn)

	 %>
	</td>
  </tr>
</table>