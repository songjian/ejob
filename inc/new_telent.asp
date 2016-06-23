<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>
<table cellpadding="0" cellspacing="0" width="100%">
	<tr bgcolor="#3169B5">
		<td width="30%" align="left" valign="top" height="20"><img src="inc/angle1.jpg"></td>
		<td width="40%" align="center" height="20"><span class="style1">最新注册人才</span></td>
		<td width="30%" align="right" valign="top" height="20"><img src="inc/angle2.jpg"></td>
	</tr>
</table>

<table width="100%"cellpadding="0" cellspacing="0">
  <tr bgcolor="d5d5d5" class="style4">
    <td height="20"  align="center" width="60%">人才姓名</td>
    <td height="20" align="center" width="40%">人才行业</td>
  </tr>
  <%
			
			dim rs3
			set rs3 = server.createobject("ADODB.Recordset")
			 
			dim sql3
			sql3="select * from users order by user_id desc"
			rs3.open sql3,myconn,adOpenStatic 	
			rs3.pagesize=15
			dim pageno2
			pageno2=cint(request.querystring("pageno2"))
			if pageno2<1 then
				pageno2=1
			end if
			
		 if pageno2>rs3.pagecount then
			pageno2=rs3.pagecount
		 end if
		 
		 
		 rs3.absolutepage=pageno2
		 dim i3
				
		 response.write "<table width='100%' >"
		 for i3=1 to rs3.pagesize
			if rs3.eof then
				exit for
			end if
		
			if i3 mod 2 = 0 then
					response.write "<tr bgcolor='#d5d5d5'>"
				else
					response.write "<tr>"
				end if
			response.write "<td align='left' width='438' height='20'>"
			response.write "<a href='looktalent.asp?userno="&rs3("user_id")&"'>"&rs3("real_name")&"</a></td>"
			response.write "<td align='center' width='180' height='20'>"
			response.write ""&rs3("user_trade")&"</td>"
			rs3.movenext
			response.write "</tr>"
			
		 next
		 response.write "</table>"
			rs3.close
			set rs3 = nothing
			close_object (myconn)
	%>
</table>