<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Libert�</title>
</head>
<body BGCOLOR="lightblue">
<center>
<H1>Bonjour la libert�!</H1>
<jsp:useBean id="LibBean" class="beans.Democratie" scope="session"/>
<p>Passons au vote....</p>
<%LibBean.voter();%>
<p>Le nombre de voix apr�s le vote est: </p>
<jsp:getProperty name="LibBean" property="voix" />
</center>
</body>
</html>