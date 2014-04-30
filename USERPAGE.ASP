<%@language="vbscript"%>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn"/>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<link href="inc/css_default.css" rel="stylesheet" type="text/css">
<title>MyJob易聘网 - 个人事务</title>
<style type="text/css">
<!--
.user_main{
	width:778;
	text-align:center;
	font-size:9pt;
	font-family:"宋体";
}
.user_main_td1{
	width:140;
	text-align:center;
	font-size:9pt;
	font-family:"宋体";
}
.user_main_td2{
	width:631;
	text-align:center;
	font-size:9pt;
	font-family:"宋体";
}
.edit_userinfo{
	width:628;
	text-align:center;
	font-size:9pt;
	font-family:"宋体";
}
-->
</style>
</head>
<body>
<!--#include file="inc/inc_top.asp"-->
<!--用户信息-->
<table class="user_main" cellpadding="0" cellspacing="0">
	<tr>
		<td class="user_main_td1" valign="top">
			<!--#include file="inc/emptyline.asp"-->
			<!--#include file="inc/userpage_left.asp"-->
		</td>
		<td width="7"></td>
		<td class="user_main_td2">
			<!--#include file="inc/emptyline.asp"-->
			<%
				dim working
				working = request.QueryString("working")
			%>
			<%if working = "" then%>
			
			<%elseif working = "edit_userinfo" then%>
				<!--编辑用户信息-->
					<!--#include file="inc/edit_userinfo.asp"-->
				<!--编辑用户信息 end-->
			<%end if%>
		</td>
	</tr>
</table>
<!--用户信息 end-->
<!--#include file="inc/emptyline.asp"-->
<!--#include file="inc/inc_foot.asp"-->
</body>
</html>