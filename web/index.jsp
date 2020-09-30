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
        <div>
        <form name="for" action="Controlador.jsp" method="POST">

            <h1>Bienvenido</h1>
            <table> 
                <tr><td>Usuario:</td><td> <input type="text" name="user" alt="introduce tu usuario" ></td></tr>
                <tr><td>Contraseña:</td><td> <input type="text" name="pass" alt="introduce tu usuario" ></td></tr>
            </table>

            <br><br>
            <input type="submit" name="registro" value="Registrarse">
            <input type="submit" name="login" value="Login">
            <br> 
            <input type="submit" alt="He olvidado la contraseña" value="He olvidado mi contraseña" id="enlace" >

        </form>
            </div>
    </body>
</html>
