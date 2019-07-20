<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Olvidar.aspx.cs" Inherits="Proyecto_Web.Vistas.Public.Olvidar" %>

<!DOCTYPE html>

<html >
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>Se te olvidó tu contraseña</title>
    <!-- Favicon-->
    <link rel="icon" href="../../Plantilla/Privado/images/Icon/vaca.png" type="image/x-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

    <!-- Bootstrap Core Css -->
    <link href="../../Plantilla/Privado/plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Waves Effect Css -->
    <link href="../../Plantilla/Privado/plugins/node-waves/waves.css" rel="stylesheet" />

    <!-- Animation Css -->
    <link href="../../Plantilla/Privado/plugins/animate-css/animate.css" rel="stylesheet" />

    <!-- Custom Css -->
    <link href="../../Plantilla/Privado/css/style.css" rel="stylesheet"/>
</head>

<body class="fp-page">
    <div class="fp-box">
        <%--<div class="logo">
            <a href="javascript:void(0);">Admin<b>BSB</b></a>
            <small>Admin BootStrap Based - Material Design</small>
        </div>--%>
        <div class="card">
            <div class="body">
                <form id="forgot_password" method="POST">
                    <div style="font-size:17px;" class="msg">
                        Ingrese su dirección de correo electrónico que utilizó para registrarse. Le enviaremos un correo electrónico con su nombre de usuario y un 
                        enlace para restablecer su contraseña.
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">email</i>
                        </span>
                        <div class="form-line">
                            <input type="email" class="form-control" name="email" placeholder="Email" required autofocus>
                        </div>
                    </div>

                    <button class="btn btn-block btn-lg bg-pink waves-effect" type="submit">RESTABLECER MI CONTRASEÑA</button>

                    <div class="row m-t-20 m-b--5 align-center">
                        <a href="login.aspx">Iniciar Sesión!</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Jquery Core Js -->
    <script src="../../Plantilla/Privado/plugins/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core Js -->
    <script src="../../Plantilla/Privado/plugins/bootstrap/js/bootstrap.js"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="../../Plantilla/Privado/plugins/node-waves/waves.js"></script>

    <!-- Validation Plugin Js -->
    <script src="../../Plantilla/Privado/plugins/jquery-validation/jquery.validate.js"></script>

    <!-- Custom Js -->
    <script src="../../Plantilla/Privado/js/admin.js"></script>
    <script src="../../Plantilla/Privado/js/pages/examples/forgot-password.js"></script>
</body>

</html>