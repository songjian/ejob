<%	
	dim com_name1,com_pass1,com_trademark1,com_trade1,com_bond1,com_address1,com_phone11,com_phone21,com_fax1,com_www1,com_email1		

	com_name1=session("com_name")
	com_pass1=session("com_pass")
	com_trademark1=session("com_trademark")
	com_trade1=session("com_trade")
	com_bond1=session("com_bond")
	com_address1=session("com_address")
	com_phone11=session("com_phone1")
	com_phone21=session("com_phone2")
	com_fax1=session("com_fax")
	com_www1=session("com_www")
	com_email1=session("com_email")
%>
<table align="center" width="100%">
	<form name="myform" action="subedit_cominfo.asp" method="post">
	<tr>
		<td height="30" align="center" colspan="4"><font font-size="14px" color="#CE0421"><strong>�޸���ҵ����</strong></font></td>
	</tr>
	<tr>
		<td align="left"><font color="red">*</font>��������<b>��</b></td>
		<td><input type="password" name="com_pass" size="8" maxlength="8" value="<%=com_pass1%>"></td>
	</tr>
	<tr>
		<td bgcolor="#F0F0F0" align="left"><font color="red">*</font>����ȷ��<b>��</b></td>
		<td bgcolor="#F0F0F0"><input type="password" name="com_pass2"  size="8" maxlength="8" value="<%=com_pass1%>"></td>
	</tr>
	<tr>
		<td align="left"><font color="red">*</font>�̱�<b>��</b></td>
		<td><input type="text" name="com_trademark" size="40" maxlength="40" value="<%=com_trademark1%>"></td>
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
		<td><input type="text" name="com_bond" size="12" maxlength="6" value="<%=com_bond1%>"></td>
	</tr>
	<tr>
		<td bgcolor="#F0F0F0" align="left"><font color="red">*</font>��˾��ַ<b>��</b></td>
		<td bgcolor="#F0F0F0"><input type="text" name="com_address" size="40" maxlength="20" value="<%=com_address1%>"></td>
	</tr>
	<tr>
		<td align="left"><font color="red">*</font>��˾�绰<b>��</b></td>
		<td><input type="text" name="com_phone1" size="20" maxlength="20" value="<%=com_phone11%>"></td>
	</tr>
	<tr>
		<td bgcolor="#F0F0F0" align="left">&nbsp; ��˾�绰2<b>��</b></td>
		<td bgcolor="#F0F0F0"><input type="text" name="com_phone2" size="20" maxlength="20" value="<%=com_phone21%>"></td>
	</tr>
	<tr>
		<td align="left">&nbsp; ��˾����<b>��</b></td>
		<td><input type="text" name="com_fax" size="20" maxlength="20" value="<%=com_fax1%>"></td>
	</tr>
	
	<tr>
		<td bgcolor="#F0F0F0" align="left">&nbsp; ��˾��ҳ<b>��</b></td>
		<td bgcolor="#F0F0F0"><input type="text" name="com_www" size="20" maxlength="32" value="<%=com_www1%>"></td>
	</tr>
	<tr>
		<td align="left"><font color="red">*</font>��˾E-mail<b>��</b></td>
		<td><input type="text" name="com_email" size="20" maxlength="40" value="<%=com_email1%>"></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="submit" name="queding" value="�޸�" onClick="haha()">
		<input type="reset" name="chongtian" value="����"></td>
	</tr>
	</form>
</table>
