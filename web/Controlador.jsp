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
            LinkedList usuarios = new LinkedList<Usuario>();
            Usuario u = null;
            boolean todoBien = false;
            if (request.getParameter("rol") != null) {
                //Elegimos el rol 
                if (session.getAttribute("rol") == "admin") {
                    response.sendRedirect("Admin.jsp");
                } else {
                    response.sendRedirect("Bienvenido.jsp");
                }
            } else if (request.getParameter("login") != null) {

                usuarios = (LinkedList) session.getAttribute("usuarios");

                for (int i = 0; i < usuarios.size(); i++) {
                    u = (Usuario) usuarios.get(i);
                    if (u.getEmail() == usuario && u.getPass() == contra) {
                        todoBien = true;
                        session.setAttribute("usuario", u);
                    }
                }
                if (todoBien = true) {
                    if (u.getRango() == 1) {
                        response.sendRedirect("elegirRol.jsp");

                    } else {
                        response.sendRedirect("Bienvenido.jsp");
                    }
                } else {
                    response.sendRedirect("Denegado.jsp");
                }

            } else if (request.getParameter("registro") != null) {
                //dentro del apartado registro tenemos la opcion de que existan datos anteriores 
                //o que sea el primer usuario que se registre
                if (session.getAttribute("usuarios") == null) {
                    usuarios = new LinkedList<Usuario>();
                    u = new Usuario(usuario, contra);
                    usuarios.add(u);
                    session.setAttribute("usuarios", usuarios);
                } else {
                    //creacion del nuevo usuario, extraccion de LinkedList de la sesion  
                    //añadimos el nuevo usuario , actualizamos la sesion con la nueva LinkedList
                    u = new Usuario(usuario, contra);
                    session.getAttribute("usuarios");
                    usuarios.add(u);
                    session.setAttribute("usuarios", usuarios);
                }
            } else if (request.getParameter("olvidado") != null) {
                response.sendRedirect("Olvidada.jsp");
            }
        %>
    </body>
</html>
