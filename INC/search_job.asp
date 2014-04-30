<!--#include file="../show.asp"-->
<table cellpadding="0" cellspacing="0" width="100%">
	<form name="myform" action="subsearch_job.asp" method="post">
	<tr>
		<td height="7"></td>
	</tr>
	<tr>
		<td height="80" bgcolor="#ABC6E9" align="left" valign="top">
			&nbsp;工作类型：<br>
			&nbsp;<%show_enrol_type()%><br>
			&nbsp;行业：<br>
			&nbsp;<%show_trade()%><br>
			&nbsp;地区:<br>
			&nbsp;<%show_nationality()%><br>
		</td>
	</tr>
	<tr>
		<td height="33">
			&nbsp;<input type="submit" value="搜索职位">
		</td>
	</tr>
	</form>
</table>