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
}
.text2{
color:ce0421;
}
main{
	width:778;
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
<table class="user_main" cellpadding="0" cellspacing="0">
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
					<td bgcolor="CE0421" height="22" colspan="3" valign="top">
						<table cellpadding="0" cellspacing="0" width="100%" height="20" bgcolor="#FFFFFF" class="style1">
							<tr><td align="center"><b>��Ϣ�б�</b></td></tr>
						</table>
					</td>
				  <tr bgcolor="E4E4E4" class="style4 text">
					<td height="20" align="center" width="60%" class="text">��������������</td>
					<td height="20" align="center" width="25%" class="text">����ʱ��</td>
					<td height="20" align="center" width="15%" class="text">����״̬</td>
				  </tr>
					<td colspan="3">
					<%
						dim myconn
						set myconn = open_conn
						const adOpenStatic=3
						
						dim rs
						set rs = server.createobject("ADODB.Recordset")
						 
						dim sql
						sql="select * from recruit where com_id ='"&session("com_id")&"'order by recruit_id"


						
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
									response.write "<tr bgcolor='#E4E4E4'>"
								else
									response.write "<tr>"
								end if
								'��˭��������������
								response.Write "<td align='left' width='60%' height='20'>"
								response.Write "����"
								sql2 = "SELECT * FROM users WHERE user_id = ("&rs("user_id")&")"
								'response.Write sql2
								'response.End
								set rs2 = myconn.execute(sql2)
								response.Write "<span class='text2'>"
								response.Write rs2("user_name")
								response.Write "</span>"
								response.Write "����������������"
								response.write "</td>"	
								'��˭�������������� end
								
								'����ʱ��
								response.Write "<td align='center' width='25%' height='20'>"
								response.Write rs("recruit_time")
								response.write "</td>"	
								'����ʱ�� end
								
								'����״̬
								response.Write "<td align='center' width='15%' class='text2'>"
								if rs("recruit_script") = "0" then
									response.write "δ����"
								elseif rs("recruit_script") = "1" then
									response.write "�ѽ���"
								end if
								response.write "</td>"
								'����״̬ end
								response.write "</tr>"
								rs.movenext
							 next
							 response.write "</table>"
							 response.write "</form>"
							 
							 response.Write "<table cellpadding='0' cellspacing='0' width='100%'>"
							response.write "<form method='get' action='talent.asp'>"
							response.Write "<tr>"
							response.Write "<td class=text>"
							
							response.write "���յ�"&rs.recordcount&"����������"
							response.Write "</td>"
							response.Write "<td height=20 align=right class='text'>"
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