<%-- 
    Document   : Bienvenido
    Created on : 30-sep-2020, 10:49:34
    Author     : isra9
--%>

<%@page import="datos.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% Usuario u = (Usuario) session.getAttribute("usuario"); %>
        <h2>Bienvenido <% out.println(u.getEmail()); %> </h2>
        
        <p></p>
    </body>
</html>
