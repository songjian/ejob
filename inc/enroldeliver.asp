<!--#include file="../show.asp"-->
<script language="javascript">
<!--
	function sub()
	{	
		if(myform.enrol_function.value.length<1)
		{
			alert("请输入详细招聘职位");
			myform.enrol_function.focus();
			return(false);
		}
		if(myform.enrol_quantity.value.length<1)
		{
			alert("请输入招聘人数");
			myform.enrol_quantity.focus();
			return(false);
		}		
		for(var shuwei=0;shuwei<myform.enrol_quantity.value.length;shuwei++)
			{
				var tel;
				tel=myform.enrol_quantity.value.charCodeAt("shuwei");
				if(tel>95 ||	tel>57 &&	tel<95 ||	tel>41	&&	tel<48 ||	tel<40)
				{
					alert("你输入的招聘人数格式错误");
					myform.enrol_quantity.focus();
					return(false);
				}
			}
		if(myform.enrol_locality.value.length<1)
		{
			alert("请输入工作地点");
			myform.enrol_locality.focus();
			return(false);
		}
		if(myform.enrol_introduce.value.length<20)
		{
			alert("详细要求至少20位");
			myform.enrol_introduce.focus();
			return(false);
		}

		myform.submit();
	}		
-->
</script>
<!--招聘信息-->
<table cellpadding="0" cellspacing="0" class="table_main">
	<form name="myform" action="subenroldeliver.asp" method="post">
	<!--页面主题-->
	<tr>
		<td height="30" align="center" colspan="4"><font font-size="16pt" color="#CE0421"><strong>发布招聘信息</strong></font></td>
	</tr>
	<!--页面主题 end-->
	<tr height="10">
		<td></td>
	</tr>
	<tr> 
		<td><font color="red">*</font>招聘类型<b>：</b></td>
		<td>
			<%show_enrol_type()%>
		</td>
    </tr>
	<tr> 
		<td><font color="red">*</font>招聘行业<b>：</b></td>
		<td>
			<%show_trade()%>
		</td>
    </tr>
	  <tr> 
		<td><font color="red">*</font>招聘职位<b>：</b></td>
		<td><input name="enrol_function" maxlength="20" size="25"></td>
	  </tr>
	  <tr>
		<td><font color="red">*</font>招聘人数<b>：</b></td>
		<td><input name="enrol_quantity" size="5" maxlength="5">(单位:人)</td>
	  </tr>
	  <tr>
	  	<td height="30" colspan="2" valign="bottom">
			<table cellpadding="0" cellspacing="0"bgcolor="#d5d5d5" height="22" width="100%" class="style4">
				<tr>
					<td>其它要求</td>
				</tr>
			</table>
		</td>
	  </tr>
	  <tr height="10">
	  	<td></td>
	  </tr>
	  <tr> 
		<td>&nbsp;性别要求<b>：</b></td>
		<td><select name="enrol_sex">
			<option value="不限">不限</option>
			<option value="男">男</option>
			<option value="女">女</option>
		  </select></td>
	  </tr>
	  <tr> 
		<td>&nbsp;年龄要求<b>：</b></td>
		<td>从 
		  <input name="enrol_age" size="2" value="20" maxlength="2">
		  到 
		  <input name="enrol_age" size="2" value="35" maxlength="2">
		岁</td>
	  </tr>
	  <tr> 
		<td>&nbsp;专业要求<b>：</b></td>
		<td><select name="enrol_specialt ">
			  <option value="无专业（高中及以下学历者）">无专业（高中及以下学历者）</option>
			  <option value="哲学类">哲学类</option>
			  <option value="经济学类">经济学类</option>
			  <option value="法学类">法学类</option>
			  <option value="马克思主义理论类">马克思主义理论类</option>
			  <option value="社会学类">社会学类</option>
			  <option value="政治学类">政治学类</option>
			  <option value="公安学类">公安学类</option>
			  <option value="教育学类">教育学类</option>
			  <option value="体育学类">体育学类</option>
			  <option value="中国语言文学类">中国语言文学类</option>
			  <option value="外国语言文学类">外国语言文学类</option>
			  <option value="新闻传播学类">新闻传播学类</option>
			  <option value="艺术类">艺术类</option>
			  <option value="历史学类">历史学类</option>
			  <option value="数学类">数学类</option>
			  <option value="物理学类">物理学类</option>
			  <option value="化学类">化学类</option>
			  <option value="生物科学类">生物科学类</option>
			  <option value="天文学类">天文学类</option>
			  <option value="地质学类">地质学类</option>
			  <option value="地理科学类">地理科学类</option>
			  <option value="地球物理科学类">地球物理科学类</option>
			  <option value="大气科学类">大气科学类</option>
			  <option value="海洋科学类">海洋科学类</option>
			  <option value="力学类">力学类</option>
			  <option value="电子信息科学类">电子信息科学类</option>
			  <option value="材料科学类">材料科学类</option>
			  <option value="环境科学类">环境科学类</option>
			  <option value="心理学类">心理学类</option>
			  <option value="统计学类">统计学类</option>
			  <option value="地矿学类">地矿学类</option>
			  <option value="材料类">材料类</option>
			  <option value="机械类">机械类</option>
			  <option value="仪器仪表类">仪器仪表类</option>
			  <option value="能源动力类">能源动力类</option>
			  <option value="电气信息类">电气信息类</option>
			  <option value="土建类">土建类</option>
			  <option value="水利类">水利类</option>
			  <option value="测绘类">测绘类</option>
			  <option value="环境与安全类">环境与安全类</option>
			  <option value="化工与制药类">化工与制药类</option>
			  <option value="交通运输类">交通运输类</option>
			  <option value="海洋工程类">海洋工程类</option>
			  <option value="轻工纺织食品类">轻工纺织食品类</option>
			  <option value="航空航天类">航空航天类</option>
			  <option value="武器类">武器类</option>
			  <option value="工程力学">工程力学</option>
			  <option value="生物工程类">生物工程类</option>
			  <option value="农业工程类">农业工程类</option>
			  <option value="林业工程类">林业工程类</option>
			  <option value="公安技术类">公安技术类</option>
			  <option value="植物生产类">植物生产类</option>
			  <option value="草业科学类">草业科学类</option>
			  <option value="森林资源类">森林资源类</option>
			  <option value="环境生态类">环境生态类</option>
			  <option value="动物生产类">动物生产类</option>
			  <option value="动物医学类">动物医学类</option>
			  <option value="水产类">水产类</option>
			  <option value="基础医学类">基础医学类</option>
			  <option value="预防医学类">预防医学类</option>
			  <option value="临床医学与医学技术类">临床医学与医学技术类</option>
			  <option value="口腔医学类">口腔医学类</option>
			  <option value="中医学类">中医学类</option>
			  <option value="法医学类">法医学类</option>
			  <option value="护理学类">护理学类</option>
			  <option value="药学类">药学类</option>
			  <option value="管理科学与工程类">管理科学与工程类</option>
			  <option value="工商管理类">工商管理类</option>
			  <option value="公共管理类">公共管理类</option>
			  <option value="农业经济管理类">农业经济管理类</option>
			  <option value="图书档案学类">图书档案学类</option>
		</select></td>
	  </tr>
	  <tr> 
		<td>&nbsp;学历要求<b>：</b></td>
		<td><select name="enrol_degree">
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
		<td>&nbsp;工作年限<b>：</b></td>
		<td><select name="enrol_career">
			<option value="不限" selected>不限</option>
			<option value="在校学生">在校学生</option>
			<option value="应届毕业生">应届毕业生</option>
			<option value="2年以下">2年以下</option>
			<option value="2年以上">2年以上</option>
			<option value="5年以上">5年以上</option>
			<option value="10年以上">10年以上</option>
		  </select></td>
	  </tr>
	  <tr> 
		<td>&nbsp;月工资水平区间<b>：</b></td>
		<td><select name="enrol_wage">
			<option value="1000以下( 或“面议”)">1000以下( 或“面议”)</option>
			<option value="1000至6000( 或“面议”)">1000至6000( 或“面议”)</option>
			<option value="6000以上( 或“面议”)">6000以上( 或“面议”)</option>
		  </select>
		</td>
	  </tr>
	  <tr> 
		<td>&nbsp;招聘期限<b>：</b></td>
		<td><select name="enrol_deadline">
			<option value="一个月">一个月</option>
			<option value="三个月">三个月</option>
			<option value="六个月">六个月</option>
			<option value="一年">一年</option>
		</select></td>
	  </tr>
	  <tr></tr>
		<td>&nbsp;工作地点<b>：</b></td>
		<td><input type="text" name="enrol_locality" size="40" maxlength="20"></td>
	  </tr>
	<tr>
		<td>&nbsp;其它说明<b>：</b></td>
		<td><textarea rows=10 cols=55 name="enrol_introduce"></textarea></td>
	</tr>
	<tr>
		<td  colspan="2" align="center"><input type="button" name="jijiao" value="提交" onClick="sub()">
		<input type="reset" name="chongtian" value="重填"></td>
	</tr>
	</form>
</table>
<!--招聘信息 end-->