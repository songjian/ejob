<style type="text/css">
<!--
.style1 {color: #FFFFFF;}
.style2 {border:1;
border-color:#3169B5;}
.style3 {
color: #3169B5;
}
a.b:link{
	color: #000000;
}
a.b:visited{
	color: #000000;
}
a.b:hover{
	color: #000000;
}
a.b:active{
	color: #000000;
}
-->
</style>
<table  cellpadding="0" cellspacing="0" bgcolor="#DCE7F5" width="100%">
	<tr bgcolor="#3169B5" height="20">
		<td align="left" width="30%"></td>
		<td align="center" width="40%"><span class="style1">�� ¼</span></td>
		<td align="right" width="30%" valign="top"><img src="inc/angle2.jpg"></td>
	</tr>
	<tr>
		<%if session("auth_id") = "" then%>
			<form name="login_form" action="sublogin.asp" method="post">
				<td colspan="3">
					&nbsp;�û�����<input type="text" name="user_name" size="10"><br>
					&nbsp;��&nbsp;&nbsp;�룺<input type="password" name="user_pass" size="10"><br>
					&nbsp;<input type="radio" name="auth_id" value="3">��ҵ�û�<br>
					&nbsp;<input type="radio" name="auth_id" value="4">�����û�<br>
					<%
						dim mark
						mark = request.QueryString("mark")
					%>
					<%if mark = "1" then %>
						<span class="style3">�û��������벻��ȷ��</span>				  <%end if%>
					&nbsp;&nbsp;<input type="submit" name="submit" value="��¼">
					&nbsp;<input type="reset" value="����">				
				</td>
			</form>
		<%elseif session("auth_id") = "1" then%>
			<td colspan="3" height="80" valign="top">
				<!--#include file="emptyline.asp"-->			
				&nbsp;�û�����<%=session("user_name")%><br>
				&nbsp;��&nbsp;&nbsp;�ݣ��ܹ���Ա<br>
				<!--#include file="emptyline.asp"-->			
				&nbsp;<a href="userpage.asp" class="b">�����������</a><br>
			</td>
		<%elseif session("auth_id") = "3" then%>
			<td colspan="3" height="80" valign="top">
				<!--#include file="emptyline.asp"-->			
				&nbsp;�û�����<%=session("com_name")%><br>
				&nbsp;��&nbsp;&nbsp;�ݣ���ҵ�û�<br>
				<!--#include file="emptyline.asp"-->			
				&nbsp;<a href="compage.asp" class="b">��ҵ�������</a><br>
			</td>
		<%elseif session("auth_id") = "4" then%>
			<td colspan="3" height="80" valign="top">
				<!--#include file="emptyline.asp"-->			
				&nbsp;�û�����<%=session("user_name")%><br>
				&nbsp;��&nbsp;&nbsp;�ݣ������û�<br>
				<!--#include file="emptyline.asp"-->			
				&nbsp;<a href="userpage.asp" class="b">�����������</a><br>
			</td>
		<%end if%>
	</tr>
</table>