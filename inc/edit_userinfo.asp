<!--�༭�û���Ϣ-->
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
			<td height="30" align="center" colspan="4"><font font-size="16pt" color="#CE0421"><strong>�޸ĸ�������</strong></font></td>
		</tr>
		<tr bgcolor="#F0F0F0"> 
			<td> <div align="left"><font color="red">* </font>�û���<b>��</b></div></td>
			<td colspan="3" > <input type="text"  name="user_name" size="12" maxlength="12" value="<%=user_name1%>"> </td>
		</tr>
		<tr> 
		  <td > <div align="left"><font color="red">* </font>�û�����<b>��</b></div></td>
		  <td colspan="3" > <input name="user_pass" maxlength="8" type="password" size="8" value="<%=user_pass1%>"></td>
		</tr>
		<tr> 
		  <td bgcolor="#F0F0F0" > <div align="left"><font color="red">* </font>ȷ������<b>��</b></div></td>
		  <td colspan="3" bgcolor="#F0F0F0" > <input type="password" name="user_pass2" size="8" maxlength="8" value="<%=user_pass1%>"></td>
		</tr>
		<tr> 
		  <td><div align="left"><font color="red">* </font>������</div></td>
		  <td colspan="3" > <p> 
			  <select name="user_nationality" size="1">
				<OPTION value="�й�">�й�</OPTION>
				<OPTION value="����">����</OPTION>
				<OPTION value="�ձ�">�ձ�</OPTION>
				<OPTION value="����">����</OPTION>
				<OPTION value="����">����</OPTION>
				<OPTION value="�¹�">�¹�</OPTION>
				<OPTION value="����">����</OPTION>
				<OPTION value="Ӣ��">Ӣ��</OPTION>
				<OPTION value="������">������</OPTION>
				<OPTION value="���ɱ�">���ɱ�</OPTION>
				<OPTION value="��������">��������</OPTION>
				<OPTION value="����">����</OPTION>
				<OPTION value="���">���</OPTION>
				<OPTION value="������">������</OPTION>
				<OPTION value="����">����</OPTION>
				<OPTION value="����˹">����˹</OPTION>
				<OPTION value="�ڿ���">�ڿ���</OPTION>
				<OPTION value="������">������</OPTION>
			</select></td>
		</tr>
		<tr> 
		  <td bgcolor="#F0F0F0"> <div align="left"><font color="red">* </font>��ʵ����<b>��</b></div></td>
		  <td bgcolor="#F0F0F0"> <input name="real_name" maxlength="6" size="12" value="<%=real_name1%>"></td>
		</tr>
		<tr> 
		  <td> <div align="left"><font color="red">* </font>���֤��<b>��</b></div></td>
		  <td> <input name="user_identity" size="18" maxlength="18" value="<%=user_identity1%>"></td>
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
		  <td> <select name="user_inhabit">
			  <option value="�㶫ʡ">�㶫ʡ</option>
			  <option value="����ʡ">����ʡ</option>
			  <option value="�㽭ʡ">�㽭ʡ</option>
			  <option value="����ʡ">����ʡ</option>
			  <option value="ɽ��ʡ" selected>ɽ��ʡ</option>
			  <option value="����ʡ">����ʡ</option>
			  <option value="����ʡ">����ʡ</option>
			  <option value="�Ĵ�ʡ">�Ĵ�ʡ</option>
			  <option value="����ʡ">����ʡ</option>
			  <option value="����ʡ">����ʡ</option>
			  <option value="����ʡ">����ʡ</option>
			  <option value="�ӱ�ʡ">�ӱ�ʡ</option>
			  <option value="ɽ��ʡ">ɽ��ʡ</option>
			  <option value="���ɹ�">���ɹ�</option>
			  <option value="����ʡ">����ʡ</option>
			  <option value="������">������</option>
			  <option value="����ʡ">����ʡ</option>
			  <option value="����ʡ">����ʡ</option>
			  <option value="������">������</option>
			  <option value="����ʡ">����ʡ</option>
			  <option value="����ʡ">����ʡ</option>
			  <option value="����ʡ">����ʡ</option>
			  <option value="������">������</option>
			  <option value="����ʡ">����ʡ</option>
			  <option value="������">������</option>
			  <option value="�ຣʡ">�ຣʡ</option>
			  <option value="�½���">�½���</option>
			  <option value="�����">�����</option>
			  <option value="������">������</option>
			  <option value="̨��ʡ">̨��ʡ</option>
			  <option value="����">����</option>
			</select>
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
		  <td> <input name="user_birthday" maxlength="4" size="4" value="<%=user_birthday1%>">(��ע���ʽ���磺1987)</td>
		</tr>
		<tr> 
		  <td bgcolor="#F0F0F0"><div align="left"><font color="red">* </font>ϣ�����µ���ҵ��</div></td>
		  <td> <p> 
			  <select name="user_trade" size="1">
				<OPTION value="�����Ӳ������">�����Ӳ������</OPTION>
				<OPTION value="������������">������������</OPTION>
				<OPTION value="������/����/ͨѶ����">������/����/ͨѶ����</OPTION>
				<OPTION value="ƽ����Ƽ���">ƽ����Ƽ���</OPTION>
				<OPTION value="��ҳ/��������">��ҳ/��������</OPTION>
				<OPTION value="��ҵ��Ƽ���">��ҵ��Ƽ���</OPTION>
				<OPTION value="����/�Ǳ�/��缼��">����/�Ǳ�/��缼��</OPTION>
				<OPTION value="���ߵ�/�뵼�弼��">���ߵ�/�뵼�弼��</OPTION>
				<OPTION value="��е/���Ӽ���">��е/���Ӽ���</OPTION>
				<OPTION value="����/����/��Դ����">����/����/��Դ����</OPTION>
				<OPTION value="ұ����">ұ����</OPTION>
				<OPTION value="��ѧ/��������">��ѧ/��������</OPTION>
				<OPTION value="����/��ҩ����">����/��ҩ����</OPTION>
				<OPTION value="ũ��/ˮ��/԰�ռ���">ũ��/ˮ��/԰�ռ���</OPTION>
				<OPTION value="��ҵ/������ֳ����">��ҵ/������ֳ����</OPTION>
				<OPTION value="ʳƷ/����/�̲ݼӹ�����">ʳƷ/����/�̲ݼӹ�����</OPTION>
				<OPTION value="�ɿ�/����/������">�ɿ�/����/������</OPTION>
				<OPTION value="���/·��/��������">���/·��/��������</OPTION>
				<OPTION value="����/ůͨ�յ�/����ˮ����">����/ůͨ�յ�/����ˮ����</OPTION>
				<OPTION value="װ��/��ҵ����">װ��/��ҵ����</OPTION>
				<OPTION value="��֯/��װ/Ƥ�＼��">��֯/��װ/Ƥ�＼��</OPTION>
				<OPTION value="��ֽ/ӡˢ/��װ����">��ֽ/ӡˢ/��װ����</OPTION>
				<OPTION value="ѹ��/����/����/�մɼ���">ѹ��/����/����/�մɼ���</OPTION>
				<OPTION value="�鱦����/���/�Ҿ߼���">�鱦����/���/�Ҿ߼���</OPTION>
				<OPTION value="��������/��ͨ����">��������/��ͨ����</OPTION>
				<OPTION value="�߲����/��ͷ">�߲����/��ͷ</OPTION>
				<OPTION value="�в����/���ž���">�в����/���ž���</OPTION>
				<OPTION value="������/ҵ�����">������/ҵ�����</OPTION>
				<OPTION value="�г��߻�/�İ�">�г��߻�/�İ�</OPTION>
				<OPTION value="ҵ��Ա/ӪҵԱ/�ۺ����">ҵ��Ա/ӪҵԱ/�ۺ����</OPTION>
				<OPTION value="����ó��/����/����">����ó��/����/����</OPTION>
				<OPTION value="����/���/���">����/���/���</OPTION>
				<OPTION value="����/����/ͳ��">����/����/ͳ��</OPTION>
				<OPTION value="������Դ">������Դ</OPTION>
				<OPTION value="����/����">����/����</OPTION>
				<OPTION value="��Ա/ǰ̨/����">��Ա/ǰ̨/����</OPTION>
				<OPTION value="˾��">˾��</OPTION>
				<OPTION value="��ʦ/���ɹ���">��ʦ/���ɹ���</OPTION>
				<OPTION value="�н�/����/��ѯ/�������">�н�/����/��ѯ/�������</OPTION>
				<OPTION value="����/����/����/������ϵ">����/����/����/������ϵ</OPTION>
				<OPTION value="����/����">����/����</OPTION>
				<OPTION value="�㲥/��Ӱ/����">�㲥/��Ӱ/����</OPTION>
				<OPTION value="���">���</OPTION>
				<OPTION value="����/����/֤ȯ/Ͷ��">����/����/֤ȯ/Ͷ��</OPTION>
				<OPTION value="����/����/����/��·">����/����/����/��·</OPTION>
				<OPTION value="��ѧ�о�">��ѧ�о�</OPTION>
				<OPTION value="����/�鱨/����">����/�鱨/����</OPTION>
				<OPTION value="��ѧ��ʦ">��ѧ��ʦ</OPTION>
				<OPTION value="��ѧ/��У��ʦ">��ѧ/��У��ʦ</OPTION>
				<OPTION value="ҽ��/ҩƷ/����">ҽ��/ҩƷ/����</OPTION>
				<OPTION value="ҽ��/ҩƷ/����">ҽ��/ҩƷ/����</OPTION>
				<OPTION value="�Ļ�/����/����/����/����">�Ļ�/����/����/����/����</OPTION>
				<OPTION value="����/����/����/��������">����/����/����/��������</OPTION>
				<OPTION value="����">����</OPTION>
			  </select>
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
		  <td> <input name="user_liking" size="40" maxlength="20" value="<%=user_liking1%>"></td>
		</tr>
		<tr> 
		  <td> <div align="left"><font color="red">* </font>δ���ƻ�<b>��</b></div></td>
		  <td> <input name="user_plan" size="40" maxlength="20" value="<%=user_plan1%>"></td>
		</tr>
		<tr bgcolor="#F0F0F0"> 
		  <td><div align="left">&nbsp;&nbsp;���ڹ���״̬<b>��</b></div></td>
		  <td> <select name="user_habitus">
			  <option value="ȫְ" selected>ȫְ</option>
			  <option value="��ְ">��ְ</option>
			  <option value="��ʱ">��ʱ</option>
		  </select></td>
		</tr>
		<tr> 
		  <td > <div align="left"><font color="red">* </font>��ϵ�绰<b>��</b></div></td>
		  <td> <input name="user_phone" size="21" maxlength="25" value="<%=user_phone1%>"></td>
		</tr>
		<tr> 
		  <td bgcolor="#F0F0F0" > <div align="left">&nbsp;&nbsp;�ƶ��绰<b>��</b></div></td>
		  <td bgcolor="#F0F0F0" > <input name="user_move" size="20" maxlength="20" value="<%=user_move1%>"></td>
		</tr>
		<tr> 
		  <td > <div align="left"><font color="red">* </font>E-mail<b>��</b></div></td>
		  <td> <input name="user_email" size="20" maxlength="30" value="<%=user_email1%>"> 
		  </td>
		</tr>
		<tr> 
		  <td bgcolor="#F0F0F0"> <div align="left"><font color="red">* </font>��ϵ��ַ<b>��</b></div></td>
		  <td bgcolor="#F0F0F0"> <input name="user_address" maxlength="20" size="40" value="<%=user_address1%>"></td>
		</tr>
		<tr>
			<td  colspan="2" align="center"><input type="submit" name="queding" value="�޸�" onClick="haha()">
			<input type="reset" name="chongtian" value="���"></td>
		</tr>
	</form>
</table>
<!--�༭�û���Ϣ end-->