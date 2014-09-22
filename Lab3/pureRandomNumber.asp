<!Doctype html>

<html>
	<head>
		<title>Pure Random Number</title>
	</head>
	
	<body>
		<h1>Pure Random Number between 100 and 200 having odd only</h1>
		<%
			dim randNum
			randomize

			randNum=int((rnd()*100)+100)
			
			do until (randNum Mod 2) <> 0
				randNum=int((rnd()*100)+100)
			loop
			
			Response.Write("Random Number is: <b>" & randNum & "</b>")

		%>
		
		
	</body>
</html>