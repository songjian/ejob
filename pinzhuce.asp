<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn"/>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<meta http-equiv="html" content="no-cache"/>
<link href="inc/css_default.css" rel="stylesheet" type="text/css">
<title>�˲���</title>
		<script language="javascript">
		<!--
			function firstopen()
			{
				myform.username.focus();
			}

			function haha()
			{	
				if(myform.username.value.length<1)
				{
					alert("��������Ƹ�û�����");
					myform.username.focus();
					return(false);
				}
				if(myform.userpass1.value.length<5)
				{
					alert("��������5λ");
					myform.userpass1.focus();
					return(false);
				}
				if(myform.userpass1.value!=myform.userpass2.value)
				{
					alert("������������벻һ��");
					myform.userpass1.focus();
					return(false);
				}
				if(myform.userdanwei.value.length<1)
				{
					alert("��������Ƹ�û���λ����");
					myform.userdanwei.focus();
					return(false);
				}
				if(myform.lianxiren.value.length<1)
				{
					alert("��������ϵ���ţ���ϵ�ˣ�");
					myform.lianxiren.focus();
					return(false);
				}
				if(myform.dianhua.value.length<1)
				{
					alert("��������ϵ�绰");
					myform.dianhua.focus();
					return(false);
				}
				for(var shuwei=0;shuwei<myform.dianhua.value.length;shuwei++)
					{	
						var ch;
						ch=myform.dianhua.value.charCodeAt("shuwei");
						if(ch>95 ||	ch>57 && ch<95 || ch>41	&& ch<48 || ch<40)
						{
							alert("���������ϵ�绰��ʽ����");
							myform.dianhua.focus();
							return(false);
						}
					}
				if(myform.chengshi.value.length<1)
				{
					alert("�����������");
					myform.chengshi.focus();
					return(false);
				}
				if(myform.dizhi.value.length<1)
				{
					alert("��������ϵ��ַ");
					myform.dizhi.focus();
					return(false);
				}
				if(myform.youzheng.value.length<1)
				{
					alert("��������������");
					myform.youzheng.focus();
					return(false);
				}
				for(var shuwei=0;shuwei<myform.youzheng.value.length;shuwei++)
					{
						var tel;
						tel=myform.youzheng.value.charCodeAt("shuwei");
						if(tel>95 ||	tel>57 &&	tel<95 ||	tel>41	&&	tel<48 ||	tel<40)
						{
							alert("����������������ʽ����");
							myform.youzheng.focus();
							return(false);
						}
					}
				if(myform.fax.value.length<1)
				{
					alert("�����봫�����");
					myform.fax.focus();
					return(false);
				}
				for(var shuwei=0;shuwei<myform.fax.value.length;shuwei++)
					{
						var tel;
						tel=myform.fax.value.charCodeAt("shuwei");
						if(tel>95 ||	tel>57 &&	tel<95 ||	tel>41	&&	tel<48 ||	tel<40)
						{
							alert("������Ĵ�������ʽ����");
							myform.fax.focus();
							return(false);
						}
					}
				if(myform.usermail.value.indexOf("@")==-1 || myform.usermail.value.indexOf(".")==-1)
				{
					alert("e-mail��ʽ����");
					myform.usermail.focus();
					return(false);
				}
				if(myform.jianjie.value.length<20)
				{
					alert("��Ƹ�û��������20λ");
					myform.jianjie.focus();
					return(false);
				}

				myform.submit();
			}		
		-->


		</script>
</head>
<body alink="#CE0410" link="#000000" vlink="#000000">


