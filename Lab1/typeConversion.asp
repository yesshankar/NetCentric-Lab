<!Doctype html>

<html>
	<head>
		<title>Type Conversion</title>
	</head>
	
	<body>
		<div align="center">
			<h1>Type Conversion</h1>
			<p>pi = 3.14<br>pi is of 
			<%
			dim pi
			dim convertedValue
			pi = 3.14
			
			response.write(typename(pi) & " type</p></br><h3>After type conversion</h3>")
			
			convertedValue = Cint(pi)
			response.write("After converting double to Integer. PI = " & convertedValue & " Typename = " & typename(convertedValue))
			
			convertedValue = Cstr(pi)
			response.write("</br>After converting double to String. PI = " & convertedValue & " Typename = " & typename(convertedValue))
			%>
			
			<p><!-- #include virtual="Lab5/visitorCount.asp" --></p>
		</div>
	</body>
</html>