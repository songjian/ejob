<%@language="vbscript"%>
<!--#include file="inc/dbconn.asp"-->
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn"/>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<link href="inc/css_default.css" rel="stylesheet" type="text/css">
<title>MyJob��Ƹ�� - ��̨����</title>
<style type="text/css">
<!--
.main{
	width:778;
	text-align:center;
	font-size:9pt;
	font-family:"����";
}
.main_td1{
	width:140;
	text-align:center;
	font-size:9pt;
	font-family:"����";
}
.main_td2{
	width:631;
	text-align:center;
	font-size:9pt;
	font-family:"����";
}
-->
</style>
</head>
<body>
<%if session("auth_id") = "1" then%>
<!--#include file="inc/inc_top.asp"-->
<!--#include file="inc/emptyline.asp"-->
<table class="main" cellpadding="0" cellspacing="0">
	<tr>
		<td class="main_td1" valign="top">			
			<!--#include file="inc/ad_index_left.asp"-->
		</td>
		<td width="7"></td>
		<td class="main_td2" valign="top">
			<!--ɾ����ҵ�û�-->
			<%if session("auth_id") = "1" then%>
			<table width="100%" cellpadding="0" cellspacing="0">
			  <tr>
				<td bgcolor="CE0421" height="20" class="style6" colspan="3" align="center">ɾ����ҵ</td>
			  <tr bgcolor="d5d5d5" class="style4">
				<td height="20"  align="center" width="60%">��ҵ����</td>
				<td height="20"  align="center" width="40%">��˾��ַ</td>
			  </tr>
			  <tr><td colspan="5">
			<%
				dim myconn
				set myconn = open_conn
				const adOpenStatic=3
				set rs = server.createobject("ADODB.Recordset")
				 
				sql="select * from coms order by com_id desc"
				
				rs.open sql,myconn,adOpenStatic 	
				rs.pagesize=20
				
				pageno=cint(request.querystring("pageno"))
				if pageno<1 then
					pageno=1
				end if
				
			 if pageno>rs.pagecount then
				pageno=rs.pagecount
			 end if
			 
			 rs.absolutepage=pageno
			
			 response.write "<form name=myform action='subdel_com.asp' method=post>"
			 response.write "<table align='center' width='100%' cellpadding='0' cellspacing='0'>"
			 
			 for i=1 to rs.pagesize
				if rs.eof then
					exit for
				end if
				if i mod 2 = 0 then
					response.write "<tr bgcolor='#d5d5d5'>"
				else
					response.write "<tr>"
				end if
				response.write "<td align='left' width='60%' height='20'>"
				response.write "<input type='checkbox' name='comlist' value="&rs("com_id")&">"
				response.write "<a href='lookjob.asp?comno="&rs("com_id")&"'>"&rs("com_name")&"</a></td>"
				response.write "<td align='center' width='40%' height='20'>"
				response.write ""&rs("com_address")&""
				response.write "</td>"
				rs.movenext
				response.write "</tr>" 	
			 next
				response.write "<tr><td>"
				response.write "<input type='submit' name='shanchu' value='ɾ����ѡ��ҵ'>"
				response.write "</td></tr>"
				response.write "</table>"
				 response.write "</form>"
				 
				response.Write "<table cellpadding='0' cellspacing='0' width='100%'>"
				response.write "<form method='get' action='delete_com.asp'>"
				response.Write "<tr>"
				response.Write "<td>"
				response.write "ע����ҵ����"&rs.recordcount&""
				response.Write "</td>"
				response.Write "<td height=20 align=right>"
				
				 if pageno<>1 then
					response.write "<a href='delete_com.asp?pageno=1'>��ҳ&nbsp;</a>"
					response.write "<a href='delete_com.asp?pageno="&pageno-1&"'>��һҳ&nbsp;</a>"
				 else
					response.write "��ҳ&nbsp;"
					response.write "��һҳ&nbsp;"
				 end if
				 
				 if pageno<>rs.pagecount then
					response.write "<a href='delete_com.asp?pageno="&pageno+1&"'>��һҳ&nbsp;</a>"
					response.write "<a href='delete_com.asp?pageno="&rs.pagecount&"'>βҳ</a>"
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
			 </td></tr>
			</table>
			<%else%>
			<!--#include file="inc/nudroit.asp"-->
			<%end if%>
			<!--ɾ����ҵ�û� end-->
		</td>
	</tr>
</table>
<!--#include file="inc/emptyline.asp"-->
<!--#include file="inc/inc_foot.asp"-->
<%else%>
<!--#include file="inc/nudroit.asp"-->
<%end if%>
</body>
</html>