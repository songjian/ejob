<%if session("auth_id") = "1" then%>
<script language="javascript">
     <!--
         function valid()
           {
		          if(bsub.bbs_title.value.length<1)
		           {
			           alert("��������⣡");
			           bsub.bbs_title.focus();
			           return(false);
		            }
				  if(bsub.bbs_content.value.length<1)
		           {
			           alert("��������Ϣ����!");
			           bsub.bbs_content.focus();
			           return(false);
		            }
                   bsub.submit();			   
           }
      -->
</script> 
<table align="center" width="100%" cellpadding="0" cellspacing="0">
	 <form name="bsub" action="subenrolplacard.asp" method="post">
	 <tr>
			<td height="30" align="center" colspan="4"><font font-size="16pt" color="#CE0421"><strong>��������</strong></font></td>
	   </tr>
	 <tr>
		   <td align="right">���⣺</td>
		   <td><input type="text" name="bbs_title" ></td> 
	 </tr>
	 <tr>
		   <td align="right">��Ϣ���ݣ�</td>
		   <td><textarea  rows="10" cols="60" name="bbs_content"></textarea></td>
	 </tr>
	
	 <tr align="center">
			  <td colspan=2><input type="button" onclick="valid()" value="����">&nbsp;
			  &nbsp;<input type="reset"  value="��д"></td>
	 </tr>
	 </form>
</table> 
<%else%>
<!--#include file="nudroit.asp"-->
<%end if%>