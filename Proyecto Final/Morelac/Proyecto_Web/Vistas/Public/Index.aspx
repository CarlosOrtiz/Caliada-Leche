<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Proyecto_Web.Vistas.Public.Index" %>

<!DOCTYPE html>

<html lang="es-us">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Morelact</title>

    <link href="../../Plantilla/Privado/img/icon/vaca.png" rel="icon" />
    <link href="../../Plantilla/Privado/img/icon/vaca.png" rel="apple-touch-icon" />

    <!-- Bootstrap core CSS -->
    <link href="../../Plantilla/Publico/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />


    <!-- Custom fonts for this template -->
    <link href="../../Plantilla/Publico/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css' />

    <!-- Plugin CSS -->
    <link href="../../Plantilla/Publico/vendor/magnific-popup/magnific-popup.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="../../Plantilla/Publico/css/creative.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
        function Confirm() {
            $('#myModal').modal('show');
            return true;
        };
    </script>
</head>
<body id="page-top">
    <form id="form1" runat="server">

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="login.aspx">
                    <img src="../../Multimedia/Imagenes/Logo sin fondo.png" width="100" class="col-md-8" />
                </a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#Acerca">Acerca de</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#Servicio">Servicios</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#Producto">Productos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#Contacto">Contacto</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="login.aspx">Iniciar sesión</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <header class="masthead text-center text-white d-flex">
            <div class="container my-auto">
                <div class="row">
                    <div class="col-lg-10 mx-auto">
                        <strong style="font-size: 17px;">Empresa distribuidora de alimentos lacteos</strong>
                        <h1 class="text-uppercase">
                            <strong>MORELACT</strong>
                        </h1>
                    </div>
                    <div class="col-lg-8 mx-auto">
                        <a class="btn btn-primary btn-xl js-scroll-trigger" href="#Acerca">¡CONOCE MÁS!</a>
                    </div>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
            </div>
        </header>

        <section class="bg-primary" id="Acerca">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 mx-auto text-center section-heading text-white">
                        <h2 class="section-heading">¡Conoce nuestra principal razón de ser!</h2>
                        <hr class="light my-4">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">

                    <div class="col-sm-6 col-md-6">
                        <h3 class="section-heading text-white" style="text-align: center;">VISIÓN</h3>
                        <p class="text-faded" style="text-align: justify;"><%=Men_Vision%></p>
                    </div>

                    <div class="col-sm-6 col-md-6">
                        <h3 class="section-heading text-white" style="text-align: center;">MISIÓN</h3>
                        <p class="text-faded" style="text-align: justify;"><%=Men_Mision %></p>
                    </div>
                </div>

            </div>
        </section>

        <section id="Servicio">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading">Servicios</h2>
                        <hr class="my-4">
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="service-box mt-5 mx-auto">
                            <i class="fas fa-4x fa-hand-holding-heart text-primary mb-3 sr-icon-1"></i>
                            <h3 class="mb-3">Más Nutrientes</h3>
                            <p class="text-muted mb-0">
                                Contamos con los mejores productos lacteos,en base a nuestros nutrientres ricos en proteinas,
                                calorías, fibra, vitaminas A, C, D, B2 y B12, calcio, hierro, potasio, magnesio, grasa saturada, azúcares añadidos y sodio.
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="service-box mt-5 mx-auto">
                            <i class="fas fa-4x fa-paper-plane text-primary mb-3 sr-icon-2"></i>
                            <h3 class="mb-3">Rapida Entrega</h3>
                            <p class="text-muted mb-0">Nos caracterizamos por ser cumplidos y responsables en las entregas a nuestro clientes!</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="service-box mt-5 mx-auto">
                            <i class="fas fa-4x fa-database text-primary mb-3 sr-icon-3"></i>
                            <h3 class="mb-3">Gestor De Información</h3>
                            <p class="text-muted mb-0">Disponemos de un sistema gestor de base de datos relacional para la integridad de nuestro datos personales.</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="service-box mt-5 mx-auto">
                            <i class="fas fa-4x fa-certificate text-primary mb-3 sr-icon-4"></i>
                            <h3 class="mb-3">Calidad Certificada</h3>
                            <p class="text-muted mb-0">Productos derivados de la leche, con muy buena calidad frente a los demos productos del mercado actual.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="Producto">
            <div class="container-fluid p-0">
                <div class="row no-gutters popup-gallery">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading">¡Conoce nuestros productos!</h2>
                        <hr class="my-4">
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="../../Plantilla/Publico/img/portfolio/fullsize/1.jpg">
                            <img class="img-fluid" src="../../Plantilla/Publico/img/portfolio/thumbnails/1.jpg" alt="">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-name">
                                        Leche
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="../../Plantilla/Publico/img/portfolio/fullsize/2.jpg">
                            <img class="img-fluid" src="../../Plantilla/Publico/img/portfolio/thumbnails/2.jpg" alt="">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-name">
                                        Queso Cremoso
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="../../Plantilla/Publico/img/portfolio/fullsize/3.jpg">
                            <img class="img-fluid" src="../../Plantilla/Publico/img/portfolio/thumbnails/3.jpg" alt="">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-name">
                                        Yogurt
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="../../Plantilla/Publico/img/portfolio/fullsize/4.jpg">
                            <img class="img-fluid" src="../../Plantilla/Publico/img/portfolio/thumbnails/4.jpg" alt="">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-name">
                                        Kéfir
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="../../Plantilla/Publico/img/portfolio/fullsize/5.jpg">
                            <img class="img-fluid" src="../../Plantilla/Publico/img/portfolio/thumbnails/5.jpg" alt="">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-name">
                                        Helado
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="../../Plantilla/Publico/img/portfolio/fullsize/6.jpg">
                            <img class="img-fluid" src="../../Plantilla/Publico/img/portfolio/thumbnails/6.jpg" alt="">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-name">
                                        Mantequilla
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </section>

        <section id="Contacto">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto text-center">
                        <h2 class="section-heading">¡Mantengámonos en contacto!</h2>
                        <hr class="my-4">
                        <p class="mb-5">¿Listo para comenzar tu próximo proyecto con nosotros? ¡Eso es genial! ¡Llámenos o envíenos un correo electrónico y nos pondremos en contacto con usted lo antes posible!</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 ml-auto text-center">
                        <i class="fas fa-phone fa-3x mb-3 sr-contact-1"></i>
                        <p>+57-310-4823-632</p>
                    </div>
                    <div class="col-lg-4 mr-auto text-center">
                        <i class="fas fa-envelope fa-3x mb-3 sr-contact-2"></i>
                        <p>
                            <a href="Morelact@gmail.com">Morelact@gmail.com</a>
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <footer style="padding-top: 50px; padding-bottom: 10px;" class="bg-dark text-white">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-1 col-md-1">
                    </div>
                    <div class="col-sm-2 col-md-2">
                        <img src="../../Multimedia/Imagenes/Logo sin fondo.png" width="200" class="responsive-img" />
                    </div>
                    <div class="col-sm-1 col-md-1">
                    </div>
                    <div class="container-fluid col-sm-4">

                        <h4>Dirección</h4>
                        <p>Florencia - Caquetá - Colombia</p>
                        <p>Correo Electronico: <span class="highlighted"><a href="Morelact@gmail.com">Morelact@gmail.com</a></span></p>
                        <p><span class="strong">Telefono: </span><span class="highlighted">+57 3108621408</span> </p>

                    </div>
                    <div class="col-sm-4 container-fluid ">
                        <h4>Siguenos</h4>
                        <p>Para permanecer al dia de nuestras actividades</p>
                        <ul style="margin-bottom: 0px; text-align: center; padding-left: 0px;">
                            <li style="display: inline-block;"><a href="#!">
                                <img src="../../Plantilla/Publico/img/Icon2/Facebook.png" width="70" /></a></li>
                            <li data-toggle="modal" data-target="#exampleModal" style="display: inline-block;"><a href="#!">
                                <img src="../../Plantilla/Publico/img/Icon2/WhatsApp.png" width="70" alt="3108621408" /></a></li>
                        </ul>

                    </div>

                </div>
                <div class="container col-sm-12">
                    <br />
                    <p style="text-align: center">
                        ¿Estas interesado en ser cliente o proveedor? Presiona 
                           <a href="Registrar_Usuario.aspx" id="Link_Register"><b>aquí</b></a> para tomar tus datos y enviar la solicitud de ingreso.
                    </p>
                </div>
            </div>

        </footer>

        <section style="padding-top: 0px; padding-bottom: 0px;">
            <div class="container">
                <p style="text-align: center; margin-bottom: 0px; font-size: 13px;">
                    <strong>2019</strong> | Morelact<br />
                    Desarrollado por <strong>Alberto Ortiz Losada & Johant Vargas Vargas</strong>
                    <br />
                    Todos los derechos reservados &#169;.
                </p>
            </div>
        </section>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content" style="background-color: rgb(233,236,239); font-family: 'Open Sans';">
                    <div class="modal-header" style="padding-bottom: 0px; border-bottom: groove; text-align: center;">
                        <h5 class="modal-title" style="text-align: center; padding-right: 25%; padding-left: 25%;" id="exampleModalLabel"><strong>NUMERO TELEFÓNICO</strong></h5>
                    </div>
                    <div class="modal-body" style="padding-bottom: 0px;">
                        +57 310 4823 632
                       <p style="padding-bottom: 0px;">Respondemos 24 7</p>
                    </div>
                    <div class="modal-footer" style="text-align: center; display: block; padding-top: 2px;">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">CERRAR</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript -->
        <script src="../../Plantilla/Publico/vendor/jquery/jquery.min.js"></script>
        <script src="../../Plantilla/Publico/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="../../Plantilla/Publico/vendor/jquery-easing/jquery.easing.min.js"></script>
        <script src="../../Plantilla/Publico/vendor/scrollreveal/scrollreveal.min.js"></script>
        <script src="../../Plantilla/Publico/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

        <!-- Custom scripts for this template -->
        <script src="../../Plantilla/Publico/js/creative.min.js"></script>

    </form>
</body>
</html>


