<!Doctype html>

<html>
	<head>
		<title>Dynamic Array</title>
	</head>
	
	<body>
		<h1>Dynamic Array to collect Name and Phone of friends </h1>
		<%
			dim records()
			redim records(4)
			
			records(0)="Anil Shrestha, 9834873473"
			records(1)="Sameer Shrestha, 9837847845"
			records(2)="Arun Amatya, 9839347497"
			records(3)="Pratibh Acharya, 9836518396"
			records(4)="Shankar Koirala, 9876346103"
			
			Response.Write("<ul>")
			
			for each x in records
				Response.Write("<li>" & x & "</li>")
			next
			
			Response.Write("</ul>")
			
			'Increasing the size of array to hold 5 more contacts
			
			redim preserve records(9)
			
			Response.Write("</br><h2>After adding more friends</h2>")
			
			records(5)="Sixth Friend, 66666666666"
			records(6)="Seventh Friend, 77777777777"
			records(7)="Eighth Friend, 8888888888888"
			records(8)="Nineth Friend, 9999999999"
			records(9)="Tenth Friend, 1010101010"
			
			Response.Write("<ul>")
			
			for each x in records
				Response.Write("<li>" & x & "</li>")
			next
			
			Response.Write("</ul>")
			
			Erase records 'Destroy the array
			
		%>
		
		
	</body>
</html>