<!Doctype html>

<html>
	<head>
		<title>Palindrome Check</title>
	</head>
	
	<body>
		<h1>Palindrome Check</h1>
		
		<form action="palindromeCheck.asp" method="post">
			Enter the string to chek for palindrome:</br> <input type="text" name="inputString" required /></br>
			</br>	
			<input type="submit" value="Check" />
		</form>
		<%
			dim orgString, revString
			
			orgString = Request.Form("inputString")
			revString = StrReverse(orgString)
			
			if(orgString <> "") then
				if(StrComp(orgString,revString)= 0) then
					Response.Write("</br>String is Palindrome!!</br>")
				else
					Response.Write("</br>String is NOT Palindrome")
				end if
			end if
		%>
		
		
	</body>
</html>