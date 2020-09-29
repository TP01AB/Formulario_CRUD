<%-- 
    Document   : Controlador
    Created on : 29-sep-2020, 13:40:05
    Author     : isra9
--%>

<%@page import="java.util.LinkedList"%>
<%@page import="datos.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String usuario = request.getParameter("user");
            String contra = request.getParameter("pass");
            if (request.getParameter("login") != null) {

                LinkedList<Usuario> usuarios ()=(LinkedList
                ) session.getAttribute("usuarios");
                for (int i = 0; i < usuarios.size(); i++) {
                    usuarios.get(i);
                }
            } else if (request.getParameter("registro") != null) {
                if (session.getAttribute("usuarios") == null) {
                    LinkedList usuarios = new LinkedList<Usuario>();
                    Usuario u = new Usuario(usuario, contra);
                    usuarios.add(u);
                    session.setAttribute("usuarios", usuarios);
                } else {
                    //creacion del nuevo usuario, extraccion de LinkedList de la sesion  
                    //añadimos el nuevo usuario , actualizamos la sesion con la nueva LinkedList
                    Usuario u = new Usuario(usuario, contra);
                    session.getAttribute("usuarios");
                    usuarios.add(u);
                    session.setAttribute("usuarios", usuarios);
                }

            } else {

            }


        %>
    </body>
</html>
