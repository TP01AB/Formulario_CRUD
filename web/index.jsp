<%-- 
    Document   : index
    Created on : 29-sep-2020, 12:49:20
    Author     : isra9
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./estilo.css" rel="stylesheet" type="text/css">
        <title>Inicio</title>
    </head>
    <body>
        <form name="for" action="validar.jsp" method="POST">
            <header> <h1>Bienvenido</h1></header>
            <p>Usuario</p>      <input type="text" name="user" alt="introduce tu usuario" >

            <p>Contraseña</p>      <input type="text" name="pass" alt="introduce tu usuario" >

            <input type="submit" name="registro" value="Registrarse">
            <input type="submit" name="login" value="Login">
            
            <a href="./olvidado.jsp" >He olvidado mi contraseña</a>
        </form>
    </body>
</html>
