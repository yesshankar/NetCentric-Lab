<!Doctype HTML>

<html>
	<head>
		<title>View Source Code</title>
	</head>
	
	<body>
		<h2>Source Code for 
		
		<%
			dim fs,path,relativePath,ts,folder
			name=Request.QueryString("name")
			Response.Write("<font size=""16"" color=""red"" >" & name & "</font> page is: </h2>")
			
			relativePath=Request.ServerVariables("PATH_INFO")
			path=Server.MapPath(relativePath)
			
			
			Set fs=Server.CreateObject("Scripting.FileSystemObject")
			Set folder=(fs.GetFile(path)).ParentFolder
			
			for each x in folder.files
				if x.Name=name Then
					Set ts=x.OpenAsTextStream(1,-2)
					
					do while ts.AtEndOfStream<>true
						Response.Write(Server.HTMLEncode(ts.ReadLine) & "</br>")
					loop
				end if
			next
			
			ts.Close
			set ts=nothing
			set f=nothing
			set fs=nothing		
			
		%>
	</body>
</html>