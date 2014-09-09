<!Doctype html>

<html>
	<head>
		<title>Array Implementation</title>
	</head>
	
	<body>
		<div align="center">
		<h1>Array Implementation</h1>
		
		<%
		dim fruits()
		redim fruits(4)
		fruits(0) = "Apple"
		fruits(1) = "Banana"
		fruits(2) = "Cherry"
		fruits(3) = "Dates"
		fruits(4) = "Orange"
		
		for each i in fruits
			response.write(i & "<br>")
		next
		response.write("<h3>After reDim Preserve.</h3>")
		
		redim preserve fruits(5)
		fruits(5) = "Added Fruit"
		
		for each i in fruits
			response.write(i & "<br>")
		next
		%>
		</div>
	</body>
</html>