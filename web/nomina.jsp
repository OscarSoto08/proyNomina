<%-- 
    Document   : nomina
    Created on : 23/10/2024, 12:55:18 a. m.
    Author     : oscar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@page import="Modelo.*" %>
        <%
            //Se inicializan las variables
            Nomina objNomina = (Nomina) request.getAttribute("nomina");
            Empleado objEmp = objNomina.getEmpleado();
        %>
    </head>
    <body>
        <h1>Hola <%= objEmp.getNombre() %></h1>
        <h3>Tus datos son:</h3>
        <p>Salario base: <%= objEmp.getSalario() %></p>
        <i>Y el auxilio de transporte es de: <%= objNomina.getAuxilioTransporte() %></i>
        <p>Los descuentos valen: <%= objNomina.getDescuentoSalud() %></p>
        <p>El salario neto es: <%= objNomina.getNeto() %></p>
    </body>
</html>
