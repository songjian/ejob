<!--编辑用户信息-->
<%
	dim user_name1,user_pass1,user_nationality1,real_name1,user_identity1,user_sex1,user_inhabit1,user_degree1,user_birthday1,user_trade1,user_career1,user_liking1,user_plan1,user_habitus1,user_phone1,user_move1,user_email1,user_address1

	user_name1=session("user_name")
	user_pass1=session("user_pass")
	user_nationality1=session("user_nationality")
	real_name1=session("real_name")
	user_identity1=session("user_identity")
	user_sex1=session("user_sex")
	user_inhabit1=session("user_inhabit")
	user_degree1=session("user_degree")
	user_birthday1=session("user_birthday")
	user_trade1=session("user_trade")
	user_career1=session("user_career")
	user_liking1=session("user_liking")
	user_plan1=session("user_plan")
	user_habitus1=session("user_habitus")
	user_phone1=session("user_phone")
	user_move1=session("user_move")
	user_email1=session("user_email")
	user_address1=session("user_address")
%>
<table align="center" width="100%">
	<form name="myform" action="subedit_userinfo.asp" method="post">
		<tr>
			<td height="30" align="center" colspan="4"><font font-size="16pt" color="#CE0421"><strong>修改个人资料</strong></font></td>
		</tr>
		<tr bgcolor="#F0F0F0"> 
			<td> <div align="left"><font color="red">* </font>用户名<b>：</b></div></td>
			<td colspan="3" > <input type="text"  name="user_name" size="12" maxlength="12" value="<%=user_name1%>"> </td>
		</tr>
		<tr> 
		  <td > <div align="left"><font color="red">* </font>用户密码<b>：</b></div></td>
		  <td colspan="3" > <input name="user_pass" maxlength="8" type="password" size="8" value="<%=user_pass1%>"></td>
		</tr>
		<tr> 
		  <td bgcolor="#F0F0F0" > <div align="left"><font color="red">* </font>确认密码<b>：</b></div></td>
		  <td colspan="3" bgcolor="#F0F0F0" > <input type="password" name="user_pass2" size="8" maxlength="8" value="<%=user_pass1%>"></td>
		</tr>
		<tr> 
		  <td><div align="left"><font color="red">* </font>国籍：</div></td>
		  <td colspan="3" > <p> 
			  <select name="user_nationality" size="1">
				<OPTION value="中国">中国</OPTION>
				<OPTION value="韩国">韩国</OPTION>
				<OPTION value="日本">日本</OPTION>
				<OPTION value="朝鲜">朝鲜</OPTION>
				<OPTION value="美国">美国</OPTION>
				<OPTION value="德国">德国</OPTION>
				<OPTION value="法国">法国</OPTION>
				<OPTION value="英国">英国</OPTION>
				<OPTION value="伊拉克">伊拉克</OPTION>
				<OPTION value="菲律宾">菲律宾</OPTION>
				<OPTION value="马来西亚">马来西亚</OPTION>
				<OPTION value="老挝">老挝</OPTION>
				<OPTION value="缅甸">缅甸</OPTION>
				<OPTION value="西班牙">西班牙</OPTION>
				<OPTION value="巴西">巴西</OPTION>
				<OPTION value="俄罗斯">俄罗斯</OPTION>
				<OPTION value="乌克兰">乌克兰</OPTION>
				<OPTION value="阿富汗">阿富汗</OPTION>
			</select></td>
		</tr>
		<tr> 
		  <td bgcolor="#F0F0F0"> <div align="left"><font color="red">* </font>真实姓名<b>：</b></div></td>
		  <td bgcolor="#F0F0F0"> <input name="real_name" maxlength="6" size="12" value="<%=real_name1%>"></td>
		</tr>
		<tr> 
		  <td> <div align="left"><font color="red">* </font>身份证号<b>：</b></div></td>
		  <td> <input name="user_identity" size="18" maxlength="18" value="<%=user_identity1%>"></td>
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
		  <td> <select name="user_inhabit">
			  <option value="广东省">广东省</option>
			  <option value="福建省">福建省</option>
			  <option value="浙江省">浙江省</option>
			  <option value="江苏省">江苏省</option>
			  <option value="山东省" selected>山东省</option>
			  <option value="辽宁省">辽宁省</option>
			  <option value="江西省">江西省</option>
			  <option value="四川省">四川省</option>
			  <option value="陕西省">陕西省</option>
			  <option value="湖北省">湖北省</option>
			  <option value="河南省">河南省</option>
			  <option value="河北省">河北省</option>
			  <option value="山西省">山西省</option>
			  <option value="内蒙古">内蒙古</option>
			  <option value="吉林省">吉林省</option>
			  <option value="黑龙江">黑龙江</option>
			  <option value="安徽省">安徽省</option>
			  <option value="湖南省">湖南省</option>
			  <option value="广西区">广西区</option>
			  <option value="海南省">海南省</option>
			  <option value="云南省">云南省</option>
			  <option value="贵州省">贵州省</option>
			  <option value="西藏区">西藏区</option>
			  <option value="甘肃省">甘肃省</option>
			  <option value="宁夏区">宁夏区</option>
			  <option value="青海省">青海省</option>
			  <option value="新疆区">新疆区</option>
			  <option value="香港区">香港区</option>
			  <option value="澳门区">澳门区</option>
			  <option value="台湾省">台湾省</option>
			  <option value="国外">国外</option>
			</select>
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
		  <td> <input name="user_birthday" maxlength="4" size="4" value="<%=user_birthday1%>">(请注意格式，如：1987)</td>
		</tr>
		<tr> 
		  <td bgcolor="#F0F0F0"><div align="left"><font color="red">* </font>希望从事的行业：</div></td>
		  <td> <p> 
			  <select name="user_trade" size="1">
				<OPTION value="计算机硬件技术">计算机硬件技术</OPTION>
				<OPTION value="计算机软件技术">计算机软件技术</OPTION>
				<OPTION value="互联网/网络/通讯技术">互联网/网络/通讯技术</OPTION>
				<OPTION value="平面设计技术">平面设计技术</OPTION>
				<OPTION value="网页/美工技术">网页/美工技术</OPTION>
				<OPTION value="工业设计技术">工业设计技术</OPTION>
				<OPTION value="电器/仪表/光电技术">电器/仪表/光电技术</OPTION>
				<OPTION value="无线电/半导体技术">无线电/半导体技术</OPTION>
				<OPTION value="机械/电子技术">机械/电子技术</OPTION>
				<OPTION value="电力/动力/能源技术">电力/动力/能源技术</OPTION>
				<OPTION value="冶金技术">冶金技术</OPTION>
				<OPTION value="化学/化工技术">化学/化工技术</OPTION>
				<OPTION value="生物/制药技术">生物/制药技术</OPTION>
				<OPTION value="农林/水利/园艺技术">农林/水利/园艺技术</OPTION>
				<OPTION value="渔业/动物养殖技术">渔业/动物养殖技术</OPTION>
				<OPTION value="食品/饮料/烟草加工技术">食品/饮料/烟草加工技术</OPTION>
				<OPTION value="采矿/地质/气象技术">采矿/地质/气象技术</OPTION>
				<OPTION value="测绘/路桥/航道技术">测绘/路桥/航道技术</OPTION>
				<OPTION value="建筑/暖通空调/给排水技术">建筑/暖通空调/给排水技术</OPTION>
				<OPTION value="装潢/物业技术">装潢/物业技术</OPTION>
				<OPTION value="纺织/服装/皮革技术">纺织/服装/皮革技术</OPTION>
				<OPTION value="造纸/印刷/包装技术">造纸/印刷/包装技术</OPTION>
				<OPTION value="压力/容器/玻璃/陶瓷技术">压力/容器/玻璃/陶瓷技术</OPTION>
				<OPTION value="珠宝首饰/玩具/家具技术">珠宝首饰/玩具/家具技术</OPTION>
				<OPTION value="技术工人/普通工人">技术工人/普通工人</OPTION>
				<OPTION value="高层管理/猎头">高层管理/猎头</OPTION>
				<OPTION value="中层管理/部门经理">中层管理/部门经理</OPTION>
				<OPTION value="经销商/业务代理">经销商/业务代理</OPTION>
				<OPTION value="市场策划/文案">市场策划/文案</OPTION>
				<OPTION value="业务员/营业员/售后服务">业务员/营业员/售后服务</OPTION>
				<OPTION value="国际贸易/报关/船务">国际贸易/报关/船务</OPTION>
				<OPTION value="财务/会计/审计">财务/会计/审计</OPTION>
				<OPTION value="出纳/收银/统计">出纳/收银/统计</OPTION>
				<OPTION value="人力资源">人力资源</OPTION>
				<OPTION value="行政/后勤">行政/后勤</OPTION>
				<OPTION value="文员/前台/打字">文员/前台/打字</OPTION>
				<OPTION value="司机">司机</OPTION>
				<OPTION value="律师/法律顾问">律师/法律顾问</OPTION>
				<OPTION value="中介/经纪/咨询/事物代理">中介/经纪/咨询/事物代理</OPTION>
				<OPTION value="党政/社团/公益/公共关系">党政/社团/公益/公共关系</OPTION>
				<OPTION value="新闻/出版">新闻/出版</OPTION>
				<OPTION value="广播/电影/电视">广播/电影/电视</OPTION>
				<OPTION value="广告">广告</OPTION>
				<OPTION value="金融/保险/证券/投资">金融/保险/证券/投资</OPTION>
				<OPTION value="航空/铁道/船运/公路">航空/铁道/船运/公路</OPTION>
				<OPTION value="科学研究">科学研究</OPTION>
				<OPTION value="翻译/情报/档案">翻译/情报/档案</OPTION>
				<OPTION value="大学教师">大学教师</OPTION>
				<OPTION value="中学/技校教师">中学/技校教师</OPTION>
				<OPTION value="医疗/药品/防疫">医疗/药品/防疫</OPTION>
				<OPTION value="医疗/药品/防疫">医疗/药品/防疫</OPTION>
				<OPTION value="文化/艺术/礼仪/体育/休闲">文化/艺术/礼仪/体育/休闲</OPTION>
				<OPTION value="旅游/宾馆/餐饮/美容美发">旅游/宾馆/餐饮/美容美发</OPTION>
				<OPTION value="保安">保安</OPTION>
			  </select>
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
		  <td> <input name="user_liking" size="40" maxlength="20" value="<%=user_liking1%>"></td>
		</tr>
		<tr> 
		  <td> <div align="left"><font color="red">* </font>未来计划<b>：</b></div></td>
		  <td> <input name="user_plan" size="40" maxlength="20" value="<%=user_plan1%>"></td>
		</tr>
		<tr bgcolor="#F0F0F0"> 
		  <td><div align="left">&nbsp;&nbsp;现在工作状态<b>：</b></div></td>
		  <td> <select name="user_habitus">
			  <option value="全职" selected>全职</option>
			  <option value="兼职">兼职</option>
			  <option value="临时">临时</option>
		  </select></td>
		</tr>
		<tr> 
		  <td > <div align="left"><font color="red">* </font>联系电话<b>：</b></div></td>
		  <td> <input name="user_phone" size="21" maxlength="25" value="<%=user_phone1%>"></td>
		</tr>
		<tr> 
		  <td bgcolor="#F0F0F0" > <div align="left">&nbsp;&nbsp;移动电话<b>：</b></div></td>
		  <td bgcolor="#F0F0F0" > <input name="user_move" size="20" maxlength="20" value="<%=user_move1%>"></td>
		</tr>
		<tr> 
		  <td > <div align="left"><font color="red">* </font>E-mail<b>：</b></div></td>
		  <td> <input name="user_email" size="20" maxlength="30" value="<%=user_email1%>"> 
		  </td>
		</tr>
		<tr> 
		  <td bgcolor="#F0F0F0"> <div align="left"><font color="red">* </font>联系地址<b>：</b></div></td>
		  <td bgcolor="#F0F0F0"> <input name="user_address" maxlength="20" size="40" value="<%=user_address1%>"></td>
		</tr>
		<tr>
			<td  colspan="2" align="center"><input type="submit" name="queding" value="修改" onClick="haha()">
			<input type="reset" name="chongtian" value="清空"></td>
		</tr>
	</form>
</table>
<!--编辑用户信息 end-->