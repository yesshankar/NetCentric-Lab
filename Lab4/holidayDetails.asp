<!Doctype html>

<html>
	<head>
		<title>Holiday Destination Details</title>
	</head>
	
	<body>
		<%
		
		
		
			dim destination
			
			destination = Request.QueryString("destination")
			
			if destination = "Thailand" Then
				Response.Write("<h1> Welcome to " & destination & "</h1>")
				Response.Write("</br>Thailand, officially the Kingdom of Thailand, formerly known as Siam, is a country at the centre of the Indochina peninsula in Southeast Asia.</b>")
			elseif destination = "Hongkong" Then
				Response.Write("<h1> Welcome to " & destination & "</h1>")
				Response.Write("</br>Hong Kong, alternatively known by its initials H.K., is a former British Colony which is currently a Special Administrative Region of the People's Republic of China, enclosed by the Pearl River Delta and South China Sea. </b>")
			elseif destination = "Singapore" Then
				Response.Write("<h1> Welcome to " & destination & "</h1>")
				Response.Write("</br>Singapore, officially the Republic of Singapore, is a sovereign city-state and island country in Southeast Asia. It lies off the southern tip of the Malay Peninsula and is 137 kilometres north of the equator.</b>")
			elseif destination = "Goa" Then
				Response.Write("<h1> Welcome to " & destination & "</h1>")
				Response.Write("</br>Goa is India's smallest state by area and the fourth smallest by population. Located in West India in the region known as the Konkan, it is bounded by the state of Maharashtra to the north, and by ...</b>")
			elseif destination = "Paris" Then
				Response.Write("<h1> Welcome to " & destination & "</h1>")
				Response.Write("</br>Paris is the capital and most populous city of France. Situated on the Seine River, in the north of the country, it is at the heart of the Île-de-France region, also known as the région parisienne.</b>")
			End If
		%>
	</body>
</html>