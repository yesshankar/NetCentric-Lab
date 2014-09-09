<!Doctype html>

<html>
	<head>
		<title>Random Greeting</title>
	</head>
	
	<body>
	<div align="center" >
		<%
		dim h
		dim randNum
		h = hour(now())
		
		response.write("<h2>Current Time is:</h2> <h1>" & time() & "</h1>")
		
		randomize
		randNum = int(rnd()*4)
		response.write("Random Number is: " & randNum & "<h2>")
		
		if h>8 then
			if randNum = 0 then
				response.write("Good Morning!")
			elseif randNum = 1 then
				response.write("Good Noon!!")
			elseif randNum = 2 then
				response.write("Good Afternoon!!!")
			else
				response.write("Good Evening!!!")
			end if
		end if
		response.write("</h2>")	
		
		%>
	</div>
	</body>
</html>