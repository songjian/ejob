<%@language="vbscript"%>
<!--#include file="show.asp"-->
<html>
<head>
	<meta http-equiv="Content-Language" content="zh-cn"/>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
	<link href="inc/css_default.css" rel="stylesheet" type="text/css">
	<title>MyJob��Ƹ�� - �û�ע��</title>
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
					alert("�������û��ʺ�");
					myform.user_name.focus();
					return(false);
				}
				if(myform.user_pass.value.length<5)
				{
					alert("��������5λ");
					myform.user_pass.focus();
					return(false);
				}
				if(myform.user_pass.value!=myform.user_pass2.value)
				{
					alert("������������벻һ��");
					myform.user_pass.focus();
					return(false);
				}
				if(myform.real_name.value.length<1)
				{
					alert("��������ʵ����");
					myform.real_name.focus();
					return(false);
				}
				if(myform.user_identity.value.length<1)
				{
					alert("���������֤��");
					myform.user_identity.focus();
					return(false);
				}
				if(myform.user_birthday.value.length<1)
				{
					alert("����������·�");
					myform.user_birthday.focus();
					return(false);
				}
				if(myform.user_liking.value.length<1)
				{
					alert("��������Ȥ����");
					myform.user_liking.focus();
					return(false);
				}
				if(myform.user_plan.value.length<1)
				{
					alert("������δ���ƻ�");
					myform.user_plan.focus();
					return(false);
				}
				if(myform.user_phone.value.length<1)
				{
					alert("��������ϵ�绰");
					myform.user_phone.focus();
					return(false);
				}
				for(var shuwei=0;shuwei<myform.user_phone.value.length;shuwei++)
					{	
						var ch;
						ch=myform.user_phone.value.charCodeAt("shuwei");
						if(ch>95 ||	ch>57 && ch<95 || ch>41	&& ch<48 || ch<40)
						{
							alert("���������ϵ�绰��ʽ����");
							myform.user_phone.focus();
							return(false);
						}
					}
				if(myform.user_move.value.length<1)
				{
					alert("�������ƶ��绰");
					myform.user_move.focus();
					return(false);
				}
				for(var shuwei=0;shuwei<myform.user_move.value.length;shuwei++)
					{
						var tel;
						tel=myform.user_move.value.charCodeAt("shuwei");
						if(tel>95 ||	tel>57 &&	tel<95 ||	tel>41	&&	tel<48 ||	tel<40)
						{
							alert("��������ƶ��绰��ʽ����");
							myform.user_move.focus();
							return(false);
						}
					}
				if(myform.user_email.value.indexOf("@")==-1 || myform.user_email.value.indexOf(".")==-1)
				{
					alert("e-mail��ʽ����");
					myform.user_email.focus();
					return(false);
				}
				if(myform.user_address.value.length<1)
				{
					alert("��������ϵ��ַ");
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
				<td height="30" align="center" colspan="4"><font font-size="16pt" color="#CE0421"><strong>�� �� ע ��</strong></font></td>
			</tr>
			<tr bgcolor="#F0F0F0"> 
				<td> <div align="left"><font color="red">* </font>�û���<b>��</b></div></td>
				<td colspan="3" > <input type="text"  name="user_name" size="12" maxlength="12"> </td>
			</tr>
			<tr> 
			  <td > <div align="left"><font color="red">* </font>�û�����<b>��</b></div></td>
			  <td colspan="3" > <input name="user_pass" maxlength="8" type="password" size="8"></td>
			</tr>
			<tr> 
			  <td bgcolor="#F0F0F0" > <div align="left"><font color="red">* </font>ȷ������<b>��</b></div></td>
			  <td colspan="3" bgcolor="#F0F0F0" > <input type="password" name="user_pass2" size="8" maxlength="8"></td>
			</tr>
			<tr> 
			  <td><div align="left"><font color="red">* </font>������</div></td>
			  <td colspan="3" > 
			  <%show_nationality()%>
				  </td>
			</tr>
			<tr> 
			  <td bgcolor="#F0F0F0"> <div align="left"><font color="red">* </font>��ʵ����<b>��</b></div></td>
			  <td bgcolor="#F0F0F0"> <input name="real_name" maxlength="6" size="12"></td>
			</tr>
			<tr> 
			  <td> <div align="left"><font color="red">* </font>���֤��<b>��</b></div></td>
			  <td> <input name="user_identity" size="18" maxlength="18"></td>
			</tr>
			<tr> 
			  <td bgcolor="#F0F0F0"> <div align="left">&nbsp;&nbsp; �Ա�<b>��</b></div></td>
			  <td bgcolor="#F0F0F0"> <input type="radio" checked value="��" name="user_sex">
				�С� 
				<input type="radio" value="Ů" name="user_sex">
				Ů</td>
			</tr>
			<tr> 
			  <td > <div align="left"><font color="red">* </font>��ס��<b>��</b></div></td>
			  <td> 
			  <%show_province()%>
			  </td>
			</tr>
			<tr bgcolor="#F0F0F0"> 
			  <td> <div align="left">&nbsp;&nbsp;���ѧ��<b>��</b></div></td>
			  <td> <select name="user_degree">
				  <option value="Сѧ">Сѧ</option>
				  <option value="����">����</option>
				  <option value="��У">��У</option>
				  <option value="����">����</option>
				  <option value="��ר">��ר</option>
				  <option value="��ר">��ר</option>
				  <option value="����" selected>����</option>
				  <option value="˫ѧʿ">˫ѧʿ</option>
				  <option value="˶ʿ">˶ʿ</option>
				  <option value="��ʿ">��ʿ</option>
			  </select></td>
			</tr>
			<tr> 
			  <td> <div align="left"><font color="red">* </font>�������<b>��</b></div></td>
			  <td> <input name="user_birthday" maxlength="4" size="4">(��ע���ʽ���磺1987)</td>
			</tr>
			<tr> 
			  <td bgcolor="#F0F0F0"><div align="left"><font color="red">* </font>ϣ�����µ���ҵ��</div></td>
			  <td>  
				<%show_trade()%>
			  </td>
			</tr>
			<tr> 
			  <td><div align="left">&nbsp;&nbsp;��������<b>��</b></div></td>
			  <td><select name="user_career">
				  <option value="��Уѧ��">��Уѧ��</option>
				  <option value="Ӧ���ҵ��" selected>Ӧ���ҵ��</option>
				  <option value="2������">2������</option>
				  <option value="2������">2������</option>
				  <option value="5������">5������</option>
				  <option value="10������">10������</option>
			  </select> </td>
			<tr> 
			  <td bgcolor="#F0F0F0"> <div align="left"><font color="red">* </font>��Ȥ����<b>��</b></div></td>
			  <td> <input name="user_liking" size="40" maxlength="20"></td>
			</tr>
			<tr> 
			  <td> <div align="left"><font color="red">* </font>δ���ƻ�<b>��</b></div></td>
			  <td> <input name="user_plan" size="40" maxlength="20"></td>
			</tr>
			<tr bgcolor="#F0F0F0"> 
			  <td><div align="left">&nbsp;&nbsp;ϲ����������<b>��</b></div></td>
			  <td> 
				<%show_enrol_type()%>
			  </td>
			</tr>
			<tr> 
			  <td > <div align="left"><font color="red">* </font>��ͥ�绰<b>��</b></div></td>
			  <td> <input name="user_phone" size="21" maxlength="25"></td>
			</tr>
			<tr> 
			  <td bgcolor="#F0F0F0" > <div align="left">&nbsp;&nbsp;�ƶ��绰<b>��</b></div></td>
			  <td bgcolor="#F0F0F0" > <input name="user_move" size="20" maxlength="20"></td>
			</tr>
			<tr> 
			  <td > <div align="left"><font color="red">* </font>E-mail<b>��</b></div></td>
			  <td> <input name="user_email" size="20" maxlength="30"> 
			  </td>
			</tr>
			<tr> 
			  <td bgcolor="#F0F0F0"> <div align="left"><font color="red">* </font>��ϵ��ַ<b>��</b></div></td>
			  <td bgcolor="#F0F0F0"> <input name="user_address" maxlength="20" size="40"></td>
			</tr>
			<tr>
				<td  colspan="2" align="center"><input type="button" name="zhuce" value="ע��" onClick="haha()">
				<input type="reset" name="chongtian" value="����"></td>
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