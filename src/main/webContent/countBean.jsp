<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Counter Page</title>
</head>
<body>
<p>On repère le beans par le nom nomBean<br>
<jsp:useBean id="nomBean" class="beans.SimpleBean" scope="session"></jsp:useBean>

<p> On accede au compteur avec la méthode getCompteur: 
<br> compteur = <%= nomBean.getCompteur() %>
<br>
On incrémente le compteur avec la méthode increment<% nomBean.increment(); %> 

<p>On peut accéder à la propriété par la balise getProperty :<br>
<jsp:getProperty name="nomBean" property="compteur" />
</body>
</html>