<%@language="vbscript"%>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn"/>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<link href="inc/css_default.css" rel="stylesheet" type="text/css">
<title>MyJob��Ƹ�� - ��ҵ�û�</title>
<style type="text/css">
<!--
.company_main{
	width:778;
}
.company_main_left{
	width:140;
	color:#CE0421;
	font-size:9pt;
}
.company_main_right{
	width:631;
}
.myworking{
	width:100%;
	font-size:9pt;
	text-align:center;
}
.ad_info{
	width:100%;
	font-size:9pt;
	text-align:center;
}
-->
</style>
</head>
<body>
<!--#include file="inc/inc_top.asp"-->
<table class="company_main" cellpadding="0" cellspacing="0">
	<tr>
		<td class="company_main_left" valign="top">
			<!--#include file="inc/emptyline.asp"-->
			<!--#include file="inc/compage_left.asp"-->
		</td>
		<td width="7"></td>
		<td class="company_main_right" valign="top">
			<!--#include file="inc/emptyline.asp"-->
			<%
				dim working
				working = request.QueryString("working")
			%>
			<%if working = "" then%>
			<%elseif working = "enroldeliver" then%>
				<!--������Ƹ��Ϣ-->
					<!--#include file="inc/enroldeliver.asp"-->
				<!--������Ƹ��Ϣ end-->
			<%elseif working = "edit_cominfo" then%>
				<!--�༭��ҵ��Ϣ-->
					<!--#include file="inc/edit_cominfo.asp"-->
				<!--�༭��ҵ��Ϣ end-->
			<%elseif working = "look_cominfo" then%>
				<!--�鿴��ҵ��Ϣ-->
				<!--�鿴��ҵ��Ϣ end-->
			<%end if%>
		</td>
	</tr>
</table>
<!--#include file="inc/emptyline.asp"-->
<!--#include file="inc/inc_foot.asp"-->
</body>
</html>