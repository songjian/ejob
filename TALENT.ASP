<%@language="vbscript"%>
<!--#include file="inc/dbconn.asp"-->
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn"/>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<link href="inc/css_default.css" rel="stylesheet" type="text/css">
<title>MyJob易聘网 - 招聘首页</title>
<style type="text/css">
<!--
.show_talent{
	width:631;
	font-family:"宋体";
	font-size:10.7pt;
	color:#000000;
	text-align:left;
}
.scour_talent{
	width:778;
	height:80;
	font-family:"宋体";
	font-size:9pt;
	color:#000000;
	text-align:center;
	background-color:d5d5d5;
}
.page_topic{
	height:50;
	background-color:#D5D5D5;
	font-family:"宋体";
	font-size:18px;
	color:#CE0421;
	text-align:center;
}
.style8 {
	font-family: "宋体";
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
		<td width="140" valign="top">
			<table cellpadding="0" cellspacing="0" width="100%">
				<tr>
					<td bgcolor="#ABC6E9" height="30"><span class="style8">&nbsp;<span class="style9">搜索人才</span></span></td>
				</tr>
			</table>
			<!--#include file="inc/search_talent.asp"-->
		</td>
		<td width="7"></td>
		<td width="631" valign="top">
			<!--求职者列表-->
				<!--#include file="inc/talentlist.asp"-->
			<!--求职者列表 end-->
		</td>
	</tr>
</table>
<!--#include file="inc/emptyline.asp"-->
<!--#include file="inc/inc_foot.asp"-->
</body>
</html>