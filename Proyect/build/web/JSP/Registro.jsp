<%-- 
    Document   : Registro
    Created on : 4/10/2018, 08:27:35 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String usuario= request.getParameter("usuario");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <jsp:useBean id="Usuario" scope="page" class="mx.edu.ipn.cecyt9.shouldensolve.model.Usuario" >
        Instrucciones
        </jsp:useBean>
        ${Usuario.setNombre("<%usuario%>")}
        ${Usuario.nombre}
        <INPUT type="text" name=usuario">
    </body>
</html>



