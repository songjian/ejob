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
		<!--ɾ���û�-->
		<table width="100%" cellpadding="0" cellspacing="0">
		  <tr>
			<td bgcolor="CE0421" height="20" class="style6" align="center">�û��б�</td>
		  <tr bgcolor="d5d5d5" class="style4">
			<td height="20"  align="center" width="100%">��ְ������</td>
		  </tr>
		  <%
			dim myconn
			set myconn = open_conn
			const adOpenStatic=3
			set rs = server.createobject("ADODB.Recordset")
			 
			sql="select * from users order by user_id desc"
			
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
		
		 response.write "<form name=myform action='subdel_user.asp' method=post>"
		 response.write "<table align=center width='100%'>"
							
		 for i=1 to rs.pagesize
			if rs.eof then
				exit for
			end if
			if i mod 2 = 0 then
				response.write "<tr bgcolor='#d5d5d5'>"
			else
				response.write "<tr>"
			end if
			response.write "<td align='left' width='100%' height='20'>"
			response.write "<input type='checkbox' name='userlist' value="&rs("user_id")&">"
			response.write "<a href='looktalent.asp?userno="&rs("user_id")&"'>"&rs("real_name")&"</a></td>"

			rs.movenext
			response.write "</tr>"
			
		 next
			response.write "<tr><td>"
			response.write "<input type='submit' name='shanchu' value='ɾ���û�'>"
			response.write "</td></tr>"
			response.write "</table>"
			response.write "</form>"
		 
			response.Write "<table cellpadding='0' cellspacing='0' width='100%'>"
			response.write "<form method='get' action='delete_user.asp'>"
			response.Write "<tr>"
			response.Write "<td>"
			response.write "ע���û�����"&rs.recordcount&""
			response.Write "</td>"
			response.Write "<td height=20 align=right>"
		 
		 if pageno<>1 then
			response.write "<a href='del_user.asp?pageno=1'>��ҳ&nbsp;</a>"
			response.write "<a href='del_user.asp?pageno="&pageno-1&"'>��һҳ&nbsp;</a>"
		 else
			response.write "��ҳ&nbsp;"
			response.write "��һҳ&nbsp;"
		 end if
		 
		 if pageno<>rs.pagecount then
			response.write "<a href='del_user.asp?pageno="&pageno+1&"'>��һҳ&nbsp;</a>"
			response.write "<a href='del_user.asp?pageno="&rs.pagecount&"'>βҳ</a>"
		 else
			response.write "��һҳ&nbsp;"
			response.write "βҳ"
		 end if
		 
		 response.write "&nbsp;ת��<input type=text name=pageno size=2 >ҳ/��"&rs.pagecount&"ҳ"	
		 response.Write "</td>"
		 response.Write "</tr>"
		 response.write "</form>"
		 response.Write "</table>"
		 close_object(rs)
		 close_object(myconn)
		 %>
		</table>
		<!--ɾ���û� end-->
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