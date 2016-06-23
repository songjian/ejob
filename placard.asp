<%@language="vbscript"%>
<!--#include file="inc/inc_top.asp"-->
 <!--#include file="inc/emptyline.asp"-->
 
 <link href="inc/css_default.css" rel="stylesheet" type="text/css">
 <style type="text/css">
<!--
.style9 {font-size: 9pt;}
-->
</style>
<table cellpadding="0" cellspacing="0" width="778">
	<tr>
		<td valign="top" align="left" width="30%" bgcolor="3169B5"><img src="inc/angle1.jpg"></td>
		<td width="40%" height="20" align="center" bgcolor="3169B5" class="style6" style="color: #FFFFFF; font-size: 9pt;">工作生涯</td>
		<td valign="top" align="right" width="30%" bgcolor="3169B5"><img src="inc/angle2.jpg"></td>
	</tr>
	<tr>
		<td colspan="3">
			 <%
			 
				dim myconn,connstr
				set myconn = Server.CreateObject("ADODB.Connection")
				connstr="DSN=job"		
				myconn.open connstr
				const adOpenStatic=3
				
				dim rs
				set rs = server.createobject("ADODB.Recordset")
				
				dim sql
				sql="select bbs_title,bbs_time from bbs order by bbs_id desc"
				
				rs.open sql,myconn,adOpenStatic
				
				rs.pagesize=15
				dim pageno
				pageno=clng(request.querystring("pageno"))
				if pageno<1 then
					pageno=1
				end if
				
			 if pageno>rs.pagecount then
				pageno=rs.pagecount
			 end if
			 
			 
			 rs.absolutepage=pageno
			 
				response.write "<table width='778'align=center>"
				 
				response.write "<tr><td align='center' width='60%' class='style9'>"
				response.write "文章列表"
				response.write "</td>"
				response.Write "<td align='center' width='40%' class='style9'>"
				response.write "发表时间"
				response.write "</td>"
				response.Write "</tr>"
			 dim i
			 for i=1 to rs.pagesize
				if rs.eof then
					exit for
				end if
				
				response.write "<tr><td width='60%' class='style9'>"
				response.write rs("bbs_title")
				response.write "</td><td  width='40%' class='style9' align='right'>"
				response.write rs("bbs_time") 
				response.write "</td></tr>"
				  
				rs.movenext 
				
			 next
				response.write "</table>"
			 
			 if pageno<>1 then
				response.write "<a href='showbbs.asp?pageno=1'>首页&nbsp;</a>"
				response.write "<a href='showbbs.asp?pageno="&pageno-1&"'>上一页&nbsp;</a>"
			 else
				response.write "首页&nbsp;"
				response.write "上一页&nbsp;"
			 end if
			 
			 if pageno<>rs.pagecount then
				response.write "<a href='showbbs.asp?pageno="&pageno+1&"'>下一页&nbsp;</a>"
				response.write "<a href='showbbs.asp?pageno="&rs.pagecount&"'>尾页&nbsp;</a>"
			 else
				response.write "下一页&nbsp;"
				response.write "尾页&nbsp;"
			 end if
			
				
			 rs.close
			 set rs = nothing
			 myconn.close
			 set myconn = nothing
			 %>
		</td>
	</tr>
</table>


 <!--#include file="inc/emptyline.asp"-->
<!--#include file="inc/inc_foot.asp"-->