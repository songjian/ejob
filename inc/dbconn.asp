<%
	function open_conn
		
		dim myconn,connstr
		set myconn = Server.CreateObject("ADODB.Connection")
		connstr="DSN=job"
		myconn.open connstr
		set open_conn = myconn
	end function
	
	function close_object(aaa)
		aaa.close
		set aaa = nothing
	end function
%>