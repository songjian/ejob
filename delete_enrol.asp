<%@language="vbscript"%>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn"/>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<link href="inc/css_job.css" rel="stylesheet" type="text/css">
<title>MyJob��Ƹ�� - ��ְ</title>
<!--#include file="inc\dbconn.asp"-->
</head>
<body>
<!--#include file="inc/inc_top.asp"-->
<!--#include file="inc/emptyline.asp"-->
<!--ְλ�б�-->	

<table class="main" cellpadding="0" cellspacing="0" width="778">
	<tr>
		<td class="main_td1" valign="top">			
			<!--#include file="inc/ad_index_left.asp"-->
		</td>
		<td width="7"></td>
		<td class="main_td2" valign="top">
			<table width="100%" cellpadding="0" cellspacing="0">
  <tr>
    <td bgcolor="CE0421" height="20" class="style6" colspan="5" align="center">��Ƹ��Ϣ�б�</td>
  <tr bgcolor="d5d5d5" class="style4">
    <td height="20"  align="center" width="60%">��Ƹ��ҵ</td>
    <td height="20" align="center" width="22%">��Ƹ������ҵ</td>
    <td height="20"  align="center" width="18%">������Ƹ��Ϣʱ��</td>
  </tr>
<%
dim myconn
 	set myconn = open_conn
 	const adOpenStatic=3
 	
 	dim rs
 	set rs = server.createobject("ADODB.Recordset")
 	 
 	dim sql
 	sql="select enrol_id,enrol_type,enrol_trade,enrol_time,com_id from enrol order by enrol_id"
	
 	rs.open sql,myconn,adOpenStatic 	
 	rs.pagesize=20
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
 response.write "<form name=myform action='deletesql_enrol.asp' method=post>"
 response.write "<table width='100%' cellpadding='0' cellspacing='0'>"
 
 dim sql2,rs2
 dim myconn2,connstr2
		
		
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
 	response.write "<td align='left' width='60%' height='20'>"
	response.write "<input type='checkbox' name='enrollist' value="&rs("enrol_id")&">"
 	response.write "<a href='lookjob.asp?comno="&rs("enrol_id")&"'>"&rs2("com_name")&"</a></td>"
 	response.write "<td align='center' width='22%' height='20'>"
	response.write ""&rs("enrol_trade")&"</td>"
	response.write "<td align='center' width='18%' height='20'>"
	response.write ""&rs("enrol_time")&""
	response.write "</td>"
 	rs.movenext
	rs2.close
	myconn2.close		
	set myconn2 = nothing
 	response.write "</tr>"
 	
 next
 	response.write "<tr><td colspan='1'>"
	response.write "<input type='submit' name='shanchu' value='��Ƹ��Ϣɾ��'>"
	response.write "</td></tr>"
 	response.write "</table>"
 	response.write "</form>"
	
	response.Write "<table cellpadding='0' cellspacing='0'width='100%'>"
	response.write "<form method='get' action='delete_enrol.asp'>"
	response.Write "<tr>"
	response.Write "<td>"
	response.write "��Ƹ��Ϣ��"&rs.recordcount&""
	response.Write "</td>"
	response.Write "<td height=20 align=right>"
		 if pageno<>1 then
			response.write "<a href='delete_enrol.asp?pageno=1'>��ҳ&nbsp;</a>"
			response.write "<a href='delete_enrol.asp?pageno="&pageno-1&"'>��һҳ&nbsp;</a>"
		 else
			response.write "��ҳ&nbsp;"
			response.write "��һҳ&nbsp;"
		 end if
		 
		 if pageno<>rs.pagecount then
			response.write "<a href='delete_enrol.asp?pageno="&pageno+1&"'>��һҳ&nbsp;</a>"
			response.write "<a href='delete_enrol.asp?pageno="&rs.pagecount&"'>βҳ</a>"
		 else
			response.write "��һҳ&nbsp;"
			response.write "βҳ"
		 end if
			response.write "&nbsp;ת��<input type=text name=pageno size=2 >ҳ/��"&rs.pagecount&"ҳ"
			
			rs.close
 	response.Write "</td>"
	response.Write "</tr>"
	response.write "</form>"
	response.Write "</table>"
 set rs = nothing
	close_object myconn
 %>
</table>
<!--ְλ�б� end-->
		</td>
	</tr>
</table>

<!--#include file="inc/emptyline.asp"-->
<!--#include file="inc/inc_foot.asp"-->
</body>
</html>