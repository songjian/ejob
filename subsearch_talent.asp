</body>
</html>
<!--#include file="show.asp"-->
<!--#include file="inc/dbconn.asp"-->
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn"/>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<link href="inc/css_job.css" rel="stylesheet" type="text/css">
<title>MyJob��Ƹ�� - ��Ҫ��ְ</title>
<style type="text/css">
<!--
.show_talent{
	width:631;
	font-family:"����";
	font-size:10.7pt;
	color:#000000;
	text-align:left;
}
.scour_talent{
	width:778;
	height:80;
	font-family:"����";
	font-size:9pt;
	color:#000000;
	text-align:center;
	background-color:d5d5d5;
}
.page_topic{
	height:50;
	background-color:#D5D5D5;
	font-family:"����";
	font-size:18px;
	color:#CE0421;
	text-align:center;
}
.style8 {
	font-family: "����";
	font-weight: bold;
}
.style9 {color: #3169b5; font-size: 12pt;}
-->
</style>
</head>
<body>
<!--#include file="inc/inc_top.asp"-->
<!--#include file="inc/emptyline.asp"-->
<table cellpadding="0" cellspacing="0">
	<tr>
		<td width="180" valign="top">
			<table cellpadding="0" cellspacing="0" width="100%" bgcolor="ABC6E9">
				<tr>
					<td bgcolor="#ABC6E9" height="30"><span class="style8">&nbsp;<span class="style9">��������</span></span></td>
				</tr>
				<tr>
					<td>
						<!--#include file="inc/search_job.asp"-->
					</td>
				</tr>
			</table>
		</td>
		<td width="7"></td>
		<td width="591" valign="top">
			<!--ְλ�б�-->	
			<table width="100%"cellpadding="0" cellspacing="0">
		  <tr bgcolor="3169B5">
		  	<td colspan="3">
				<table width="100%"cellpadding="0" cellspacing="0">
					<tr>
						<td valign="top" align="left" width="30%"><img src="inc/angle1.jpg"></td>
						<td height="20" class="style6" align="center" width="40%">ְλ�б�</td>
						<td valign="top" align="right" width="30%"><img src="inc/angle2.jpg"></td>
					</tr>
				</table>
			</td>		
		  <tr bgcolor="E4E4E4" class="style4">
			<td height="20" align="center" width="60%">��ְ������</td>
			<td height="20" align="center" width="40%" colspan="2">��ְ����</td>

		  </tr>
			<td colspan="3">
				<%
					dim enrol_type,trade_id,na_id
					enrol_type = request.Form("enrol_type")
					trade_id = request.Form("trade_id")
					na_id = request.Form("na_id")
					
					dim sql4,sql5
					dim myconn4	
					set myconn4 = open_conn
					dim rs4,rs5
					sql4 = "select * from trade where trade_id = '"&trade_id&"'"
					set rs4 = myconn4.execute(sql4)	
					sql5 = "select * from nationality where na_id = '"&na_id&"'"
					set rs5 = myconn4.execute(sql5)
					
					dim myconn
						set myconn = open_conn
						const adOpenStatic=3
						
						dim rs
						set rs = server.createobject("ADODB.Recordset")
						 
						dim sql
						sql="select * from users where user_habitus='"&enrol_type&"' and user_trade='"&rs4("trade_name")&"' and user_nationality='"&rs5("na_name")&"'"
						'response.Write sql
						'response.end
						
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
										response.write "<tr bgcolor='#d5d5d5'>"
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
									response.Write "<input name=button type=button value=������������ onClick='sub_recruit()'>"
								end if		
								response.write "�����˲�����"&rs.recordcount&"��"
								response.Write "</td>"
								response.Write "<td height=20 align=right>"
								if pageno<>1 then
									response.write "<a href='talent.asp?pageno=1'>��ҳ&nbsp;</a>"
									response.write "<a href='talent.asp?pageno="&pageno-1&"'>��һҳ&nbsp;</a>"
								else
									response.write "��ҳ&nbsp;"
									response.write "��һҳ&nbsp;"
								end if
								
								if pageno<>rs.pagecount then
									response.write "<a href='talent.asp?pageno="&pageno+1&"'>��һҳ&nbsp;</a>"
									response.write "<a href='talent.asp?pageno="&rs.pagecount&"'>���һҳ</a>"
								else
									response.write "��һҳ&nbsp;"
									response.write "���һҳ"
								end if
							
								response.write "&nbsp;ת��<input type=text name=pageno size=2 >ҳ/��"&rs.pagecount&"ҳ"
						
								response.Write "</td>"
								response.Write "</tr>"
								response.write "</form>"
								response.Write "</table>"
							
							close_object(rs)
							close_object(myconn)	
						end if
				%>
			<!--��ѯ��� end-->
			</td>
		  </tr>
		</table>
		<!--ְλ�б� end-->
		</td>
	</tr>
</table>
<!--#include file="inc/emptyline.asp"-->
<!--#include file="inc/inc_foot.asp"-->
</body>
</html>