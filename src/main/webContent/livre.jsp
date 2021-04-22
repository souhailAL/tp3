<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<jsp:useBean id="monLivre" class="beans.livre" scope="page"></jsp:useBean>
<% String titre ="Durée de vie des javaBeans"; %>
<title><%= titre %></title>
</head>
<body bgcolor=lightblue>
<h3><%= titre %></h3>
<b>Avant modification du JavaBean</b><br>
Le titre du livre est: <jsp:getProperty property="titre" name="monLivre"/><br>
Le nom de l'auteur est: <jsp:getProperty property="auteur" name="monLivre"/>
<p>
<jsp:setProperty property="auteur" name="monLivre" value="Victor Hugo"/>
<jsp:setProperty property="titre" name="monLivre" value="les miserable"/>

<b>Après modification du JavaBean</b><br>
Le titre du livre est: <jsp:getProperty property="titre" name="monLivre"/><br>
Le nom de l'auteur est: <jsp:getProperty property="auteur" name="monLivre"/>


</body>
</html>