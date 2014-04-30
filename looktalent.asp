<%@ language="vbscript"%>
<!--#include file="inc\dbconn.asp"-->
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn"/>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<link href="inc/css_index.css" rel="stylesheet" type="text/css">
<title>MyJob易聘网 - 应聘表</title>
<style type="text/css">
<!--
.l1{
	color:#3169B5;
	font-size:14pt;
	font-family:"宋体";
	font-weight: bold;
}
.l2{
	color:#3169B5;
	font-size:10.7pt;
	font-family:"宋体";
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
					<td class="l1" bgcolor="#ABC6E9" height="30" align="center">人才简历</td>
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





<!--底下的风格不要了-->
<table cellpadding="0" cellspacing="0">
	<tr>
		<td>
			
		</td>
	</tr>
	<tr>
		<td align="left">
			&nbsp;&nbsp;姓名：<%=rs("real_name")%><br>
			&nbsp;&nbsp;性别：<%=rs("user_sex")%><br>
			&nbsp;&nbsp;国籍：<%=rs("user_nationality")%><br>
		</td>
	</tr>
<table>









<table cellpadding="0" cellspacing="0" class="top_title">
	<tr>
		<td height="20" bgcolor="#CE0421">求职者简历</td>
	</tr>
	<tr>
		<td>
			<table class="border_a" cellpadding="0" cellspacing="0">
				<tr>
					<td>
						<!--个人信息-->
						<table cellpadding="0" cellspacing="0" class="talent_info">
							<tr>								
								<td width="630" align="center">
									<table cellpadding="0" cellspacing="0" width="580">
										<tr>
											<td height="25" class="style5">希望从事的行业：<span class="style4"><%=rs("user_trade")%></span></td>
										</tr>
										<tr>
										  <td height="25" class="style5">兴趣爱好：<span class="style4"><%=rs("user_liking")%></span></td>
										</tr>
										<tr>
										  <td height="25" class="style5"></td>
										</tr>
									</table>		
								</td>
							</tr>
						</table>
						<!--个人信息 end-->															
						<!--基本信息-->
							<table class="job_career" cellpadding="0" cellspacing="0">
								<tr>
									<td height="20" bgcolor="#CE0421" align="center" class="style6">基本信息</td>
								</tr>
								<tr>
									<td align="left" height="35"><p><span class="style5">姓名：<span class="style4"><%=rs("real_name")%></span>&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;年龄：<span class="style4"><%=2005-rs("user_birthday")%></span></span><br>
								        <br>
								        </p></td>
								</tr>
							</table>
						<!--基本信息 end-->
						<table height="20" cellpadding="0" cellspacing="0" width="750"><tr><td></td></tr></table>
						<!--其他资料-->
							<table class="job_career" cellpadding="0" cellspacing="0">
								<tr>
									<td height="20" bgcolor="#CE0421" align="center" class="style6">其他资料</td>
								</tr>
								<tr>
									<td align="left" height="35"><p><span class="style5"></span>&nbsp;&nbsp;&nbsp;&nbsp;居住地：<span class="style4"><%=rs("user_inhabit")%></span>&nbsp;&nbsp;&nbsp;&nbsp;最高学历：<span class="style4"><%=rs("user_degree")%></span>&nbsp;&nbsp;&nbsp;&nbsp;工作经历：<span class="style4"><%=rs("user_career")%></span>&nbsp;&nbsp;&nbsp;&nbsp;现在工作状态：<span class="style4"><%=rs("user_habitus")%></span><br>
								  <br></td>
								</tr>
							</table>
						<!--其他资料 end-->
						<!--联系方式-->
							<table class="job_career" cellpadding="0" cellspacing="0">
								<tr>
									<td height="20" bgcolor="#CE0421" align="center" class="style6">联系方式</td>
								</tr>
								<tr>
									<td align="left" height="35"><p><span class="style5">联系电话：<span class="style4"><%=rs("user_phone")%></span>&nbsp;&nbsp;&nbsp;&nbsp;移动电话：<span class="style4"><%=rs("user_move")%></span>&nbsp;&nbsp;&nbsp;&nbsp;E-mail：<span class="style4"><%=rs("user_email")%></span>&nbsp;&nbsp;&nbsp;&nbsp;联系地址：<span class="style4"><%=rs("user_address")%></span><br>
								  <br></td>
								</tr>
							</table>
						<!--联系方式 end-->
						<table height="20" cellpadding="0" cellspacing="0" width="750"><tr><td></td></tr></table>
						<!--未来五年计划-->
							<table class="job_career" cellpadding="0" cellspacing="0">
								<tr>
									<td height="20" bgcolor="#CE0421" align="center" class="style6">未来五年计划</td>
								</tr>
								<tr>
									<td align="left" height="35">&nbsp;&nbsp;<%=rs("user_plan")%><br><br></td>
								</tr>
							</table>
						<!--未来五年计划 end-->
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<!--#include file="inc/inc_foot.asp"-->
</body>
</html>