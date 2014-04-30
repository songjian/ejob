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
		<td height="30" align="center" colspan="4"><font font-size="14px" color="#CE0421"><strong>修改企业资料</strong></font></td>
	</tr>
	<tr>
		<td align="left"><font color="red">*</font>密码设置<b>：</b></td>
		<td><input type="password" name="com_pass" size="8" maxlength="8" value="<%=com_pass1%>"></td>
	</tr>
	<tr>
		<td bgcolor="#F0F0F0" align="left"><font color="red">*</font>密码确认<b>：</b></td>
		<td bgcolor="#F0F0F0"><input type="password" name="com_pass2"  size="8" maxlength="8" value="<%=com_pass1%>"></td>
	</tr>
	<tr>
		<td align="left"><font color="red">*</font>商标<b>：</b></td>
		<td><input type="text" name="com_trademark" size="40" maxlength="40" value="<%=com_trademark1%>"></td>
	</tr>
	<tr>
		<td bgcolor="#F0F0F0" align="left">&nbsp;从事行业<b>：</b></td>
		<td bgcolor="#F0F0F0"><select name="com_trade">
				<option value="1" selected>三资企业</option>
    <option value="2">国外企业</option>
    <option value="3">股份有限公司</option>
    <option value="4">有限责任公司</option>
    <option value="5">个体工商户</option>
    <option value="6">私营企业</option>
    <option value="7">国有企业</option>
    <option value="8">集体企业</option>
    <option value="9">国家机关</option>
    <option value="a">社会团体</option>
    <option value="b">教育</option>
    <option value="c">事业单位</option>
    <option value="d">军队</option>
    <option value="e">其他</option>
  </select></td>
	</tr>
	<tr>
		<td align="left"><font color="red">*</font>人事负责人<b>：</b></td>
		<td><input type="text" name="com_bond" size="12" maxlength="6" value="<%=com_bond1%>"></td>
	</tr>
	<tr>
		<td bgcolor="#F0F0F0" align="left"><font color="red">*</font>公司地址<b>：</b></td>
		<td bgcolor="#F0F0F0"><input type="text" name="com_address" size="40" maxlength="20" value="<%=com_address1%>"></td>
	</tr>
	<tr>
		<td align="left"><font color="red">*</font>公司电话<b>：</b></td>
		<td><input type="text" name="com_phone1" size="20" maxlength="20" value="<%=com_phone11%>"></td>
	</tr>
	<tr>
		<td bgcolor="#F0F0F0" align="left">&nbsp; 公司电话2<b>：</b></td>
		<td bgcolor="#F0F0F0"><input type="text" name="com_phone2" size="20" maxlength="20" value="<%=com_phone21%>"></td>
	</tr>
	<tr>
		<td align="left">&nbsp; 公司传真<b>：</b></td>
		<td><input type="text" name="com_fax" size="20" maxlength="20" value="<%=com_fax1%>"></td>
	</tr>
	
	<tr>
		<td bgcolor="#F0F0F0" align="left">&nbsp; 公司主页<b>：</b></td>
		<td bgcolor="#F0F0F0"><input type="text" name="com_www" size="20" maxlength="32" value="<%=com_www1%>"></td>
	</tr>
	<tr>
		<td align="left"><font color="red">*</font>公司E-mail<b>：</b></td>
		<td><input type="text" name="com_email" size="20" maxlength="40" value="<%=com_email1%>"></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="submit" name="queding" value="修改" onClick="haha()">
		<input type="reset" name="chongtian" value="重填"></td>
	</tr>
	</form>
</table>
