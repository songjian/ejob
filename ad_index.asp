<%@language="vbscript"%>
<!--#include file="inc/dbconn.asp"-->
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn"/>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<link href="inc/css_default.css" rel="stylesheet" type="text/css">
<title>MyJob易聘网 - 后台管理</title>
<style type="text/css">
<!--
.main{
	width:778;
	text-align:center;
	font-size:9pt;
	font-family:"宋体";
}
.main_td1{
	width:140;
	text-align:center;
	font-size:9pt;
	font-family:"宋体";
}
.main_td2{
	width:631;
	text-align:center;
	font-size:9pt;
	font-family:"宋体";
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
				<!--发布公告-->
					<!--#include file="inc/enrolplacard.asp"-->
				<!--发布公告 end-->
			<%elseif working = "edit_b" then%>
				<!--编辑公告-->
				<!--编辑公告 end-->
			<%elseif working = "del_b" then%>
				<!--删除公告-->
				<!--删除公告 end-->				
			<%elseif working = "add_auth" then%>
				<!--添加权限-->
				<!--添加权限 end-->
			<%elseif working = "edit_auth" then%>
				<!--编辑权限-->
				<!--编辑权限 end-->
			<%elseif working = "del_auth" then%>
				<!--删除权限-->
				<!--删除权限 end-->
			<%elseif working = "edit_userauth" then%>
				<!--编辑用户权限-->
				<!--编辑用户权限 end-->
			<%elseif working = "add_trade" then%>
				<!--添加行业-->
				<!--添加行业 end-->
			<%elseif working = "edit_trade" then%>
				<!--编辑行业-->
				<!--编辑行业 end-->
			<%elseif working = "del_trade" then%>
				<!--删除行业-->
				<!--删除行业 end-->				
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