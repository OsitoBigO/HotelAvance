<%-- 
    Document   : carrito
    Created on : 6 jun 2024, 6:08:07
    Author     : MOTITA2204
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">        
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" integrity="sha512-vKMx8UnXk60zUwyUnUPM3HbQo8QfmNx7+ltw8Pm5zLusl1XIfwcxo8DbWCqMGKaWeNxWA8yrx5v3SaVpMvR3CA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    </head>
    <body>
      <nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="layout.jsp">Hotel Paradise</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Controlador?accion=home">Cuartos</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Controlador?accion=Carrito"><i class="fas fa-cart-plus">(<label style="color: brown">${contador}</label>)</i> Carrito</a>
        </li>
                <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Selección Opciones
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Productos</a></li>
            <li><a class="dropdown-item" href="#">Formulario Sugerencias</a></li>
            <li><a class="dropdown-item" href="#">Libro de reclamaciones</a></li>
            <li><a class="dropdown-item" href="#">Preguntas frecuentes</a></li>
            <li><a class="dropdown-item" href="#">Contáctenos</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" aria-disabled="true">Link</a>
        </li>
      </ul>

        <ul>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Inicio de Sesión
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Iniciar Sesión</a></li>
            <li><a class="dropdown-item" href="#">Registrarse</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Salir de la Sesion</a></li>
          </ul>
        </li>
        </ul>
        
    </div>

  </div>
    
</nav>  
        <div class="container mt-4">
            <h3>Carrito</h3>
            <br>
            <div class="row">
            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            
                            <th>ITEM</th>
                             <th>NOMBRES</th>
                              <th>DESCRIPCION</th>
                               <th>PRECIO</th>
                                <th>CANT</th>
                                 <th>SUBTOTAL</th>
                                  <th>ACCION</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="car" items="${carrito}">
                        <TR>
                            <td>${car.getItem()}</td>
                            <td>${car.getNombres()}</td>
                            <td>${car.getDescripcion()}
                        <img src="ControladorIMAGEN?id=${car.getIdProducto()}" width="100" height="100">
                        </td>
                            <td>${car.getPrecioCompra()}</td>
                            <td>${car.getCantidad()}</td>
                            <td>${car.getSubTotal()}</td>
                            <td>
                                <a href="#">eliminar</a>
                                <a href="#">editar</a>
                               </td>
                            
                        </TR>
                        </c:forEach>
                    </tbody>
                </table>
        </div>
                <div class="col-sm-4">
                    <div class="card">
              <div class="card-header">
                  <h3>Generar Compra</h3>
                    
              </div>
              <div class="card-body">
                  <label>Subtotal:</label>
                  <input type="text" value="$.${totalPagar}0" readonly="" class="form-control">
                  <label>Descuento:</label>
                  <input type="text" readonly="" class="form-control">
                  <label>Total Pagar:</label>
                  <input type="text" value="$.${totalPagar}0" readonly="" class="form-control">
        
              </div>
              <div class="card-footer">
                  <a href="#" class="btn btn-info btn-block">Realizar Pago</a>
                  <a haref="#" class="btn btn-danger btn-block">Generar Compra</a>
       
              </div>
        </div>
    </div>
            </div>
        </div>
         <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    </body>
</html>
