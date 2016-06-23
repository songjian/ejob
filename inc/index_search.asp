<style type="text/css">
<!--
.style5 {font-size: 16pt; font-family: "华文中宋"; color: #3169B5;}
.style6 {color: #3169B5;font-size:9pt;}
a.s:link{
	color: #3169B5;
}
a.s:visited{
	color: #3169B5;
}
a.s:hover{
	color: #3169B5;
}
a.s:active{
	color: #3169B5;
}
-->
</style>
<table cellpadding="0" cellspacing="0" bgcolor="#ABC6E9" width="100%">
	<tr>
		<td class="style5" height="45">&nbsp;搜索</td>
	</tr>
	<tr>
		<td class="style6">&nbsp;<a href="index.asp" class="s">搜索职位</a>&nbsp;<a href="index.asp?index_search=search_talent" class="s">搜索人才</a></td>
	</tr>
	<tr>
		<td>
		<%
			dim index_search
			index_search = request.QueryString("index_search")
		%>
		<%if index_search = "search_talent" then%> <!--搜索人才-->
			<!--#include file="search_talent.asp"-->
		<%else%> <!--搜索职位-->
			<!--#include file="search_job.asp"-->
		<%end if%>
		</td>
	</tr>
</table>