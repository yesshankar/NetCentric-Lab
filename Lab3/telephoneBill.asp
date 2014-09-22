<!Doctype html>

<html>
	<head>
		<title>Telephone Bill</title>
	</head>
	
	<body>
		<h1>Telephone Bill Calculator </h1>
		<%
			sub calculateBill(calls)
				dim amount,moderate,extra
				
				if calls > 200 then
					extra = calls - 200
					amount = 190 + (125 * 1.20) + (extra * 1.50)		 
				elseif calls > 75 then
					moderate = calls - 75
					amount = 190 + (moderate * 1.20)
				else
					amount = 190
				end if
				
				amount = amount + (amount * 0.05) 'addin service charge
				Response.Write(amount)
			end sub
		%>
		
		<h2>Here is the List of Telephone Bill amounts for different calls</h2>
		<p>Telephone Bill for 50 calls per month is : <b><% call calculateBill(50) %></b></p>
		<p>Telephone Bill for 100 calls per month is : <b><% call calculateBill(100) %></b></p>
		<p>Telephone Bill for 250 calls per month is : <b><% call calculateBill(250) %></b></p>
		
		
		
	</body>
</html>