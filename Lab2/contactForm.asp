<!Doctype html>

<html>
	<head>
		<title>Contact Form</title>
	</head>
	
	<body>
		<h1>Contact Form</h1>
		
		
		<form action="contactForm.asp" method="post">
			<table>
				<tr>
					<td>First Name:</td>
					<td><input type="text" name="fname" required /></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><input type="text" name="lname" required /></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><input type="text" name="address" required /></td>
				</tr>
				<tr>
					<td>Phone:</td>
					<td><input type="number" name="phone" /></td>
				</tr>
				<tr>
					<td>Mobile:</td>
					<td><input type="number" name="mobile" /></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input type="email" name="email" /></td>
				</tr>
				<tr>
					<td>Skype Id:</td>
					<td><input type="text" name="skypeid" /></td>
				</tr>
				<tr>
					<td>Facebook Id:</td>
					<td><input type="text" name="facebookid" /></td>
				</tr>
				<tr>
					<td>Twitter Id:</td>
					<td><input type="text" name="twitterid" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Save" /></td>
				</tr>
			</table>
		</form>
		
		<%
			dim fs,f
			
			Set fs=Server.CreateObject("Scripting.FileSystemObject")
			
			Set f=fs.OpenTextFile(Server.MapPath("contact.txt"),8,true) '8 for appending, true for create if file not exist
			
			for each item in Request.Form
				fieldName=item
				contact=contact + Request.Form(fieldName) + ";"
			next
			
			Response.Write(contact)
			f.WriteLine(contact)
			
			f.Close
			Set f=nothing
			Set fs=nothing
		%>
	</body>
</html>
