<%@ language="vbscript"%>
<!--#include file="inc\dbconn.asp"-->
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn"/>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<link href="inc/css_index.css" rel="stylesheet" type="text/css">
<title>MyJob��Ƹ�� - ӦƸ��</title>
<style type="text/css">
<!--
.l1{
	color:#3169B5;
	font-size:14pt;
	font-family:"����";
	font-weight: bold;
}
.l2{
	color:#3169B5;
	font-size:10.7pt;
	font-family:"����";
}

-->
</style>
</head>
<body>
<!--#include file="inc/inc_top.asp"-->
<%
	dim userno
	userno = request.querystring("user_id")
	
	dim conn
	set conn = open_conn
	dim sql
	sql = "select * from users where user_id='"&userno&"'"
	
	set rs = conn.execute(sql)		
%>
<!--#include file="inc/emptyline.asp"-->
<table cellpadding="0" cellspacing="0" bgcolor="#ABC6E9" width="680" align="center">
	<tr>
		<td align="center" bgcolor="#ABC6E9">
			<table cellpadding="0" cellspacing="0" bgcolor="#ABC6E9" width="676">
				<tr>
					<td class="l1" bgcolor="#ABC6E9" height="30" align="center">�˲ż���</td>
				</tr>
				<tr>
					<td bgcolor=#ffffff>
						sfsfsfs
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>





<!--���µķ��Ҫ��-->
<table cellpadding="0" cellspacing="0">
	<tr>
		<td>
			
		</td>
	</tr>
	<tr>
		<td align="left">
			&nbsp;&nbsp;������<%=rs("real_name")%><br>
			&nbsp;&nbsp;�Ա�<%=rs("user_sex")%><br>
			&nbsp;&nbsp;������<%=rs("user_nationality")%><br>
		</td>
	</tr>
<table>









<table cellpadding="0" cellspacing="0" class="top_title">
	<tr>
		<td height="20" bgcolor="#CE0421">��ְ�߼���</td>
	</tr>
	<tr>
		<td>
			<table class="border_a" cellpadding="0" cellspacing="0">
				<tr>
					<td>
						<!--������Ϣ-->
						<table cellpadding="0" cellspacing="0" class="talent_info">
							<tr>								
								<td width="630" align="center">
									<table cellpadding="0" cellspacing="0" width="580">
										<tr>
											<td height="25" class="style5">ϣ�����µ���ҵ��<span class="style4"><%=rs("user_trade")%></span></td>
										</tr>
										<tr>
										  <td height="25" class="style5">��Ȥ���ã�<span class="style4"><%=rs("user_liking")%></span></td>
										</tr>
										<tr>
										  <td height="25" class="style5"></td>
										</tr>
									</table>		
								</td>
							</tr>
						</table>
						<!--������Ϣ end-->															
						<!--������Ϣ-->
							<table class="job_career" cellpadding="0" cellspacing="0">
								<tr>
									<td height="20" bgcolor="#CE0421" align="center" class="style6">������Ϣ</td>
								</tr>
								<tr>
									<td align="left" height="35"><p><span class="style5">������<span class="style4"><%=rs("real_name")%></span>&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;���䣺<span class="style4"><%=2005-rs("user_birthday")%></span></span><br>
								        <br>
								        </p></td>
								</tr>
							</table>
						<!--������Ϣ end-->
						<table height="20" cellpadding="0" cellspacing="0" width="750"><tr><td></td></tr></table>
						<!--��������-->
							<table class="job_career" cellpadding="0" cellspacing="0">
								<tr>
									<td height="20" bgcolor="#CE0421" align="center" class="style6">��������</td>
								</tr>
								<tr>
									<td align="left" height="35"><p><span class="style5"></span>&nbsp;&nbsp;&nbsp;&nbsp;��ס�أ�<span class="style4"><%=rs("user_inhabit")%></span>&nbsp;&nbsp;&nbsp;&nbsp;���ѧ����<span class="style4"><%=rs("user_degree")%></span>&nbsp;&nbsp;&nbsp;&nbsp;����������<span class="style4"><%=rs("user_career")%></span>&nbsp;&nbsp;&nbsp;&nbsp;���ڹ���״̬��<span class="style4"><%=rs("user_habitus")%></span><br>
								  <br></td>
								</tr>
							</table>
						<!--�������� end-->
						<!--��ϵ��ʽ-->
							<table class="job_career" cellpadding="0" cellspacing="0">
								<tr>
									<td height="20" bgcolor="#CE0421" align="center" class="style6">��ϵ��ʽ</td>
								</tr>
								<tr>
									<td align="left" height="35"><p><span class="style5">��ϵ�绰��<span class="style4"><%=rs("user_phone")%></span>&nbsp;&nbsp;&nbsp;&nbsp;�ƶ��绰��<span class="style4"><%=rs("user_move")%></span>&nbsp;&nbsp;&nbsp;&nbsp;E-mail��<span class="style4"><%=rs("user_email")%></span>&nbsp;&nbsp;&nbsp;&nbsp;��ϵ��ַ��<span class="style4"><%=rs("user_address")%></span><br>
								  <br></td>
								</tr>
							</table>
						<!--��ϵ��ʽ end-->
						<table height="20" cellpadding="0" cellspacing="0" width="750"><tr><td></td></tr></table>
						<!--δ������ƻ�-->
							<table class="job_career" cellpadding="0" cellspacing="0">
								<tr>
									<td height="20" bgcolor="#CE0421" align="center" class="style6">δ������ƻ�</td>
								</tr>
								<tr>
									<td align="left" height="35">&nbsp;&nbsp;<%=rs("user_plan")%><br><br></td>
								</tr>
							</table>
						<!--δ������ƻ� end-->
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<!--#include file="inc/inc_foot.asp"-->
</body>
</html>