<!Doctype html>

<html>
	<head>
		<title>Square Root Finder</title>
	</head>
	
	<body>
		<h1>Square Root Finder </h1>
		
		<form action="squareRoot.asp" method="post">
			Enter the Number: <input type="number" name="num" required /></br>
			</br>	
			<input type="submit" value="Find Square Root" />
		</form>
		
		<%
			number = Request.Form("num")
			
			if(number <> null) then
				Response.Write("</br>Square Root of " & number & " is : <b>" & Sqr(number) & "</b>")
			end if
		%>
		
		
	</body>
</html>