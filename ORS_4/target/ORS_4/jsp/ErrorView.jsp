<%@page import="in.co.rays.ors.controller.ORSView"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<link rel="icon" type="image/png" href="<%=ORSView.APP_CONTEXT%>/img/logo.png" sizes="16*16"/>
<title> Error Page</title>

</head>
<body>
	<form action="<%=ORSView.ERROR_CTL%>" method="get">
 	<div align="center">
 		<h1 align="center"> Ooops! Something went wrong..</h1>
 		<font style="color: red ; font-size: 25px ">
 		<b>404</b> : Requested resources is not available
 		</font>
 	<div style="width: 25% ; text-align: justify;">
 		<h3>Try :</h3>
 		<ul>
 			<li> Check the network cables , modem and router</li>
 			<li> Reconnect to network or wi-fi</li>
 		</ul>
 	</div>
 	</div>
	
		<h4 align="center">
			<font size="5px" color="black">
			<a href="<%=ORSView.WELCOME_CTL %>" style="color: silver">*Click here to Go Back*</a>			
			</font>
		</h4>
	</form>	
</body>
</html>