<!Doctype html>

<html>
	<head>
		<title>Logout Page</title>
	</head>
	
	<body>

		<%
			Session.Abandon
			Response.Write("You were Successfully Logout</br></br> ")
			
		%>
		
		<a href="sessionidNtimeout.asp">Sign In</a> Again
		
	</body>
</html>