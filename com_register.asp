<html>
<head>
	<meta http-equiv="Content-Language" content="zh-cn"/>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
	<link href="inc/css_index.css" rel="stylesheet" type="text/css">
	<title>MyJob��Ƹ�� - ��˾ע��ת��</title>
		<script language="javascript">
		<!--
			function firstopen()
			{
				myform.com_name.focus();
			}

			function haha()
			{	
				if(myform.com_name.value.length<1)
				{
					alert("��������ҵ����");
					myform.com_name.focus();
					return(false);
				}
				if(myform.com_pass.value.length<5)
				{
					alert("��������5λ");
					myform.com_pass.focus();
					return(false);
				}
				if(myform.com_pass.value!=myform.com_pass2.value)
				{
					alert("������������벻һ��");
					myform.com_pass.focus();
					return(false);
				}
				if(myform.com_trademark.value.length<1)
				{
					alert("�������̱�");
					myform.com_trademark.focus();
					return(false);
				}
				if(myform.com_bond.value.length<1)
				{
					alert("���������¸�����");
					myform.com_bond.focus();
					return(false);
				}
				if(myform.com_address.value.length<1)
				{
					alert("�����빫˾��ַ");
					myform.com_address.focus();
					return(false);
				}
				if(myform.com_phone1.value.length<1)
				{
					alert("��������ϵ�绰");
					myform.com_phone1.focus();
					return(false);
				}
				for(var shuwei=0;shuwei<myform.com_phone1.value.length;shuwei++)
					{	
						var ch;
						ch=myform.com_phone1.value.charCodeAt("shuwei");
						if(ch>95 ||	ch>57 && ch<95 || ch>41	&& ch<48 || ch<40)
						{
							alert("���������ϵ�绰��ʽ����");
							myform.com_phone1.focus();
							return(false);
						}
					}
				if(myform.com_email.value.indexOf("@")==-1 || myform.com_email.value.indexOf(".")==-1)
				{
					alert("e-mail��ʽ����");
					myform.com_email.focus();
					return(false);
				}
				myform.submit();
			}		
		-->
		</script>
</head>
<body alink="#CE0410" link="#000000" vlink="#000000">
	<!--#include file="inc/inc_top.asp"-->

	<table align="center" width="778">
		<form name="myform" action="subcom_register.asp" method="post">
		<tr>
			<td height="30" align="center" colspan="4"><font font-size="16pt" color="#CE0421"><strong>��ҵ�û�ע��</strong></font></td>
		</tr>
		<tr>
			<td bgcolor="#F0F0F0" align="left"><font color="red">*</font>��ҵ����<b>��</b></td>
			<td bgcolor="#F0F0F0"><input type="text" name="com_name" size="8" maxlength ="8">
				<%
					dim mark
					mark = request.QueryString("mark")
					
					if mark = "1" then
						response.Write "<span class='style1'>�û����ظ���</span>"
					end if
				%>
			</td>
		</tr>
		<tr>
			<td align="left"><font color="red">*</font>��������<b>��</b></td>
			<td><input type="password" name="com_pass" size="8" maxlength="8"></td>
		</tr>
		<tr>
			<td bgcolor="#F0F0F0" align="left"><font color="red">*</font>����ȷ��<b>��</b></td>
			<td bgcolor="#F0F0F0"><input type="password" name="com_pass2"  size="8" maxlength="8"></td>
		</tr>
		<tr>
			<td align="left"><font color="red">*</font>�̱�<b>��</b></td>
			<td><input type="text" name="com_trademark" size="40" maxlength="40"></td>
		</tr>
		<tr>
			<td bgcolor="#F0F0F0" align="left">&nbsp;������ҵ<b>��</b></td>
			<td bgcolor="#F0F0F0"><select name="com_trade">
			<option value="1" selected>������ҵ</option>
            <option value="2">������ҵ</option>
            <option value="3">�ɷ����޹�˾</option>
            <option value="4">�������ι�˾</option>
            <option value="5">���幤�̻�</option>
            <option value="6">˽Ӫ��ҵ</option>
            <option value="7">������ҵ</option>
            <option value="8">������ҵ</option>
            <option value="9">���һ���</option>
            <option value="a">�������</option>
            <option value="b">����</option>
            <option value="c">��ҵ��λ</option>
            <option value="d">����</option>
            <option value="e">����</option>
          </select></td>
		</tr>
		<tr>
			<td align="left"><font color="red">*</font>���¸�����<b>��</b></td>
			<td><input type="text" name="com_bond" size="12" maxlength="6"></td>
		</tr>
		<tr>
			<td bgcolor="#F0F0F0" align="left"><font color="red">*</font>��˾��ַ<b>��</b></td>
			<td bgcolor="#F0F0F0"><input type="text" name="com_address" size="40" maxlength="20"></td>
		</tr>
		<tr>
			<td align="left"><font color="red">*</font>��һ��ϵ�绰<b>��</b></td>
			<td><input type="text" name="com_phone1" size="20" maxlength="20"></td>
		</tr>
		<tr>
			<td bgcolor="#F0F0F0" align="left">&nbsp; �ڶ���ϵ�绰<b>��</b></td>
			<td bgcolor="#F0F0F0"><input type="text" name="com_phone2" size="20" maxlength="20"></td>
		</tr>
		<tr>
			<td align="left">&nbsp; ��˾����<b>��</b></td>
			<td><input type="text" name="com_fax" size="20" maxlength="20"></td>
		</tr>
		
		<tr>
			<td bgcolor="#F0F0F0" align="left">&nbsp; ��˾��ҳ<b>��</b></td>
			<td bgcolor="#F0F0F0"><input type="text" name="com_www" size="20" maxlength="32"></td>
		</tr>
		<tr>
			<td align="left"><font color="red">*</font>��˾E-mail<b>��</b></td>
			<td><input type="text" name="com_email" size="20" maxlength="40"></td>
		</tr>
		<tr>
			<td colspan="2" bgcolor="#F0F0F0" align="center"><font color="red"><b>-_-!!</b></font></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="button" name="queding" value="ȷ��" onClick="haha()">
			<input type="reset" name="chongtian" value="����"></td>
		</tr>
		</form>
	</table>
	<!--#include file="inc/inc_foot.asp"-->
</body>
</html>