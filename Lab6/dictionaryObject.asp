<!Doctype html>

<html>
	<head>
		<title>Dictionary Object</title>
	</head>
	
	<body>
		<h1>Dictionary Object Implementation </h1>
		
		<table border="1px">
				<tr>
					<th>Model Number</th>
					<th>Price</th>
				</tr>
		<%
			Dim dicObj
			Set dicObj=Server.CreateObject("Scripting.Dictionary")
			
			'Adding items in Dictionary
			
			dicObj.Add "SM-G900PZKASPR","$609"
			dicObj.Add "XPERIAZ2WHT","$528"
			dicObj.Add "7250511","$659"
			dicObj.Add "G3","$598"
			dicObj.Add "B00GD9R7BC","$449"
			dicObj.Add "6880631","$799"
			
			'Iterating dictionary items to display in table'
				for each x in dicObj.keys
					Response.Write("<tr><td>" & x & "</td><td>" & dicObj.Item(x) & "</td></tr>")
				next
				
			'Changing values in each key with Dimension of Screen 
			
			dicObj.Key("SM-G900PZKASPR")= "5.1 inch"
			dicObj.Key("XPERIAZ2WHT")="5.2 inch"
			dicObj.Key("7250511")= "5.1 inch"
			dicObj.Key("G3")= "5.5 inch"
			dicObj.Key("B00GD9R7BC")= "4.95 inch"
			dicObj.Key("6880631")= "6 inch"
			
			Response.Write("</br><h2>Price Value updated with Dimension of screen diagonal")
			Response.Write("</br><h2>Updated Table</h2></table><table border=""1px""><tr><th>Model Number</th><th>Diagonal</th></tr>")
			
				for each x in dicObj.keys
					Response.Write("<tr><td>" & x & "</td><td>" & dicObj.Item(x) & "</td></tr>")
				next
			
			' Samsung Galaxy S5 5.1 inch
			' Sony Xperia Z2  5.2 inch
			' Samsung Galaxy S 5 Active  5.1 inch
			' LG G3  5.5 inch
			' Google Nexus 5 4.95 inch
			' Samsung Galaxy Note 3 $799 6880631
		%>
		
		</table>
		
		
	</body>
</html>