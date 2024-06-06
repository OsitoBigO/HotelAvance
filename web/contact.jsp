
<!DOCTYPE html>
<html>

<head>
    <title>Contáctanos</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/home.css" rel="stylesheet" type="text/css"/>
    <link rel="icon" href="logoHotel.ico">
    <link href="css/contacto.css" rel="stylesheet" type="text/css"/>
    
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
        
    <br>

    <div class="container">
        <div class="form-container">
            <h1>Contactanos</h1>
            <form action="https://formsubmit.co/jakeli250103@gmail.com" method="POST" id="contactForm">
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" required>

                <label for="email">Correo Electrónico:</label>
                <input type="email" id="email" name="email" required>

                <label for="mensaje">Mensaje:</label>
                <textarea id="mensaje" name="mensaje" rows="4" required></textarea>

                <input type="submit" value="Enviar" id="enviarBtn">
                <input type="hidden" name="_captcha" value="false">
                <input type="hidden" name="_next" value="http://localhost/AvanceG4/php/contactos.php">


            </form>

            <div id="mensajeUsuario"></div>
        </div>
        <div class="map-container">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15611.880416202206!2d-77.0999801!3d-11.9765705!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105ce12a372d563%3A0x7dc0aebb55cf32e6!2sParadise%20Hotel!5e0!3m2!1sen!2spe!4v1698019707164!5m2!1sen!2spe" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </div>
    <br>

    <script src="../JS/contacto.js" type="text/javascript"></script>

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
</body>

</html>