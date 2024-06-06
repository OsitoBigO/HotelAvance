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
        <link href="css/Preguntasfrecuentes.css" rel="stylesheet" type="text/css"/>
        
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
    <div class="xc">
        <div class="container">
            <h1>Preguntas Frecuentes</h1>
            <div class="tab">
                <input type="radio" name="acc" id="acc1">
                <label for="acc1">
                    <h2>01</h2>
                    <h3>¿Qué métodos de pagos disponibles tienen?</h3>
                </label>
                <div class="content">
                    <p> En nuestro hotel, ofrecemos una amplia variedad de métodos de pago para garantizar la comodidad
                        y flexibilidad de nuestros huéspedes. Estamos comprometidos en hacer que su estadía sea lo más
                        conveniente posible en todos los aspectos, incluyendo las opciones de pago.
                        A continuación, se detallan los métodos de pago disponibles:
                    </p>
                    <ul>
                        <li><span>Efectivo:</span>Puede realizar su pago en efectivo en la recepción del hotel.</li>
                        <li><span>Tajetas de credito/debito:</span>BCP, Interbank, Scotiabank y BBVA Continental</li>
                        <li><span>Yape:</span>Si prefiere utilizar la aplicación Yape para realizar su pago, estaremos encantados de recibirlo a través de esta plataforma.</li>
                    </ul>
                </div>
            </div>
            <div class="tab">
                <input type="radio" name="acc" id="acc2">
                <label for="acc2">
                    <h2>02</h2>
                    <h3>¿Tienen plazo de pago?</h3>
                </label>
                <div class="content">
                    <p> Sí, en nuestro hotel ofrecemos opciones de plazo de pago para brindar flexibilidad a
                        nuestros huéspedes. Estas opciones de plazo pueden variar según el tipo de reserva y
                        la duración de su estadía. Al momento de hacer una reserva, nuestro equipo de reservas
                        estará encantado de proporcionarle información detallada sobre los plazos de pago disponibles
                        y las políticas específicas relacionadas con ellos. Nuestra prioridad es asegurarnos
                        de que su estadía sea cómoda y libre de preocupaciones, por lo que trabajamos para adaptarnos
                        a sus necesidades individuales en la medida de lo posible.
                    </p>
                </div>
            </div>
            <div class="tab">
                <input type="radio" name="acc" id="acc3">
                <label for="acc3">
                    <h2>03</h2>
                    <h3>¿Ofrecen estacionamiento en el hotel?</h3>
                </label>
                <div class="content">
                    <p> Lamentablemente, no contamos con estacionamiento en nuestras instalaciones. Sin embargo,
                        estamos ubicados en una zona donde puede encontrar opciones de estacionamiento público
                        cercano para su vehículo.
                    </p>
                </div>
            </div>
            <div class="tab">
                <input type="radio" name="acc" id="acc4">
                <label for="acc4">
                    <h2>04</h2>
                    <h3>¿Ofrecen habitaciones familiares o para grupos grandes?</h3>
                </label>
                <div class="content">
                    <p> Sí, disponemos de habitaciones familiares y habitaciones que pueden acomodar grupos más grandes.
                        Puede consultarnos para obtener más información sobre la capacidad y las tarifas.
                    </p>
                </div>
            </div>
        </div>
    </div>

    <br><br><br><br>
    <!-- Footer -->
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
                <form action="formularioSugerencia.jsp" method="get">
    <button type="submit" class="suggestions">Formulario de Sugerencias</button>
</form>
               
                <form action="libroReclamaciones.jsp" method="get">
    <button type="submit" class="suggestions">Libro de Reclamaciones</button>
</form>
                <form action="preguntasFrecuentes.jsp" method="get">
    <button type="submit" class="suggestions">Preguntas Frecuentes</button>
</form>
            </div>
        </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    <script src="../JS/preguntasFrecuentes.js" type="text/javascript"></script>
</body>

</html>