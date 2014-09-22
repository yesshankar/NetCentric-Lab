<!Doctype html>

<html>
	<head>
		<title>Welcome Page</title>
	</head>
	
	<body>
		<h1>Welcome ! </h1>
		<%
			Response.Write("</br>" & Request.Cookies("loggedFrom"))
			
			Response.Write("</br></br>" & Application("testValue")) 'just using value from global.asa file in different pages
		%>
		
		
	</body>
</html>