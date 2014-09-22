<!Doctype html>

<html>
	<head>
		<title>Welcome Page</title>
	</head>
	
	<body>

		<%
			Response.Write("Welcome <b>" & Session("user") & "</b>")
			
			Response.Write("</br></br>Your Session Id is: " & Session.SessionID)
			Response.Write("</br>And it will be time out on: " & Session.Timeout & " minutes")
		%>
		
		</br></br>
		<a href="logout.asp">Log Out</a>
		
	</body>
</html>