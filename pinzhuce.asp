<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn"/>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<meta http-equiv="html" content="no-cache"/>
<link href="inc/css_default.css" rel="stylesheet" type="text/css">
<title>人才网</title>
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
					alert("请输入招聘用户代码");
					myform.username.focus();
					return(false);
				}
				if(myform.userpass1.value.length<5)
				{
					alert("密码至少5位");
					myform.userpass1.focus();
					return(false);
				}
				if(myform.userpass1.value!=myform.userpass2.value)
				{
					alert("两次输入的密码不一致");
					myform.userpass1.focus();
					return(false);
				}
				if(myform.userdanwei.value.length<1)
				{
					alert("请输入招聘用户单位名称");
					myform.userdanwei.focus();
					return(false);
				}
				if(myform.lianxiren.value.length<1)
				{
					alert("请输入联系部门（联系人）");
					myform.lianxiren.focus();
					return(false);
				}
				if(myform.dianhua.value.length<1)
				{
					alert("请输入联系电话");
					myform.dianhua.focus();
					return(false);
				}
				for(var shuwei=0;shuwei<myform.dianhua.value.length;shuwei++)
					{	
						var ch;
						ch=myform.dianhua.value.charCodeAt("shuwei");
						if(ch>95 ||	ch>57 && ch<95 || ch>41	&& ch<48 || ch<40)
						{
							alert("你输入的联系电话格式错误");
							myform.dianhua.focus();
							return(false);
						}
					}
				if(myform.chengshi.value.length<1)
				{
					alert("请输入城市名");
					myform.chengshi.focus();
					return(false);
				}
				if(myform.dizhi.value.length<1)
				{
					alert("请输入联系地址");
					myform.dizhi.focus();
					return(false);
				}
				if(myform.youzheng.value.length<1)
				{
					alert("请输入邮政编码");
					myform.youzheng.focus();
					return(false);
				}
				for(var shuwei=0;shuwei<myform.youzheng.value.length;shuwei++)
					{
						var tel;
						tel=myform.youzheng.value.charCodeAt("shuwei");
						if(tel>95 ||	tel>57 &&	tel<95 ||	tel>41	&&	tel<48 ||	tel<40)
						{
							alert("你输入的邮政编码格式错误");
							myform.youzheng.focus();
							return(false);
						}
					}
				if(myform.fax.value.length<1)
				{
					alert("请输入传真号码");
					myform.fax.focus();
					return(false);
				}
				for(var shuwei=0;shuwei<myform.fax.value.length;shuwei++)
					{
						var tel;
						tel=myform.fax.value.charCodeAt("shuwei");
						if(tel>95 ||	tel>57 &&	tel<95 ||	tel>41	&&	tel<48 ||	tel<40)
						{
							alert("你输入的传真号码格式错误");
							myform.fax.focus();
							return(false);
						}
					}
				if(myform.usermail.value.indexOf("@")==-1 || myform.usermail.value.indexOf(".")==-1)
				{
					alert("e-mail格式错误");
					myform.usermail.focus();
					return(false);
				}
				if(myform.jianjie.value.length<20)
				{
					alert("招聘用户简介至少20位");
					myform.jianjie.focus();
					return(false);
				}

				myform.submit();
			}		
		-->


		</script>
</head>
<body alink="#CE0410" link="#000000" vlink="#000000">


