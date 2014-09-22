<!Doctype html>

<html>
	<head>
		<title>String Parsing </title>
	</head>
	
	<body>
		<div align="center">
			<h2>String Parsing</h2>
			
			<p>Parse the string and separate out the Name, Address and DOB and write them from the following text ="Ram Nepal;Kuleshwor Kathmandu;1st Baishak 2040"</p>
			
			<%
				fullString = "Ram Nepal;Kuleshwor Kathmandu;1st Baishak 2040"
				parsedString = Split(fullString,";")
				
				for each x in parsedString
					response.write(x & "</br>")
				next
				
				response.write("</br><h3>Without using Split function</h3>")
				
				semicolonPosition = InStr(fullString,";")
				response.write("Name: " & Mid(fullString,1,semicolonPosition-1))
				
				tempPosition = semicolonPosition
				semicolonPosition = InStr(tempPosition+1,fullString,";")
				response.write("</br>Address: " & Mid(fullString,tempPosition+1,semicolonPosition-tempPosition-1))
				
				response.write("</br>DOB: " & Mid(fullString,semicolonPosition+1))
				
			%>
			
			<p><!-- #include virtual="Lab5/visitorCount.asp" --></p>
		</div>
	
	</body>
</html>