<!Doctype html>

<html>
	<head>
		<title>Tax Calculator</title>
	</head>
	
	<body>
		<h1>Tax Calculator</h1>
		<form action="taxCalculator.asp" method="post">
			Enter Amount: <input type="text" name="amount" /></br>
			Select Tax Rate: <input type="number" name="taxrate" min="1" max="100" value="13"/> %</br>
			<input type="submit" value="Calculate Tax" />
		</form>
		
		<%
			totalAmount = 0
			amount = 0
			taxrate = 0
			
			amount = Request.Form("amount")
			if amount <>"" Then
				if IsNumeric(amount) Then
					taxrate = Request.Form("taxrate")
					totalAmount = amount + (amount * (taxrate/100))
					response.write("</br>Total amount after " & taxrate & " tax is: <h2>" & totalAmount & "</h2>")
				else
					response.write("</br><b>Sorry!!!</b> You didn't enter a number. Please input valid amount.")
				end if
			End If
			
		%>
	</body>
</html>