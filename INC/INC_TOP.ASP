<!--��¼��-->
<style type="text/css">
<!--
.login{
	width:778;
	height:20;
	font-family:"??";
	font-size:9pt;
	color:#3169B5;
}
.login_n{
	width:778;
	height:30;
	font-family:"??";
	font-size:9pt;
}
.table_top{
	width:778;
	height:60;
	font-family:"??";
	font-size:9pt;
}
.table_top_td1{
	height:30;
	font-family:Arial, Helvetica, sans-serif;
	font-size:16pt;
	color:#3169B5;
}
a.n:link{
	color: #ffffff;
}
a.n:visited{
	color: #ffffff;
}
a.n:hover{
	color: #ffffff;
}
a.n:active{
	color: #ffffff;
}

a.m:link{
	color: #3169B5;
}
a.m:visited{
	color: #3169B5;
}
a.m:hover{
	color: #3169B5;
}
a.m:active{
	color: #3169B5;
}
-->
</style>
<!--״̬-->
<table cellpadding="0" cellspacing="0" class="login" heihtr="20">
	<tr>
		<%if session("auth_id") = "" then%>
			<td align="right">
				<a href="com_register.asp" class="m">��ҵע��</a>&nbsp;<a href="user_register.asp" class="m">����ע��&nbsp;<a href="index.asp" class="m">��¼</a>
			</td>
		<%elseif session("auth_id") = "1" then%> 
			<td align="right">
				��ӭ����<%=session("user_name")%>&nbsp;&nbsp;<a href="userpage.asp" class="m">�����������</a>&nbsp;<a href="ad_index.asp" class="m">��̨����</a>&nbsp;<a href="quit.asp" class="m">�˳�</a>
			</td>
		<%elseif session("auth_id") = "2" then%>
			<td align="right">
				��ӭ�㣡<%=session("user_name")%>&nbsp;&nbsp;<a href="quit.asp" class="m">�˳�</a>
			</td>
		<%elseif session("auth_id") = "3" then%>
			<td align="right">
				��ӭ�㣡<%=session("com_name")%>&nbsp;&nbsp;<a href="compage.asp" class="m">��ҵ�������</a>&nbsp;<a href="quit.asp" class="m">�˳�</a>
			</td>
		<%elseif session("auth_id") = "4" then%>
			<td align="right">
				��ӭ����<%=session("user_name")%>&nbsp;&nbsp;<a href="userpage.asp" class="m">�����������</a>&nbsp;<a href="quit.asp" class="m">�˳�</a>
			</td>
		<%end if%>
	</tr>
</table>
<!--״̬ end-->
<!--logo-->
<table class="table_top" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td class="table_top_td1" width="180"><img src="inc/ejob.jpg"></td>
		<td class="table_top_td1" valign="bottom">
			<table cellpadding="0" cellspacing="0" height="18" class="style2" bgcolor="#3169B5">
				<tr>
					<td><img src="inc/angle1.jpg"></td>
					<td><a href="index.asp" class="n">��ҳ</a></td>
					<td><img src="inc/angle2.jpg"></td>
					<td><img src="inc/angle1.jpg"></td>
					<td><a class="n" href="job.asp">�ҹ���</a></td>
					<td><img src="inc/angle2.jpg"></td>
					<td><img src="inc/angle1.jpg"></td>
					<td><a class="n" href="talent.asp">���˲�</a></td>
					<td><img src="inc/angle2.jpg"></td>
					<td><img src="inc/angle1.jpg"></td>
					<td><a class="n" href="placard.asp">��������</a></td>
					<td><img src="inc/angle2.jpg"></td>					
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td colspan="2" bgcolor="#3169B5" height="7"></td>
	</tr>
	<tr>
		<td colspan="2" height="20" bgcolor="#ABC6E9"></td>
	</tr>
</table>
<!--logo end-->