<!Doctype html>

<html>
	<head>
		<title>Session Id & Timeout</title>
		<%
		'Checking if already login and session is and haven't logged out 
			if(Session("user") = "shankar") then
				Response.Redirect("sessionidNtimeout2.asp")
			end if
		%>
	</head>
	
	<body>
		<div align="center">
		
		<h1>Session Id & Timeout Implementation</h1>
		<h2>User Log In</h2>
		
		<form action="sessionidNtimeout.asp" method="post">
			Username: <input type="text" name="username" required/></br>
			Password: <input type="password" name="password" required/></br>
			</br>	
			<input type="submit" value="Log In" />
		</form>
		
		<%
			
			username = Request.Form("username")
			password = Request.Form("password")
	
			
			if username="shankar" and password="khatri" then
				Session("user")=username
				Session.Timeout=2
				Response.Redirect("../Lab5/sessionidNtimeout2.asp")
			elseif username="" and password="" then
				'just to check if it is first page load and not showing incorrect username or password
			else
				Response.Write("<p style=""color:#f00""> Username OR Password is <b>Incorrect!!</b></p>")
			end if
		%>
		
		<p><!-- #include file="visitorCount.asp" --></p>
		</div>
	</body>
</html>