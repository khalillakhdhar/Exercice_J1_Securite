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

</style>
<meta charset="ISO-8859-1">
<title>Inscription</title>
</head>
<body>
<form>
<table align="center">
<tr><td colspan="2"> <h1>Inscription</h1></td></tr>
<tr><td>Nom:</td><td><input type="text" required pattern="[A-Za-z '-]{3,20}" name="nom"></td></tr>
<tr><td>Prenom:</td><td><input required type="text" pattern="[A-Za-z '-]{3,20}" name="prenom"></td></tr>
<tr><td>Email:</td><td><input type="email" name="mail"></td></tr>
<tr><td>Mot de passe:</td><td><input type="password" name="mdp"></td>
<tr><td><input type="submit" value="inscription"> </td><td><input type="reset" value="vider"></td></tr>
<tr><td colspan="2"><a href="index.jsp">Se connecter</a></td></tr>


</table>

</form>
</body>
</html>