<!--ҳ��-->
<p align="center"><font size="4" face="����">��</font>
				<font size="4" face="����">ӭ</font>
				<font size="4" face="����">ע</font>
				<font size="4" face="����">��</font></p>
		<form name="myform" action="pinfabu.asp" method="post">
			<table align="center">
				<tr>
					<td align="left"><font color="red">*</font>��Ƹ�û�����<b>��</b></td>
					<td><input type="text" name="username" size="8" maxlength ="8"></td>
				</tr>
				<tr>
					<td align="left"><font color="red">*</font>��������<b>��</b></td>
					<td><input type="password" name="userpass1" size="8" maxlength="8"></td>
				</tr>
				<tr>
					<td align="left"><font color="red">*</font>����ȷ��<b>��</b></td>
					<td><input type="password" name="userpass2"  size="8" maxlength="8"></td>
				</tr>
				<tr>
					<td align="left"><font color="red">*</font>��Ƹ�û���λ����<b>��</b></td>
					<td><input type="text" name="userdanwei" size="40" maxlength="40"></td>
				</tr>
				<tr>
					<td align="left"><font color="red">*</font>��Ƹ�û�����<b>��</b></td>
					<td><select name="kind">
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
					<td align="left"><font color="red">*</font>��ϵ���ţ���ϵ�ˣ�<b>��</b></td>
					<td><input type="text" name="lianxiren" size="12" maxlength="6"></td>
				</tr>
				<tr>
					<td align="left"><font color="red">*</font>��ϵ�绰<b>��</b></td>
					<td><input type="text" name="dianhua" size="20" maxlength="20"></td>
				</tr>
				<tr>
					<td align="left"><font color="red">*</font>��λ����ʡ��<b>��</b></td>
					<td><select name="diqu">
                                <option value="01">������</option>
                                <option value="02">�Ϻ���</option>
                                <option value="03">�����</option>
                                <option value="04">������</option>
                                <option value="05">�㶫ʡ</option>
                                <option value="06">����ʡ</option>
                                <option value="07">�㽭ʡ</option>
                                <option value="08">����ʡ</option>
                                <option value="09">ɽ��ʡ</option>
                                <option value="10">����ʡ</option>
                                <option value="11">����ʡ</option>
                                <option value="12">�Ĵ�ʡ</option>
                                <option value="13">����ʡ</option>
                                <option value="14">����ʡ</option>
                                <option value="15">����ʡ</option>
                                <option value="16">�ӱ�ʡ</option>
                                <option value="17">ɽ��ʡ</option>
                                <option value="18">���ɹ�</option>
                                <option value="19">����ʡ</option>
                                <option value="20">������</option>
                                <option value="21">����ʡ</option>
                                <option value="22">����ʡ</option>
                                <option value="23">������</option>
                                <option value="24">����ʡ</option>
                                <option value="25">����ʡ</option>
                                <option value="26">����ʡ</option>
                                <option value="27">������</option>
                                <option value="28">����ʡ</option>
                                <option value="29">������</option>
                                <option value="30">�ຣʡ</option>
                                <option value="31">�½���</option>
                                <option value="32">�����</option>
                                <option value="33">������</option>
                                <option value="34">̨��ʡ</option>
                                <option value="35">����</option>
                              </select>
					<input type="text" name="chengshi" size="5" maxlength="5"></td>
				</tr>
				<tr>
					<td align="left"><font color="red">*</font>��ϵ��ַ<b>��</b></td>
					<td><input type="text" name="dizhi" size="40" maxlength="20"></td>
				</tr>
				<tr>
					<td align="left"><font color="red">*</font>��������<b>��</b></td>
					<td><input type="text" name="youzheng" size="12" maxlength="6"></td>
				</tr>
				<tr>
					<td align="left">&nbsp; �������<b>��</b></td>
					<td><input type="text" name="fax" size="20" maxlength="20"></td>
				</tr>
				<tr>
					<td align="left"><font color="red">*</font>��������<b>��</b></td>
					<td><input type="text" name="usermail" size="20" maxlength="40"></td>
				</tr>
				<tr>
					<td align="left">&nbsp; ��Ƹ�û���ҳ<b>��</b></td>
					<td><input type="text" name="userzhuye" size="20" maxlength="32"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><font color="red"><b>��Ƹ�û����</b></font></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><textarea rows=10 cols=55 name="jianjie"></textarea></td>
				</tr>
				<tr>
					<td  colspan="2" align="center"><input type="button" name="queding" value="ȷ��" onClick="haha()">
					<input type="reset" name="chongtian" value="����"></td>
				</tr>
			</table>
			<p align="left"><a href="index.asp">������������ҳ</a></p>
			</form>
<table class="table_foot" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td height="7" bgcolor="#cd0421"></td>
	</tr>
	<tr>
		<td>��ϵ����|������ʿ|ҵ�����</td>
	</tr>
	<tr>
		<td><a href="mailto:songjian5532@hotmail.com">E-mail:songjian5532@hotmail.com</a></td>
	</tr>
</table>
<!--ҳ�� end-->
</body>
</html>