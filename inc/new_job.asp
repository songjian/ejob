<!--#include file="dbconn.asp"-->
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>
<table cellpadding="0" cellspacing="0" width="100%">
	<tr bgcolor="#3169B5">
		<td width="30%" align="left" valign="top" height="20"><img src="inc/angle1.jpg"></td>
		<td width="40%" align="center" height="20"><span class="style1">����ְλ</span></td>
		<td width="30%" align="right" valign="top" height="20"><img src="inc/angle2.jpg"></td>
	</tr>
</table>

<table width="100%" cellpadding="0" cellspacing="0">
  <tr>
  <tr bgcolor="d5d5d5" class="style4">
    <td height="20"  align="center" width="60%">��Ƹְλ</td>
    <td height="20" align="center" width="40%">��Ƹ��ҵ</td>
  </tr>
  <tr>
  	<td colspan="2">
		<%
			dim myconn
			set myconn = open_conn
			const adOpenStatic=3
			
			dim rs
			set rs = server.createobject("ADODB.Recordset")
			
			 
			dim sql
			sql="select enrol_function,enrol_id,enrol_type,enrol_trade,enrol_time,com_id from enrol"
			rs.open sql,myconn,adOpenStatic 	
			
			if rs.eof then'�ж��Ƿ��з���Ҫ�������
				'û�з������ݵ������ִ�е�����
				H = "<table align='center' width='100%' cellpadding=0 cellspacing=0>"
				H = H & "<tr>"
				H = H & "<td align='center' height='20'>"
				H = H & "û�м�¼"
				H = H & "</td>"
				H = H & "</tr>"
				H = H & "</table>"
				response.Write  H							
				close_object(rs)
				close_object(myconn)
				'û�з������ݵ������ִ�е����� end
			else
			
				
				
				rs.pagesize=50
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
			 
			 dim sql2,rs2
			 dim myconn2,connstr2
					
			 response.write "<table width='100%' cellpadding='0' cellspacing='0'>"
			 for i=1 to rs.pagesize
				if rs.eof then
					exit for
				end if
				
				set myconn2 = server.createObject("ADODB.Connection")
					connstr2 = "DSN=job"		
					myconn2.open connstr2
				sql2="select com_name from coms where com_id="&rs("com_id")&""
				set rs2 = myconn2.execute(sql2)
				if i mod 2 = 0 then
						response.write "<tr bgcolor='#d5d5d5'>"
					else
						response.write "<tr>"
					end if
				response.write "<td align='left' width='438' height='20'>"
				response.write "<a href='lookjob.asp?enrol_id="&rs("enrol_id")&"'>"&rs("enrol_function")&"</a></td>"
				response.write "<td align='center' width='180' height='20'>"
				response.write rs2("com_name")
				response.Write "</td>"
				rs.movenext
				rs2.close
				myconn2.close		
				set myconn2 = nothing
				response.write "</tr>"
			 next
				
				response.Write "</table>"
				rs.close
				set rs = nothing
				close_object myconn
			end if
	%>
	</td>
  </tr>
</table>