<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>profile</title>
</head>
<body>
<h3><%= session.getAttribute("email") %></h3>
Connecté en tant que: 
<%=session.getAttribute("nom")+" "+session.getAttribute("prenom") %>
</body>
</html>