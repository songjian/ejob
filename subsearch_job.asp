</body>
</html>
<!--#include file="show.asp"-->
<!--#include file="inc/dbconn.asp"-->
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn"/>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<link href="inc/css_job.css" rel="stylesheet" type="text/css">
<title>MyJob��Ƹ�� - ����ְλ</title>
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
<table cellpadding="0" cellspacing="0" width="778">
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
			<!--ְλ�б�-->	
	<table width="100%"cellpadding="0" cellspacing="0">
  <tr>
	<td bgcolor="3169B5" height="20" class="style6" colspan="3">ְλ�б�</td>
  <tr bgcolor="d5d5d5" class="style4">
	<td height="20" align="center" width="60%">��Ƹְλ</td>
	<td height="20" align="center" width="22%">������˾</td>
	<td height="20" align="center" width="18%">��������</td>
  </tr>
  	<td colspan="3">
	<%
		dim enrol_type,trade_id
		enrol_type = request.Form("enrol_type")
		trade_id = request.Form("trade_id")

		dim sql4,sql5
		dim myconn4	
		set myconn4 = open_conn
		dim rs4,rs5
		sql4 = "select * from trade where trade_id = '"&trade_id&"'"
		set rs4 = myconn4.execute(sql4)	

		
		
		dim myconn
		set myconn = open_conn
		const adOpenStatic=3
		
		dim rs
		set rs = server.createobject("ADODB.Recordset")
		
		dim sql
		sql="select * from enrol where enrol_type='"&enrol_type&"' and enrol_trade='"&rs4("trade_name")&"'"
		
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
		
			response.write "<table cellpadding='0' cellspacing='0' width='100%'>"
			response.write "<form name=myform action='.asp' method=post>"
			dim sql2,rs2
			dim myconn2,connstr2
			
			
			for i=1 to rs.pagesize
				if rs.eof then
					exit for
				end if
			
				
				sql2 = "select * from coms where com_id="&rs("com_id")&""
				
				set rs2 = myconn.execute(sql2)
				
				if i mod 2 = 0 then
					response.write "<tr bgcolor='#d5d5d5'>"
				else
					response.write "<tr>"
				end if
				dim H
				H = "<td align='left' width='60%' height='20'>"
				H = H & "<a href=lookjob.asp?enrol_id="
				H = H & rs("enrol_id")
				H = H & "&com_name="
				H = H & rs2("com_name")
				H = H & ">"
				H = H & rs("enrol_function")
				H = H & "</a>"
				H = H & "</td>"
				H = H & "<td align='center' width='22%' height='20'>"
				H = H & rs2("com_name")
				H = H & "</td>"
				H = H & "<td align='center' width='18%' height='20'>"
				H = H & rs("enrol_time")
				H = H & "</td>"
				response.Write H
				rs.movenext
				rs2.close
			next
			'response.write "<tr><td colspan='2' align='center'>"
			'response.write "<a href='ware_register.asp'>���</a>"
			'response.write "<input type='submit' name='shanchu' value='ɾ��'>"
			'response.write "</td></tr>"
			response.write "</form>"
			response.write "</table>"
	
			
			response.Write "<table cellpadding='0' cellspacing='0' width='100%'>"
			response.write "<form method='get' action='job.asp'>"
			response.Write "<tr>"
			response.Write "<td>"
			response.write "��Ƹ��Ϣ����"&rs.recordcount&"��"
			response.Write "</td>"
			response.Write "<td height=20 align=right>"
			if pageno<>1 then
				response.write "<a href='job.asp?pageno=1'>��ҳ&nbsp;</a>"
				response.write "<a href='job.asp?pageno="&pageno-1&"'>��һҳ&nbsp;</a>"
			else
				response.write "��ҳ&nbsp;"
				response.write "��һҳ&nbsp;"
			end if
			
			if pageno<>rs.pagecount then
				response.write "<a href='job.asp?pageno="&pageno+1&"'>��һҳ&nbsp;</a>"
				response.write "<a href='job.asp?pageno="&rs.pagecount&"'>���һҳ</a>"
			else
				response.write "��һҳ&nbsp;"
				response.write "���һҳ"
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
<!--ְλ�б� end-->
		<!--ְλ�б� end-->
		</td>
	</tr>
</table>
<!--#include file="inc/emptyline.asp"-->
<!--#include file="inc/inc_foot.asp"-->
</body>
</html>