<%-- 
    Document   : index
    Created on : 22/10/2024, 11:33:09 p. m.
    Author     : oscar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proyecto Nómina</title> 
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css" type="text/css"/>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container p-5 shadow-lg rounded-3 bg-light">
        <h2 class="mb-4">Nómina Usuario</h2>
        <h4 class="mt-3">Por favor complete los siguientes datos</h4>
        <form class="mt-4" action="calcularNomina" method="POST">
            <div class="mb-3">
                <label for="id" class="form-label">Identificación</label>
                <input type="text" name="id" id="id" placeholder="Ingrese su identificación" class="form-control" required>
            </div>
            <div class="mb-3 row">
                <div class="col-md-6">
                    <label for="nombre" class="form-label">Nombres</label>
                    <input type="text" name="nombre" id="nombre" placeholder="Ingrese sus nombres" class="form-control" required>
                </div>
                <div class="col-md-6">
                    <label for="apellido" class="form-label">Apellidos</label>
                    <input type="text" name="apellido" id="apellido" placeholder="Ingrese sus apellidos" class="form-control" required>
                </div>
            </div>
            <div class="mb-3">
                <label for="dias" class="form-label">Días trabajados</label>
                <input type="number" name="dias" id="dias" placeholder="Número de días trabajados" class="form-control" max="30" required>
            </div>
            <div class="mb-3">
                <label for="salario" class="form-label">Salario</label>
                <select name="salario" id="salario" class="form-select" aria-label="Salario" required>
                    <option selected disabled>Seleccione su salario</option>
                    <option value="1">$1.300.000</option>
                    <option value="2">$1.500.000</option>
                    <option value="3">$2.000.000</option>
                    <option value="4">$2.500.000</option>
                    <option value="5">$3.000.000</option>
                </select>
            </div>
            <div id="btns" class="mb-3 d-flex justify-content-between">
                <input type="submit" value="Calcular" name="calcular" class="btn btn-primary w-100 me-2"/>
                <input type="reset" value="Limpiar" class="btn btn-secondary w-100 ms-2"/>                    
            </div>
        </form>
    </div>
</body>
</html>
