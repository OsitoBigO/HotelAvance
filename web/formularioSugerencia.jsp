<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP - 2024</title>
                <link href="../css/home.css" rel="stylesheet" type="text/css"/>
        <link href="../css/formularioSugerencia.jsp.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">        
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" integrity="sha512-vKMx8UnXk60zUwyUnUPM3HbQo8QfmNx7+ltw8Pm5zLusl1XIfwcxo8DbWCqMGKaWeNxWA8yrx5v3SaVpMvR3CA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="css/home.css" rel="stylesheet" type="text/css"/>
        <link href="css/blog.css" rel="stylesheet" type="text/css"/>
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
                                    <li class="nav-item active">
                        <a class="nav-link" href="#blog">Blog <span class="sr-only"></span></a>
                    </li>

                    <li class="nav-item active">
                        <a class="nav-link" href="nosotros.jsp">About <span class="sr-only"></span></a>
                    </li>

                    <li class="nav-item active">
                        <a class="nav-link" href="contact.jsp">contact <span class="sr-only"></span></a>
                    </li>
                <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Selección Opciones
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Productos</a></li>
            <li><a class="dropdown-item" href="formularioSugerencia.jsp">Formulario Sugerencias</a></li>
            <li><a class="dropdown-item" href="libroReclamaciones.jsp">Libro de reclamaciones</a></li>
            <li><a class="dropdown-item" href="preguntasFrecuentes.jsp">Preguntas frecuentes</a></li>
            <li><a class="dropdown-item" href="contact.jsp">Contáctenos</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
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
       
        <h1><strong>Formulario de Sugerencias - Hotel Paradise</strong></h1>
        <p>Por favor, déjanos tus sugerencias para mejorar nuestros servicios. Tu opinión es importante para nosotros.</p>
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
          Formulario de Sugerencias
        </button>
        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Formulario de Sugerencias - Hotel Paradise</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                    <form action="<%= request.getContextPath()%>/ControladorSugerencias" method="post" class="formulario" id="formSugerencias">
                        <fieldset>
                            <legend>Formulario de Sugerencias</legend>
                            <label>Codigo</label>
                            <input type="text" name="codigo" value="${codigo}"readonly />
                            <label for="nombre">Nombre</label>
                            <input type="text" name="nombre" id="nombre"
                                   placeholder="Nombre" value="${nombre}"/>
                            <label for="correo">Correo</label>
                            <input type="text" name="correo" id="correo" value="${correo}"
                                   placeholder="Correo"/>
                            <label for="infosuge">Informacion de la Sugerencia</label>
                            <input type="text" name="infosuge" id="infosuge" value="${infosuge}"
                                   />
                            <label for="TipoSugerencia">Tipo de Sugerencia</label>
                            <div class="combo-select">
                                <select id="TipoSugerencia" name="cboSugerencia">
                                <c:forEach var="itemTipoSuge" items="${listamTipoSugerencia}">
                                    <option value="${itemTipoSuge.idtiposuge}"  ${tiposugerencia == itemTipoSuge.idtiposuge ? "selected" : ""} >${itemTipoSuge.nombre}</option>                        
                                </c:forEach>
                                </select>    
                                <i></i>
                            </div>
                            <input type="hidden" value="Registrar" name="accion"/>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                <button type="submit" class="btn btn-primary" form="formSugerencias">Registrar</button>                    
                            </div>                
                        </fieldset>

                        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
                        <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
                    </form>
                </div>         
            </div>
          </div>
        </div>
       
            <c:if test="${requestScope.mensaje != null}">
                <script>
                    toastr.options = {
                        "closeButton": true,
                        "positionClass": "toast-top-right",
                        "preventDuplicates": false,
                        "timeOut": "2000",
                        "showMethod": "fadeIn",
                        "hideMethod": "fadeOut"
                    };
                    <c:if test="${requestScope.result=='ok'}">                                            
                        toastr.success('${requestScope.mensaje}', toastr.options);                       
                    </c:if>
                    <c:if test="${requestScope.result=='error'}">                        
                        toastr.error('${requestScope.mensaje}', toastr.options);                       
                    </c:if>
                    <c:if test="${requestScope.result=='info'}">                                            
                        toastr.info('${requestScope.mensaje}', toastr.options);                       
                    </c:if>
                </script>
            </c:if>
                <%@include file="listaSugerencia.jsp"%>
   
    <br><br><br><br>
       
        <footer>
        <div class="footer-container">
            <div class="contact-info">
                <h3>CONTACTANOS:</h3>
                <p>Correo: <a href="mailto:info@hotelparadise.com">info@hotelparadise.com</a></p>
                <p>Teléfono: <a href="tel:+5116104000">+51 1 610 4000</a></p>
                <p>Dirección: Av. Canta Callao, San Martín de Porres 15112</p>
            </div>
            <div class="social-media">
                <h3>REDES SOCIALES:</h3>
                <a href="https://www.facebook.com/HotelParadise2016/?locale=es_LA">
                    <i class="fab fa-facebook"></i> Facebook
                </a>
                <a href="https://www.instagram.com/hotelparadise.peru/?hl=es">
                    <i class="fab fa-instagram"></i> Instagram
                </a>
                <h3>UBICANOS:</h3>
                <a href="https://maps.app.goo.gl/mM8aNPLB1n8vP8R8A">
                    <i class="fas fa-map-marker-alt"></i> Google Maps
                </a>
            </div>
           <div class="buttons">
                <h3>OTRAS OPCIONES:</h3>
                <a href="formularioSugerencia.jsp">
                    <button class="suggestions">Formulario de Sugerencias</button>
                </a>
                <a href="libroReclamaciones.jsp">
                    <button class="complaints">Libro de Reclamaciones</button>
                </a>
                <a href="preguntasFrecuentes.jsp">
                    <button class="faq">Preguntas Frecuentes</button>
                </a>
            </div>
        </div>
    </footer>
                <script src="../JS/blog.js" type="text/javascript"></script>    

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
  </body>
</html>
    </body>
</html>