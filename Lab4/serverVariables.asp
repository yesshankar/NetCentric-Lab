<!Doctype html>

<html>
	<head>
		<title>Server Variables</title>
		
		<style>
			td {
				padding:5px;
			}
			th {
				background-color:#0f0;
			}
		</style>
	</head>
	
	<body>
		<h1>Server Variables</h1>
		
		<table border="1">
		<tr>
			<th>S.N.</th>
			<th>Variable</th>
			<th>Values</th>
		</tr>
			<%
				count = 1
				for each serverVariable in Request.ServerVariables
					Response.Write("<tr><td>" & count & "</td><td>" & serverVariable & "</td><td> " & Request.ServerVariables(serverVariable) & "</td></tr>")
					count = count + 1
				next
			%>
		</table>
		
		
		
	</body>
</html>