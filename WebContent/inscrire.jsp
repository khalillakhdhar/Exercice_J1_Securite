<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
td
{
text-align:center;
 }
 .error
 {
 color:red;
  }


td
{
text-align:center;
 }

</style>
<meta charset="ISO-8859-1">
<title>Inscription</title>
</head>
<body>
<form method="post" action="InscrireServlet">
<table align="center">
<tr><td colspan="2"> <h1>Inscription</h1>
<span class="error">
<% if(session.getAttribute("message")!=null)
{
	%>
<h4> <%= session.getAttribute("message") %></h4>
<% } %></span>
</td></tr>
<tr><td>Nom:</td><td><input type="text" required pattern="[A-Za-z '-]{3,20}" name="nom"></td></tr>
<tr><td>Prenom:</td><td><input required type="text" pattern="[A-Za-z '-]{3,20}" name="prenom"></td></tr>
<tr><td>Email:</td><td><input type="email" name="mail"></td></tr>
<tr><td>Mot de passe:</td><td><input type="password" name="mdp"></td>
<tr><td>Répétez mot de passe:</td><td><input type="password" name="rmdp"></td>

<tr><td><input type="submit" value="inscription"> </td><td><input type="reset" value="vider"></td></tr>
<tr><td colspan="2"><a href="index.jsp">Se connecter</a></td></tr>


</table>

</form>
</body>
</html>