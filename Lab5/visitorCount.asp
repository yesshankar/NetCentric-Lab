<%
	Application("visitor")=Application("visitor") + 1
	Response.Write("</br></br>Total Visitor for this site counts: " & Application("visitor") )
%>