<!--页脚-->
<p align="center"><font size="4" face="楷体">欢</font>
				<font size="4" face="楷体">迎</font>
				<font size="4" face="楷体">注</font>
				<font size="4" face="楷体">册</font></p>
		<form name="myform" action="pinfabu.asp" method="post">
			<table align="center">
				<tr>
					<td align="left"><font color="red">*</font>招聘用户代码<b>：</b></td>
					<td><input type="text" name="username" size="8" maxlength ="8"></td>
				</tr>
				<tr>
					<td align="left"><font color="red">*</font>密码设置<b>：</b></td>
					<td><input type="password" name="userpass1" size="8" maxlength="8"></td>
				</tr>
				<tr>
					<td align="left"><font color="red">*</font>密码确认<b>：</b></td>
					<td><input type="password" name="userpass2"  size="8" maxlength="8"></td>
				</tr>
				<tr>
					<td align="left"><font color="red">*</font>招聘用户单位名称<b>：</b></td>
					<td><input type="text" name="userdanwei" size="40" maxlength="40"></td>
				</tr>
				<tr>
					<td align="left"><font color="red">*</font>招聘用户性质<b>：</b></td>
					<td><select name="kind">
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
					<td align="left"><font color="red">*</font>联系部门（联系人）<b>：</b></td>
					<td><input type="text" name="lianxiren" size="12" maxlength="6"></td>
				</tr>
				<tr>
					<td align="left"><font color="red">*</font>联系电话<b>：</b></td>
					<td><input type="text" name="dianhua" size="20" maxlength="20"></td>
				</tr>
				<tr>
					<td align="left"><font color="red">*</font>单位所在省市<b>：</b></td>
					<td><select name="diqu">
                                <option value="01">北京市</option>
                                <option value="02">上海市</option>
                                <option value="03">天津市</option>
                                <option value="04">重庆市</option>
                                <option value="05">广东省</option>
                                <option value="06">福建省</option>
                                <option value="07">浙江省</option>
                                <option value="08">江苏省</option>
                                <option value="09">山东省</option>
                                <option value="10">辽宁省</option>
                                <option value="11">江西省</option>
                                <option value="12">四川省</option>
                                <option value="13">陕西省</option>
                                <option value="14">湖北省</option>
                                <option value="15">河南省</option>
                                <option value="16">河北省</option>
                                <option value="17">山西省</option>
                                <option value="18">内蒙古</option>
                                <option value="19">吉林省</option>
                                <option value="20">黑龙江</option>
                                <option value="21">安徽省</option>
                                <option value="22">湖南省</option>
                                <option value="23">广西区</option>
                                <option value="24">海南省</option>
                                <option value="25">云南省</option>
                                <option value="26">贵州省</option>
                                <option value="27">西藏区</option>
                                <option value="28">甘肃省</option>
                                <option value="29">宁夏区</option>
                                <option value="30">青海省</option>
                                <option value="31">新疆区</option>
                                <option value="32">香港区</option>
                                <option value="33">澳门区</option>
                                <option value="34">台湾省</option>
                                <option value="35">国外</option>
                              </select>
					<input type="text" name="chengshi" size="5" maxlength="5"></td>
				</tr>
				<tr>
					<td align="left"><font color="red">*</font>联系地址<b>：</b></td>
					<td><input type="text" name="dizhi" size="40" maxlength="20"></td>
				</tr>
				<tr>
					<td align="left"><font color="red">*</font>邮政编码<b>：</b></td>
					<td><input type="text" name="youzheng" size="12" maxlength="6"></td>
				</tr>
				<tr>
					<td align="left">&nbsp; 传真号码<b>：</b></td>
					<td><input type="text" name="fax" size="20" maxlength="20"></td>
				</tr>
				<tr>
					<td align="left"><font color="red">*</font>电子信箱<b>：</b></td>
					<td><input type="text" name="usermail" size="20" maxlength="40"></td>
				</tr>
				<tr>
					<td align="left">&nbsp; 招聘用户主页<b>：</b></td>
					<td><input type="text" name="userzhuye" size="20" maxlength="32"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><font color="red"><b>招聘用户简介</b></font></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><textarea rows=10 cols=55 name="jianjie"></textarea></td>
				</tr>
				<tr>
					<td  colspan="2" align="center"><input type="button" name="queding" value="确定" onClick="haha()">
					<input type="reset" name="chongtian" value="重填"></td>
				</tr>
			</table>
			<p align="left"><a href="index.asp">《《《返回首页</a></p>
			</form>
<table class="table_foot" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td height="7" bgcolor="#cd0421"></td>
	</tr>
	<tr>
		<td>联系我们|引贤纳士|业务合作</td>
	</tr>
	<tr>
		<td><a href="mailto:songjian5532@hotmail.com">E-mail:songjian5532@hotmail.com</a></td>
	</tr>
</table>
<!--页脚 end-->
</body>
</html>