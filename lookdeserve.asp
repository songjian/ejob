<%@language="vbscript"%>
<!--#include file="inc/dbconn.asp"-->
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn"/>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<link href="inc/css_default.css" rel="stylesheet" type="text/css">
<title>MyJob��Ƹ�� - ��������</title>
<style type="text/css">
<!--
.text{
font-size:9pt;
}
.user_main{
	text-align:center;
	font-size:9pt;
	font-family:"����";
}
.user_main_td1{
	width:140;
	text-align:center;
	font-size:9pt;
	font-family:"����";
}
.user_main_td2{
	width:631;
	text-align:center;
	font-size:9pt;
	font-family:"����";
}
.edit_userinfo{
	width:628;
	text-align:center;
	font-size:9pt;
	font-family:"����";
}
-->
</style>
</head>
<body>
<!--#include file="inc/inc_top.asp"-->
<!--#include file="inc/emptyline.asp"-->
<table class="user_main" cellpadding="0" cellspacing="0" width="778">
	<tr>
		<td class="user_main_td1" valign="top">			
			<!--#include file="inc/compage_left.asp"-->
		</td>
		<td width="7"></td>
		<td class="user_main_td2" valign="top">
			<!--�յ�����������-->
				<script language="javascript">
				<!--
					function sub_recruit()
					{
						myform.submit();
					}
					
				-->
				</script>
				<style type="text/css">
				<!--
				a.a:link{
				color: #ce0421;
				}
				a.a:visited{
				color: #ce0421;
				}
				a.a:hover{
				color: #ce0421;
				}
				a.a:active{
				color: #ce0421;
				}
				-->
				</style>
				<table width="100%" align="center" cellpadding="0" cellspacing="0" class="text">
				  <tr>
					<td bgcolor="CE0421" height="22" colspan="4" valign="top">
						<table cellpadding="0" cellspacing="0" width="100%" height="20" bgcolor="#FFFFFF" class="style1">
							<tr><td align="center"><b>��Ϣ�б�</b></td></tr>
						</table>
					</td>
				  <tr bgcolor="d5d5d5" class="style4 text">
					<td height="20" align="center" width="40%" class="text">�� ��</td>
					<td height="20" align="center" width="20%" class="text">ѧ��</td>
					<td height="20" align="center" width="20%" class="text">����ʱ��</td>
					<td height="20" align="center" width="20%" class="text">�Ƿ�ӦƸ</td>
				  </tr>
					<td colspan="4">
					  <%
						dim com_id
						com_id=session("com_id")
							dim myconn
							set myconn = open_conn
							const adOpenStatic=3
							
							dim rs
							set rs = server.createobject("ADODB.Recordset")
							 
							dim sql
							sql="select * from resumelog  where resume_com='"&com_id&"'"
							'response.Write sql
							'response.end
							rs.open sql,myconn,adOpenStatic
							if rs.eof then
								response.Write "û�м�¼"						
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
								 response.write "<form name=myform action='deletesql_resume.asp' method=post>"
								 response.write "<table align=center width='100%' cellpadding='0' cellspacing='0'>"
													
								 dim sql2,rs2
								 dim myconn2,connstr2
								 
								 for i=1 to rs.pagesize
									if rs.eof then
										exit for
									end if
									
									set myconn2 = server.createObject("ADODB.Connection")
									connstr2 = "DSN=job"		
									myconn2.open connstr2
									sql2="select * from users where user_id='"&rs("resume_user")&"'"
									'response.Write sql2
									'response.end
									set rs2 = myconn2.execute(sql2)
								
									if i mod 2 = 0 then
										response.write "<tr bgcolor='#d5d5d5'>"
									else
										response.write "<tr>"
									end if
									response.write "<td align='left' width='40%' height='20'>"
									response.write "<input type='checkbox' name='resumelist' value="&rs("resume_id")&">"
									response.write "<a href='looktalent.asp?userno="&rs2("user_id")&"'>"&rs2("real_name")&"</a></td>"
									response.write "<td align='center' width='20%' height='20'>"
									response.write ""&rs2("user_degree")&"</td>"
									response.write "<td align='center' width='20%' height='20'>"
									response.write ""&rs("resume_time")&""
									response.write "</td>"
									response.write "<td width='20%'align='center'>"
									response.write "<a href='subemploy.asp?userno="&rs2("user_id")&"'>��ҪӦƸ��������</a></td>"
									rs.movenext
									response.write "</tr>"
									
								 next
									response.write "<tr><td colspan='1'>"
									response.write "<input type='submit' name='shanchu' value='ɾ������'>"
									response.write "</td></tr>"
									response.write "</table>"
									response.write "</form>"
								 
									response.Write "<table cellpadding='0' cellspacing='0' width='100%'>"
									response.write "<form method='get' action='lookdeserve.asp'>"
									response.Write "<tr>"
									response.Write "<td>"
									response.write "ӦƸ����"&rs.recordcount&""
									response.Write "</td>"
									response.Write "<td height=20 align=right>"
								 
								 if pageno<>1 then
									response.write "<a href='lookdeserve.asp?pageno=1'>��ҳ&nbsp;</a>"
									response.write "<a href='lookdeserve.asp?pageno="&pageno-1&"'>��һҳ&nbsp;</a>"
								 else
									response.write "��ҳ&nbsp;"
									response.write "��һҳ&nbsp;"
								 end if
								 
								 if pageno<>rs.pagecount then
									response.write "<a href='lookdeserve.asp?pageno="&pageno+1&"'>��һҳ&nbsp;</a>"
									response.write "<a href='lookdeserve.asp?pageno="&rs.pagecount&"'>βҳ</a>"
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
						 end if
						 %>
					</td>
				  </tr>
				</table>
			<!--�յ����������� end-->
		</td>
	</tr>
</table>
<!--#include file="inc/emptyline.asp"-->
<!--#include file="inc/inc_foot.asp"-->
</body>
</html>

