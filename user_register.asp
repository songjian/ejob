<%@language="vbscript"%>
<!--#include file="show.asp"-->
<html>
<head>
	<meta http-equiv="Content-Language" content="zh-cn"/>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
	<link href="inc/css_default.css" rel="stylesheet" type="text/css">
	<title>MyJob易聘网 - 用户注册</title>
		<script language="javascript">
		<!--
			function firstopen()
			{
				myform.user_name.focus();
			}

			function haha()
			{	
				if(myform.user_name.value.length<1)
				{
					alert("请输入用户帐号");
					myform.user_name.focus();
					return(false);
				}
				if(myform.user_pass.value.length<5)
				{
					alert("密码至少5位");
					myform.user_pass.focus();
					return(false);
				}
				if(myform.user_pass.value!=myform.user_pass2.value)
				{
					alert("两次输入的密码不一致");
					myform.user_pass.focus();
					return(false);
				}
				if(myform.real_name.value.length<1)
				{
					alert("请输入真实姓名");
					myform.real_name.focus();
					return(false);
				}
				if(myform.user_identity.value.length<1)
				{
					alert("请输入身份证号");
					myform.user_identity.focus();
					return(false);
				}
				if(myform.user_birthday.value.length<1)
				{
					alert("请输入出生月份");
					myform.user_birthday.focus();
					return(false);
				}
				if(myform.user_liking.value.length<1)
				{
					alert("请输入兴趣爱好");
					myform.user_liking.focus();
					return(false);
				}
				if(myform.user_plan.value.length<1)
				{
					alert("请输入未来计划");
					myform.user_plan.focus();
					return(false);
				}
				if(myform.user_phone.value.length<1)
				{
					alert("请输入联系电话");
					myform.user_phone.focus();
					return(false);
				}
				for(var shuwei=0;shuwei<myform.user_phone.value.length;shuwei++)
					{	
						var ch;
						ch=myform.user_phone.value.charCodeAt("shuwei");
						if(ch>95 ||	ch>57 && ch<95 || ch>41	&& ch<48 || ch<40)
						{
							alert("你输入的联系电话格式错误");
							myform.user_phone.focus();
							return(false);
						}
					}
				if(myform.user_move.value.length<1)
				{
					alert("请输入移动电话");
					myform.user_move.focus();
					return(false);
				}
				for(var shuwei=0;shuwei<myform.user_move.value.length;shuwei++)
					{
						var tel;
						tel=myform.user_move.value.charCodeAt("shuwei");
						if(tel>95 ||	tel>57 &&	tel<95 ||	tel>41	&&	tel<48 ||	tel<40)
						{
							alert("你输入的移动电话格式错误");
							myform.user_move.focus();
							return(false);
						}
					}
				if(myform.user_email.value.indexOf("@")==-1 || myform.user_email.value.indexOf(".")==-1)
				{
					alert("e-mail格式错误");
					myform.user_email.focus();
					return(false);
				}
				if(myform.user_address.value.length<1)
				{
					alert("请输入联系地址");
					myform.user_address.focus();
					return(false);
				}				
				myform.submit();
			}		
		-->


		</script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<body onload="firstopen()">
	<!--#include file="inc/inc_top.asp"-->		
	<%
		dim working
		working = request.QueryString("working") 
	%>
	<%if working = "" then%>
	
		<table align="center" width="778">
			<form name="myform" action="subuser_register.asp" method="post">
			<tr>
				<td height="30" align="center" colspan="4"><font font-size="16pt" color="#CE0421"><strong>用 户 注 册</strong></font></td>
			</tr>
			<tr bgcolor="#F0F0F0"> 
				<td> <div align="left"><font color="red">* </font>用户名<b>：</b></div></td>
				<td colspan="3" > <input type="text"  name="user_name" size="12" maxlength="12"> </td>
			</tr>
			<tr> 
			  <td > <div align="left"><font color="red">* </font>用户密码<b>：</b></div></td>
			  <td colspan="3" > <input name="user_pass" maxlength="8" type="password" size="8"></td>
			</tr>
			<tr> 
			  <td bgcolor="#F0F0F0" > <div align="left"><font color="red">* </font>确认密码<b>：</b></div></td>
			  <td colspan="3" bgcolor="#F0F0F0" > <input type="password" name="user_pass2" size="8" maxlength="8"></td>
			</tr>
			<tr> 
			  <td><div align="left"><font color="red">* </font>国籍：</div></td>
			  <td colspan="3" > 
			  <%show_nationality()%>
				  </td>
			</tr>
			<tr> 
			  <td bgcolor="#F0F0F0"> <div align="left"><font color="red">* </font>真实姓名<b>：</b></div></td>
			  <td bgcolor="#F0F0F0"> <input name="real_name" maxlength="6" size="12"></td>
			</tr>
			<tr> 
			  <td> <div align="left"><font color="red">* </font>身份证号<b>：</b></div></td>
			  <td> <input name="user_identity" size="18" maxlength="18"></td>
			</tr>
			<tr> 
			  <td bgcolor="#F0F0F0"> <div align="left">&nbsp;&nbsp; 性别<b>：</b></div></td>
			  <td bgcolor="#F0F0F0"> <input type="radio" checked value="男" name="user_sex">
				男　 
				<input type="radio" value="女" name="user_sex">
				女</td>
			</tr>
			<tr> 
			  <td > <div align="left"><font color="red">* </font>居住地<b>：</b></div></td>
			  <td> 
			  <%show_province()%>
			  </td>
			</tr>
			<tr bgcolor="#F0F0F0"> 
			  <td> <div align="left">&nbsp;&nbsp;最高学历<b>：</b></div></td>
			  <td> <select name="user_degree">
				  <option value="小学">小学</option>
				  <option value="初中">初中</option>
				  <option value="技校">技校</option>
				  <option value="高中">高中</option>
				  <option value="中专">中专</option>
				  <option value="大专">大专</option>
				  <option value="本科" selected>本科</option>
				  <option value="双学士">双学士</option>
				  <option value="硕士">硕士</option>
				  <option value="博士">博士</option>
			  </select></td>
			</tr>
			<tr> 
			  <td> <div align="left"><font color="red">* </font>出生年份<b>：</b></div></td>
			  <td> <input name="user_birthday" maxlength="4" size="4">(请注意格式，如：1987)</td>
			</tr>
			<tr> 
			  <td bgcolor="#F0F0F0"><div align="left"><font color="red">* </font>希望从事的行业：</div></td>
			  <td>  
				<%show_trade()%>
			  </td>
			</tr>
			<tr> 
			  <td><div align="left">&nbsp;&nbsp;工作经历<b>：</b></div></td>
			  <td><select name="user_career">
				  <option value="在校学生">在校学生</option>
				  <option value="应届毕业生" selected>应届毕业生</option>
				  <option value="2年以下">2年以下</option>
				  <option value="2年以上">2年以上</option>
				  <option value="5年以上">5年以上</option>
				  <option value="10年以上">10年以上</option>
			  </select> </td>
			<tr> 
			  <td bgcolor="#F0F0F0"> <div align="left"><font color="red">* </font>兴趣爱好<b>：</b></div></td>
			  <td> <input name="user_liking" size="40" maxlength="20"></td>
			</tr>
			<tr> 
			  <td> <div align="left"><font color="red">* </font>未来计划<b>：</b></div></td>
			  <td> <input name="user_plan" size="40" maxlength="20"></td>
			</tr>
			<tr bgcolor="#F0F0F0"> 
			  <td><div align="left">&nbsp;&nbsp;喜欢工作类型<b>：</b></div></td>
			  <td> 
				<%show_enrol_type()%>
			  </td>
			</tr>
			<tr> 
			  <td > <div align="left"><font color="red">* </font>家庭电话<b>：</b></div></td>
			  <td> <input name="user_phone" size="21" maxlength="25"></td>
			</tr>
			<tr> 
			  <td bgcolor="#F0F0F0" > <div align="left">&nbsp;&nbsp;移动电话<b>：</b></div></td>
			  <td bgcolor="#F0F0F0" > <input name="user_move" size="20" maxlength="20"></td>
			</tr>
			<tr> 
			  <td > <div align="left"><font color="red">* </font>E-mail<b>：</b></div></td>
			  <td> <input name="user_email" size="20" maxlength="30"> 
			  </td>
			</tr>
			<tr> 
			  <td bgcolor="#F0F0F0"> <div align="left"><font color="red">* </font>联系地址<b>：</b></div></td>
			  <td bgcolor="#F0F0F0"> <input name="user_address" maxlength="20" size="40"></td>
			</tr>
			<tr>
				<td  colspan="2" align="center"><input type="button" name="zhuce" value="注册" onClick="haha()">
				<input type="reset" name="chongtian" value="重填"></td>
			</tr>
			</form>
		</table>
	<%elseif working = "chenggong"%>
		<!--#include file="inc/register_chengong.asp"-->
	<%end if%>
	<!--#include file="inc/emptyline.asp"-->
	<!--#include file="inc/inc_foot.asp"-->
</body>
</html>