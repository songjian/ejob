		<%@ language="vbscript"%>
		<!--#include file="inc\dbconn.asp"-->
<html>
<head>
	<meta http-equiv="Content-Language" content="zh-cn"/>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
	<link href="inc/css_index.css" rel="stylesheet" type="text/css">
	<title>MyJob��Ƹ�� - ��Ƹ��Ϣ</title>
	<link href="inc/css.css" rel="stylesheet" type="text/css">
    <style type="text/css">
<!--
.style7 {
	font-size: 10.7pt;
	color: #FFFFFF;
	font-weight: bold;
}
.style8 {
	color: #3169B5;
	font-weight: bold;
	font-size:10.7pt;
}
.unnamed1 {
	line-height: 20px;
}
.style9 {
font-size: 14pt;
color: #3169B5;
font-weight: bold;
}
.style10 {
font-size: 10.7pt;
}
-->
    </style>
</head>
<body>
<!--#include file="inc/inc_top.asp"-->
<%

	dim comno,com_name
	enrol_id = request.querystring("enrol_id")
	com_name = request.QueryString("com_name")
	
	
	dim conn
	set conn = open_conn
	dim sql,sql2
	sql = "select * from enrol where enrol_id = '"&enrol_id&"'"
	sql2 = "select * from coms where com_name = '"&com_name&"'"
	
	
	set rs = conn.execute(sql)
	set rs2 = conn.execute(sql2)
		
	session("com_id1")=rs2("com_id")
	session("enrol_id1")=rs("enrol_id")
%>
<!--#include file="inc/emptyline.asp"-->
<table cellpadding="0" cellspacing="0" width="778">
	<tr>
		<tr>
			<td colspan="3" align="center" height="30" class="style9">��˾����</td>
		</tr>
		<td width="20%" align="right">			
			&nbsp;&nbsp;<span class="style8">��˾���ƣ�</span><br>
			&nbsp;&nbsp;<span class="style8">��˾������ҵ��</span><br>
			&nbsp;&nbsp;<span class="style8">��˾��ַ��</span><br>
			&nbsp;&nbsp;<span class="style8">��Ƹְλ��</span><br>
			&nbsp;&nbsp;<span class="style8">��Ƹ���ͣ�</span><br>
			&nbsp;&nbsp;<span class="style8">��Ƹ������</span><br>
			&nbsp;&nbsp;<span class="style8">��Ƹ�������ڣ�</span><br>
			&nbsp;&nbsp;<span class="style8">�Ա�Ҫ��</span><br>
			&nbsp;&nbsp;<span class="style8">ѧ��Ҫ��</span><br>
			&nbsp;&nbsp;<span class="style8">�����ص㣺</span><br>
			&nbsp;&nbsp;<span class="style8">����Ҫ��</span><br>
			&nbsp;&nbsp;<span class="style8">��ϸ���ܣ�</span><br>
		</td>
		<td wdith="60%" class="style10">
			<%=com_name%><br>
			<%=rs("enrol_trade")%><br>
			<%=rs2("com_address")%><br>
			<%=rs("enrol_function")%><br>
			<%=rs("enrol_type")%><br>
			<%=rs("enrol_quantity")%><br>
			<%=rs("enrol_deadline")%><br>
			<%=rs("enrol_sex")%><br>
			<%=rs("enrol_degree")%><br>
			<%=rs("enrol_locality")%><br>
			<%=rs("enrol_age")%><br>
			<%=rs("enrol_introduce")%><br>
		</td>
		<form name="myform" action="subresumelog.asp" method="post">
		<td width="30%" valign="top">
			<br>
			<br>
			<input type="submit" name="queding" value="��ҪӦƸ��ְλ" border="0">
		</td>
		</form>		
	</tr>
</table>
<!--#include file="inc/inc_foot.asp"-->	
</body>
</html>