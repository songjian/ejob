<%@ language="vbscript"%>
<%
		dim  bbs_title
        dim  bbs_content 	  
	    dim  bbs_time
	    
		bbs_title=request.form("bbs_title")
	    bbs_content=request.form("bbs_content")
	    bbs_time=now
		
		dim myconn, connstr	
		set myconn = server.createObject("ADODB.Connection")
		connstr = "DSN=job"
		myconn.open connstr
		
		
		sql = "insert into bbs values('"&bbs_title&"','"&bbs_content&"','"&session("user_id")&"','"&bbs_time&"',1)"
		myconn.execute sql
		response.Redirect "ad_index.asp?working=del_b"
			
		myconn.close		
		set myconn = nothing
%>