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
		<td align="center" width="40%"><span class="style1">登 录</span></td>
		<td align="right" width="30%" valign="top"><img src="inc/angle2.jpg"></td>
	</tr>
	<tr>
		<%if session("auth_id") = "" then%>
			<form name="login_form" action="sublogin.asp" method="post">
				<td colspan="3">
					&nbsp;用户名：<input type="text" name="user_name" size="10"><br>
					&nbsp;密&nbsp;&nbsp;码：<input type="password" name="user_pass" size="10"><br>
					&nbsp;<input type="radio" name="auth_id" value="3">企业用户<br>
					&nbsp;<input type="radio" name="auth_id" value="4">个人用户<br>
					<%
						dim mark
						mark = request.QueryString("mark")
					%>
					<%if mark = "1" then %>
						<span class="style3">用户名或密码不正确！</span>				  <%end if%>
					&nbsp;&nbsp;<input type="submit" name="submit" value="登录">
					&nbsp;<input type="reset" value="重填">				
				</td>
			</form>
		<%elseif session("auth_id") = "1" then%>
			<td colspan="3" height="80" valign="top">
				<!--#include file="emptyline.asp"-->			
				&nbsp;用户名：<%=session("user_name")%><br>
				&nbsp;身&nbsp;&nbsp;份：总管理员<br>
				<!--#include file="emptyline.asp"-->			
				&nbsp;<a href="userpage.asp" class="b">个人事务管理</a><br>
			</td>
		<%elseif session("auth_id") = "3" then%>
			<td colspan="3" height="80" valign="top">
				<!--#include file="emptyline.asp"-->			
				&nbsp;用户名：<%=session("com_name")%><br>
				&nbsp;身&nbsp;&nbsp;份：企业用户<br>
				<!--#include file="emptyline.asp"-->			
				&nbsp;<a href="compage.asp" class="b">企业事务管理</a><br>
			</td>
		<%elseif session("auth_id") = "4" then%>
			<td colspan="3" height="80" valign="top">
				<!--#include file="emptyline.asp"-->			
				&nbsp;用户名：<%=session("user_name")%><br>
				&nbsp;身&nbsp;&nbsp;份：个人用户<br>
				<!--#include file="emptyline.asp"-->			
				&nbsp;<a href="userpage.asp" class="b">个人事务管理</a><br>
			</td>
		<%end if%>
	</tr>
</table>