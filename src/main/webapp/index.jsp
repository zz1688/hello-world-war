<html>
<head>
<title>Hello World!</title>
</head>
<body>
	<h1>Hello World!!</h1>
	<p>
		It is now
		<%= new java.util.Date() %></p>
	<p>
		You are coming from 
		<%= request.getRemoteAddr()  %></p>
	
	<p>
		You are served by <%= request.getLocalAddr()  %>[Tomcat Version : <%= application.getServerInfo() %>] </p>
	
	 
	 
</body>
