<!Doctype HTML>

<html>
	<head>
		<title>Source Code Viewer</title>
		<style>
			table {
				border:1px solid black;
			}
			
			td {
				padding:5px 15px;
			}
		</style>
	</head>
	
	<body>
		<h1>Source Code Viewer</h1>
		
		<table>
			<tr>
				<th>File Name</th>
				<th>File Size</th>
				<th>Last Modified</th>
			</tr>
		
		<%
			Dim fs,folder,relativePath,path
			
			relativePath=Request.ServerVariables("PATH_INFO")
			path=Server.MapPath(relativePath)
			Set fs=Server.CreateObject("Scripting.FileSystemObject")
			Set folder=(fs.GetFile(path)).ParentFolder
			
			' Response.Write("Folder created: " & folder.DateCreated & "</br>")
			
			for each x in folder.files
				Response.Write("<tr><td><a href=""sourceCodeView.asp?name=" & x.Name & """>" & x.Name & "</a></td><td>" & x.Size & " bytes </td><td> " & x.DateLastModified & "</td></tr>")
			next
			
			set folder=nothing
			set fs=nothing
		%>
		
		</table>
	</body>
</html>