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
			<%
				dim working
				working = request.QueryString("working")
				
				dim myconn
 				set myconn = open_conn
 				const adOpenStatic=3
			%>
			<%if working = "" then%>
			
			<%elseif working = "add_b" then%>
				<!--��������-->
					<!--#include file="inc/enrolplacard.asp"-->
				<!--�������� end-->
			<%elseif working = "edit_b" then%>
				<!--�༭����-->
				<!--�༭���� end-->
			<%elseif working = "del_b" then%>
				<!--ɾ������-->
				<!--ɾ������ end-->				
			<%elseif working = "add_auth" then%>
				<!--���Ȩ��-->
				<!--���Ȩ�� end-->
			<%elseif working = "edit_auth" then%>
				<!--�༭Ȩ��-->
				<!--�༭Ȩ�� end-->
			<%elseif working = "del_auth" then%>
				<!--ɾ��Ȩ��-->
				<!--ɾ��Ȩ�� end-->
			<%elseif working = "edit_userauth" then%>
				<!--�༭�û�Ȩ��-->
				<!--�༭�û�Ȩ�� end-->
			<%elseif working = "add_trade" then%>
				<!--�����ҵ-->
				<!--�����ҵ end-->
			<%elseif working = "edit_trade" then%>
				<!--�༭��ҵ-->
				<!--�༭��ҵ end-->
			<%elseif working = "del_trade" then%>
				<!--ɾ����ҵ-->
				<!--ɾ����ҵ end-->				
			<%end if%>
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