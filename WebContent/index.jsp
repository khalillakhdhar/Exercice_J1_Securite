<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Connexion</title>
<style>
td
{
text-align:center;
 }
 .error
 {
 color:red;
  }

</style>
</head>
<body>
<form action="Auth_Servlet" method="post">
<table align="center">
<tr><td colspan="2"><h1>Bienvenu à l'application</h1>
<span class="error">
<% if(session.getAttribute("erreur")!=null)
{
	%>
<h4> <%= session.getAttribute("erreur") %></h4>
<% } %></span>
</td></tr>
<tr><td>Email:</td><td><input type="email" required name="email"></td></tr>
<tr><td>Mot de passe</td><td><input type="password" required name="mdp"></td></tr>
<tr><td  colspan="2"><input type="submit" value="se connecter">
<br>
<a href="inscrire.jsp">Inscription</a>
</td></tr>
</table>

</form>
</body>
</html>