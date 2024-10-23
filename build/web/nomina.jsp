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
            Boolean desdeServlet = (Boolean) request.getAttribute("nomina");
            if(desdeServlet == null || !desdeServlet){
                response.sendRedirect("index.jsp");
                return;
            }
            //Se inicializan las variables
            Nomina objNomina = (Nomina) request.getAttribute("nomina");
            Empleado objEmp = objNomina.getEmpleado();
            double salarioNeto = objNomina.getNeto();
            double descuentoSalud = objNomina.getDescuentoSalud();
            double descuentoPension = objNomina.getDescuentoPension();
            double auxilioTransporte = objNomina.getAuxilioTransporte();
        %>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css" type="text/css"/>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    </head>
    <body>      
    
    <div class="container p-5 shadow-lg rounded-3 bg-light">
        <div class="text-center">
            <h2>Resultado Nómina</h2>
        </div>

        <!-- Tabla con los datos del empleado y la nómina -->
        <table class="table table-striped">
            <thead>
                <tr class="table-primary">
                    <th scope="col">#</th>
                    <th scope="col">Descripción</th>
                    <th scope="col">Valor</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Identificación</td>
                    <td class="text-primary-emphasis"><%= objEmp.getIdEmpleado() %></td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Nombre</td>
                    <td class="text-primary-emphasis"><%= objEmp.getNombre() %> <%= objEmp.getApellido() %></td>
                </tr>   
                <tr>
                    <th scope="row">3</th>
                    <td>Salario base</td>
                    <td class="text-primary-emphasis">$<%= String.format("%.2f", objEmp.getSalario()) %></td>
                </tr>
                <tr>
                    <th scope="row">4</th>
                    <td>Descuento Salud (4%)</td>
                    <td class="text-danger">$<%= String.format("%.2f", descuentoSalud) %></td>
                </tr>
                <tr>
                    <th scope="row">5</th>
                    <td>Descuento Pensión (4%)</td>
                    <td class="text-danger">$<%= String.format("%.2f", descuentoPension) %></td>
                </tr>
                <tr>
                    <th scope="row">6</th>
                    <td>Auxilio de Transporte</td>
                    <td class="text-success">$<%= String.format("%.2f", auxilioTransporte) %></td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>Salario Neto</td>
                    <td class="text-success">$<%= String.format("%.2f", salarioNeto) %></td>
                </tr>
            </tbody>
        </table>

        <!-- Botón para volver al formulario inicial -->
        <div class="text-center">
            <form action="index.jsp">
                <button type="submit" class="btn btn-primary">Volver</button>
            </form>
        </div>
    </div>
    </body>
</html>
