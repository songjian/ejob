<!--#include file="../show.asp"-->
<script language="javascript">
<!--
	function sub_search()
	{
		form_search.submit();
	}
-->
</script>
<style type="text/css">
<!--
.unnamed1 {
	line-height: 25px;
}
-->
</style>

<table cellpadding="0" cellspacing="0" width="100%" bgcolor="#ABC6E9">
	<form name="form_search" action="subsearch_talent.asp" method="post">
	<tr>
		<td height="7"></td>
	</tr>
	<tr>
		<td class="style3" height="80" valign="top">
			&nbsp;��������<br>
			&nbsp;<%show_enrol_type()%><br>
			&nbsp;������ҵ<br>
			&nbsp;<%show_trade()%><br>
			&nbsp;����<br>
			&nbsp;<%show_nationality()%><br>
		</td>
	</tr>
	<tr>
		<td height="33">
            &nbsp;<input type="button" value="��ʾ�˲�" onClick="sub_search()">
		</td>
	</tr>
	</form>
</table>
