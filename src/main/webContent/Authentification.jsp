<jsp:useBean id="authentificationUtilisateur" 
class="beans.Authentification" scope="page"></jsp:useBean>
<%! String titre ="Tentative d'authentification"; %>
<html>
<head>
<title><%= titre %></title>
</head>
<body bgcolor="lightblue">

<h3><%= titre %></h3>
<%
String loginSaisi ="USER1";
String motDePasseSaisi="PASS1";
%>
<jsp:setProperty property="login" name="authentificationUtilisateur" 
value="<%=loginSaisi %>"/>
<jsp:setProperty property="password" name="authentificationUtilisateur" 
value="<%=motDePasseSaisi %>"/>

<b>Vous avez saisi les informations suivantes:</b><p>
Nom d'utilisateur: <jsp:getProperty property="login" name="authentificationUtilisateur"/><br>
Mot de passe: <jsp:getProperty property="password" name="authentificationUtilisateur"/><br>
<p>
<%
boolean valide=authentificationUtilisateur.Valide();
if (valide){
%>
<font color="green"><b>Ces paramètres sont correctes.</b></font>
<% 	
}else {
%>
<font color="red"><b>Cette authentification est invalide.</b></font>
<% 	
}
%>

</body>
</html>