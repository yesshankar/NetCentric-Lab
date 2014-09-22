<!Doctype html>

<html>
	<head>
		<title>Login Page</title>
		
		<%
			if(Request.Cookies("user") = "shankar") then
				Response.Cookies("loggedFrom")="Logged In From Cookies"
				Response.Redirect("loginSuccess.asp")
			end if
		%>
	</head>
	
	<body>
		<div align="center">
		
		<h1>User Login</h1>
		<form action="loginPage.asp" method="post">
			Username: <input type="text" name="username" required/></br>
			Password: <input type="password" name="password" required/></br>
			Remember Me: <input type="checkbox" name="rememberMe" /></br>
			</br>	
			<input type="submit" value="Log In" />
		</form>
		
		<%
			username = Request.Form("username")
			password = Request.Form("password")
			remember = Request.Form("rememberMe")
	
			
			if username="shankar" and password="khatri" then
				if remember="on" then
					Response.Cookies("user")=username
					Response.Cookies("user").Expires=date()+2
				end if
				Response.Cookies("loggedFrom")="Logged In From Direct Input"
				Response.Redirect("loginSuccess.asp")
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