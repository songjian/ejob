<!--#include file="../show.asp"-->
<script language="javascript">
<!--
	function sub()
	{	
		if(myform.enrol_function.value.length<1)
		{
			alert("��������ϸ��Ƹְλ");
			myform.enrol_function.focus();
			return(false);
		}
		if(myform.enrol_quantity.value.length<1)
		{
			alert("��������Ƹ����");
			myform.enrol_quantity.focus();
			return(false);
		}		
		for(var shuwei=0;shuwei<myform.enrol_quantity.value.length;shuwei++)
			{
				var tel;
				tel=myform.enrol_quantity.value.charCodeAt("shuwei");
				if(tel>95 ||	tel>57 &&	tel<95 ||	tel>41	&&	tel<48 ||	tel<40)
				{
					alert("���������Ƹ������ʽ����");
					myform.enrol_quantity.focus();
					return(false);
				}
			}
		if(myform.enrol_locality.value.length<1)
		{
			alert("�����빤���ص�");
			myform.enrol_locality.focus();
			return(false);
		}
		if(myform.enrol_introduce.value.length<20)
		{
			alert("��ϸҪ������20λ");
			myform.enrol_introduce.focus();
			return(false);
		}

		myform.submit();
	}		
-->
</script>
<!--��Ƹ��Ϣ-->
<table cellpadding="0" cellspacing="0" class="table_main">
	<form name="myform" action="subenroldeliver.asp" method="post">
	<!--ҳ������-->
	<tr>
		<td height="30" align="center" colspan="4"><font font-size="16pt" color="#CE0421"><strong>������Ƹ��Ϣ</strong></font></td>
	</tr>
	<!--ҳ������ end-->
	<tr height="10">
		<td></td>
	</tr>
	<tr> 
		<td><font color="red">*</font>��Ƹ����<b>��</b></td>
		<td>
			<%show_enrol_type()%>
		</td>
    </tr>
	<tr> 
		<td><font color="red">*</font>��Ƹ��ҵ<b>��</b></td>
		<td>
			<%show_trade()%>
		</td>
    </tr>
	  <tr> 
		<td><font color="red">*</font>��Ƹְλ<b>��</b></td>
		<td><input name="enrol_function" maxlength="20" size="25"></td>
	  </tr>
	  <tr>
		<td><font color="red">*</font>��Ƹ����<b>��</b></td>
		<td><input name="enrol_quantity" size="5" maxlength="5">(��λ:��)</td>
	  </tr>
	  <tr>
	  	<td height="30" colspan="2" valign="bottom">
			<table cellpadding="0" cellspacing="0"bgcolor="#d5d5d5" height="22" width="100%" class="style4">
				<tr>
					<td>����Ҫ��</td>
				</tr>
			</table>
		</td>
	  </tr>
	  <tr height="10">
	  	<td></td>
	  </tr>
	  <tr> 
		<td>&nbsp;�Ա�Ҫ��<b>��</b></td>
		<td><select name="enrol_sex">
			<option value="����">����</option>
			<option value="��">��</option>
			<option value="Ů">Ů</option>
		  </select></td>
	  </tr>
	  <tr> 
		<td>&nbsp;����Ҫ��<b>��</b></td>
		<td>�� 
		  <input name="enrol_age" size="2" value="20" maxlength="2">
		  �� 
		  <input name="enrol_age" size="2" value="35" maxlength="2">
		��</td>
	  </tr>
	  <tr> 
		<td>&nbsp;רҵҪ��<b>��</b></td>
		<td><select name="enrol_specialt ">
			  <option value="��רҵ�����м�����ѧ���ߣ�">��רҵ�����м�����ѧ���ߣ�</option>
			  <option value="��ѧ��">��ѧ��</option>
			  <option value="����ѧ��">����ѧ��</option>
			  <option value="��ѧ��">��ѧ��</option>
			  <option value="���˼����������">���˼����������</option>
			  <option value="���ѧ��">���ѧ��</option>
			  <option value="����ѧ��">����ѧ��</option>
			  <option value="����ѧ��">����ѧ��</option>
			  <option value="����ѧ��">����ѧ��</option>
			  <option value="����ѧ��">����ѧ��</option>
			  <option value="�й�������ѧ��">�й�������ѧ��</option>
			  <option value="���������ѧ��">���������ѧ��</option>
			  <option value="���Ŵ���ѧ��">���Ŵ���ѧ��</option>
			  <option value="������">������</option>
			  <option value="��ʷѧ��">��ʷѧ��</option>
			  <option value="��ѧ��">��ѧ��</option>
			  <option value="����ѧ��">����ѧ��</option>
			  <option value="��ѧ��">��ѧ��</option>
			  <option value="�����ѧ��">�����ѧ��</option>
			  <option value="����ѧ��">����ѧ��</option>
			  <option value="����ѧ��">����ѧ��</option>
			  <option value="�����ѧ��">�����ѧ��</option>
			  <option value="���������ѧ��">���������ѧ��</option>
			  <option value="������ѧ��">������ѧ��</option>
			  <option value="�����ѧ��">�����ѧ��</option>
			  <option value="��ѧ��">��ѧ��</option>
			  <option value="������Ϣ��ѧ��">������Ϣ��ѧ��</option>
			  <option value="���Ͽ�ѧ��">���Ͽ�ѧ��</option>
			  <option value="������ѧ��">������ѧ��</option>
			  <option value="����ѧ��">����ѧ��</option>
			  <option value="ͳ��ѧ��">ͳ��ѧ��</option>
			  <option value="�ؿ�ѧ��">�ؿ�ѧ��</option>
			  <option value="������">������</option>
			  <option value="��е��">��е��</option>
			  <option value="�����Ǳ���">�����Ǳ���</option>
			  <option value="��Դ������">��Դ������</option>
			  <option value="������Ϣ��">������Ϣ��</option>
			  <option value="������">������</option>
			  <option value="ˮ����">ˮ����</option>
			  <option value="�����">�����</option>
			  <option value="�����밲ȫ��">�����밲ȫ��</option>
			  <option value="��������ҩ��">��������ҩ��</option>
			  <option value="��ͨ������">��ͨ������</option>
			  <option value="���󹤳���">���󹤳���</option>
			  <option value="�Ṥ��֯ʳƷ��">�Ṥ��֯ʳƷ��</option>
			  <option value="���պ�����">���պ�����</option>
			  <option value="������">������</option>
			  <option value="������ѧ">������ѧ</option>
			  <option value="���﹤����">���﹤����</option>
			  <option value="ũҵ������">ũҵ������</option>
			  <option value="��ҵ������">��ҵ������</option>
			  <option value="����������">����������</option>
			  <option value="ֲ��������">ֲ��������</option>
			  <option value="��ҵ��ѧ��">��ҵ��ѧ��</option>
			  <option value="ɭ����Դ��">ɭ����Դ��</option>
			  <option value="������̬��">������̬��</option>
			  <option value="����������">����������</option>
			  <option value="����ҽѧ��">����ҽѧ��</option>
			  <option value="ˮ����">ˮ����</option>
			  <option value="����ҽѧ��">����ҽѧ��</option>
			  <option value="Ԥ��ҽѧ��">Ԥ��ҽѧ��</option>
			  <option value="�ٴ�ҽѧ��ҽѧ������">�ٴ�ҽѧ��ҽѧ������</option>
			  <option value="��ǻҽѧ��">��ǻҽѧ��</option>
			  <option value="��ҽѧ��">��ҽѧ��</option>
			  <option value="��ҽѧ��">��ҽѧ��</option>
			  <option value="����ѧ��">����ѧ��</option>
			  <option value="ҩѧ��">ҩѧ��</option>
			  <option value="�����ѧ�빤����">�����ѧ�빤����</option>
			  <option value="���̹�����">���̹�����</option>
			  <option value="����������">����������</option>
			  <option value="ũҵ���ù�����">ũҵ���ù�����</option>
			  <option value="ͼ�鵵��ѧ��">ͼ�鵵��ѧ��</option>
		</select></td>
	  </tr>
	  <tr> 
		<td>&nbsp;ѧ��Ҫ��<b>��</b></td>
		<td><select name="enrol_degree">
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
		<td>&nbsp;��������<b>��</b></td>
		<td><select name="enrol_career">
			<option value="����" selected>����</option>
			<option value="��Уѧ��">��Уѧ��</option>
			<option value="Ӧ���ҵ��">Ӧ���ҵ��</option>
			<option value="2������">2������</option>
			<option value="2������">2������</option>
			<option value="5������">5������</option>
			<option value="10������">10������</option>
		  </select></td>
	  </tr>
	  <tr> 
		<td>&nbsp;�¹���ˮƽ����<b>��</b></td>
		<td><select name="enrol_wage">
			<option value="1000����( �����顱)">1000����( �����顱)</option>
			<option value="1000��6000( �����顱)">1000��6000( �����顱)</option>
			<option value="6000����( �����顱)">6000����( �����顱)</option>
		  </select>
		</td>
	  </tr>
	  <tr> 
		<td>&nbsp;��Ƹ����<b>��</b></td>
		<td><select name="enrol_deadline">
			<option value="һ����">һ����</option>
			<option value="������">������</option>
			<option value="������">������</option>
			<option value="һ��">һ��</option>
		</select></td>
	  </tr>
	  <tr></tr>
		<td>&nbsp;�����ص�<b>��</b></td>
		<td><input type="text" name="enrol_locality" size="40" maxlength="20"></td>
	  </tr>
	<tr>
		<td>&nbsp;����˵��<b>��</b></td>
		<td><textarea rows=10 cols=55 name="enrol_introduce"></textarea></td>
	</tr>
	<tr>
		<td  colspan="2" align="center"><input type="button" name="jijiao" value="�ύ" onClick="sub()">
		<input type="reset" name="chongtian" value="����"></td>
	</tr>
	</form>
</table>
<!--��Ƹ��Ϣ end-->