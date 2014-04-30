<html>
<head>
	<meta http-equiv="Content-Language" content="zh-cn"/>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
	<link href="inc/css_index.css" rel="stylesheet" type="text/css">
	<title>MyJob易聘网 - 公司注册转链</title>
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
					alert("请输入企业名称");
					myform.com_name.focus();
					return(false);
				}
				if(myform.com_pass.value.length<5)
				{
					alert("密码至少5位");
					myform.com_pass.focus();
					return(false);
				}
				if(myform.com_pass.value!=myform.com_pass2.value)
				{
					alert("两次输入的密码不一致");
					myform.com_pass.focus();
					return(false);
				}
				if(myform.com_trademark.value.length<1)
				{
					alert("请输入商标");
					myform.com_trademark.focus();
					return(false);
				}
				if(myform.com_bond.value.length<1)
				{
					alert("请输入人事负责人");
					myform.com_bond.focus();
					return(false);
				}
				if(myform.com_address.value.length<1)
				{
					alert("请输入公司地址");
					myform.com_address.focus();
					return(false);
				}
				if(myform.com_phone1.value.length<1)
				{
					alert("请输入联系电话");
					myform.com_phone1.focus();
					return(false);
				}
				for(var shuwei=0;shuwei<myform.com_phone1.value.length;shuwei++)
					{	
						var ch;
						ch=myform.com_phone1.value.charCodeAt("shuwei");
						if(ch>95 ||	ch>57 && ch<95 || ch>41	&& ch<48 || ch<40)
						{
							alert("你输入的联系电话格式错误");
							myform.com_phone1.focus();
							return(false);
						}
					}
				if(myform.com_email.value.indexOf("@")==-1 || myform.com_email.value.indexOf(".")==-1)
				{
					alert("e-mail格式错误");
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
			<td height="30" align="center" colspan="4"><font font-size="16pt" color="#CE0421"><strong>企业用户注册</strong></font></td>
		</tr>
		<tr>
			<td bgcolor="#F0F0F0" align="left"><font color="red">*</font>企业名称<b>：</b></td>
			<td bgcolor="#F0F0F0"><input type="text" name="com_name" size="8" maxlength ="8">
				<%
					dim mark
					mark = request.QueryString("mark")
					
					if mark = "1" then
						response.Write "<span class='style1'>用户名重复！</span>"
					end if
				%>
			</td>
		</tr>
		<tr>
			<td align="left"><font color="red">*</font>密码设置<b>：</b></td>
			<td><input type="password" name="com_pass" size="8" maxlength="8"></td>
		</tr>
		<tr>
			<td bgcolor="#F0F0F0" align="left"><font color="red">*</font>密码确认<b>：</b></td>
			<td bgcolor="#F0F0F0"><input type="password" name="com_pass2"  size="8" maxlength="8"></td>
		</tr>
		<tr>
			<td align="left"><font color="red">*</font>商标<b>：</b></td>
			<td><input type="text" name="com_trademark" size="40" maxlength="40"></td>
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
			<td><input type="text" name="com_bond" size="12" maxlength="6"></td>
		</tr>
		<tr>
			<td bgcolor="#F0F0F0" align="left"><font color="red">*</font>公司地址<b>：</b></td>
			<td bgcolor="#F0F0F0"><input type="text" name="com_address" size="40" maxlength="20"></td>
		</tr>
		<tr>
			<td align="left"><font color="red">*</font>第一联系电话<b>：</b></td>
			<td><input type="text" name="com_phone1" size="20" maxlength="20"></td>
		</tr>
		<tr>
			<td bgcolor="#F0F0F0" align="left">&nbsp; 第二联系电话<b>：</b></td>
			<td bgcolor="#F0F0F0"><input type="text" name="com_phone2" size="20" maxlength="20"></td>
		</tr>
		<tr>
			<td align="left">&nbsp; 公司传真<b>：</b></td>
			<td><input type="text" name="com_fax" size="20" maxlength="20"></td>
		</tr>
		
		<tr>
			<td bgcolor="#F0F0F0" align="left">&nbsp; 公司主页<b>：</b></td>
			<td bgcolor="#F0F0F0"><input type="text" name="com_www" size="20" maxlength="32"></td>
		</tr>
		<tr>
			<td align="left"><font color="red">*</font>公司E-mail<b>：</b></td>
			<td><input type="text" name="com_email" size="20" maxlength="40"></td>
		</tr>
		<tr>
			<td colspan="2" bgcolor="#F0F0F0" align="center"><font color="red"><b>-_-!!</b></font></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="button" name="queding" value="确定" onClick="haha()">
			<input type="reset" name="chongtian" value="重填"></td>
		</tr>
		</form>
	</table>
	<!--#include file="inc/inc_foot.asp"-->
</body>
</html>