<!Doctype html>

<html>
	<head>
		<title>Page Selection</title>
	</head>
	
	<body>
		<h1>Page Selection</h1>
		<form action="pageSelection.asp" method="post">
			<h3>Select Page you want to go to and Click submit</h3> 
			<input type="radio" name="pageNo" value="1">Page One</input> </br>
			<input type="radio" name="pageNo" value="2">Page Two</input> </br>
			</br>
			<input type="submit" value="Goto Page"/>
		</form>
		
		<%
			selection = Request.Form("pageNo")
			
			if selection="1" Then
				Response.Redirect("page1.asp")
			elseif selection="2" Then
				Response.Redirect("page2.asp")
			end if
			
			'if you implement this with just if else statement than except 1 every value will go on else statement (even empty query string)
			' and will stuck in page two. Therefore seperate if is used.
		%>
		
	</body>
</html>