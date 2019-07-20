<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Proyecto_Web.Vistas.Public.login" %>

<!DOCTYPE html>

<html lang="es">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Iniciar Sesión</title>
    <link rel="icon" href="../../Plantilla/Privado/dist/img/icon/vaca.png" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="../../Plantilla/Login/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../../Plantilla/Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../../Plantilla/Login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <link rel="stylesheet" type="text/css" href="../../Plantilla/Login/vendor/animate/animate.css">
    <link rel="stylesheet" type="text/css" href="../../Plantilla/Login/css-hamburgers/hamburgers.min.css">
    <link rel="stylesheet" type="text/css" href="../../Plantilla/Login/vendor/animsition/css/animsition.min.css">
    <link rel="stylesheet" type="text/css" href="../../Plantilla/Login/vendor/select2/select2.min.css">
    <link rel="stylesheet" type="text/css" href="../../Plantilla/Login/vendor/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" type="text/css" href="../../Plantilla/Login/css/util.css">
    <link rel="stylesheet" type="text/css" href="../../Plantilla/Login/css/main.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <%--<link href="loginModal.css" type="text/css" rel="stylesheet" />--%>
    <script>
        function Confirm() {
            $('#myModal').modal('show');
            return true;
        };
        function checkTextAreaMaxLength(textBox, e, length) {
            var mLen = textBox["MaxLength"];
            if (null == mLen)
                mLen = length;

            var maxLength = parseInt(mLen);
            if (!checkSpecialKeys(e)) {
                if (textBox.value.length > maxLength - 1) {
                    if (window.event)//IE
                        e.returnValue = false;
                    else//Firefox
                        e.preventDefault();
                }
            }
        }
        function checkSpecialKeys(e) {
            if (e.keyCode != 8 && e.keyCode != 46 && e.keyCode != 37 && e.keyCode != 38 && e.keyCode != 39 && e.keyCode != 40)
                return false;
            else
                return true;
        }
    </script>
</head>
<body>
    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100">
                <div class="login100-form-title" style="background-image: url('../../Plantilla/Privado/Img/Empresa/equipo_trabajo.JPG');">
                    <span class="login100-form-title-1">INICIAR SESIÓN
                    </span>
                </div>

                <form class="login100-form validate-form" runat="server">
                    <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
                        <span class="label-input100">Correo electrónico</span>
                        <asp:TextBox runat="server" CssClass="input100" ID="correo_login" onkeyDown="checkTextAreaMaxLength(this,event,'50');" TextMode="Email" placeholder="Ejemplo2019@gmail.com" MaxLength="50" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}"></asp:TextBox>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-18" data-validate="Password is required">
                        <span class="label-input100">Contraseña</span>
                        <asp:TextBox runat="server" TextMode="Password" CssClass="input100" onkeyDown="checkTextAreaMaxLength(this,event,'50');" ID="contra_login" placeholder="••••••••••••" MaxLength="50"></asp:TextBox>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="flex-sb-m w-full p-b-30">
                        <%--             <div class="contact100-form-checkbox">
                            <input disabled="disabled" class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                            <label class="label-checkbox100" for="ckb1">
                                Recuérdame
                            </label>
                        </div>--%>

                        <div>
                            <a href="Olvidar.aspx" style="cursor: pointer;" class="txt1">¿Se te olvidó tu contraseña?
                            </a>
                        </div>
                    </div>

                    <div class="container-login100-form-btn">
                        <asp:Button runat="server" ID="In_Sesion" CssClass="login100-form-btn" Text="INICIAR SESIÓN" OnClick="In_Sesion_Click" />
                        <%--<a class="btn btn-danger" href="#" role="button" id="example3">Show alert</a>--%>
                    </div>
                    <div class="container">
                        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div style="background: #333" class="modal-header">
                                        <p style="text-align: center; color: white; font-size: 30px;" class="modal-title"><strong>¡ADVERTENCIA!</strong></p>
                                    </div>
                                    <div class="modal-body">
                                        <p style="font-size: 16px; text-align: center;"><strong><%=mjs %></strong></p>
                                    </div>
                                    <div style="text-align: center;" class="modal-footer">
                                        <button style="text-align: center; position: center; border-color: none;" data-dismiss="modal" class="btn btn-warning" type="button">ACEPTAR</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--  <div class="swal-overlay swal-overlay--show-modal" id="example3" tabindex="-1" aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" >
                        <div class="swal-modal" role="dialog" aria-modal="true">
                            <div class="swal-icon swal-icon--success">
                                <span class="swal-icon--success__line swal-icon--success__line--long"></span>
                                <span class="swal-icon--success__line swal-icon--success__line--tip"></span>

                                <div class="swal-icon--success__ring"></div>
                                <div class="swal-icon--success__hide-corners"></div>
                            </div>
                            <div class="swal-title" style=""><%=mjs %></div>
                            <div class="swal-text" style=""><%=mjs %></div>
                            <div class="swal-footer">
                                <div class="swal-button-container">
                                    <button class="swal-button swal-button--confirm" data-dismiss="modal">OK</button>
                                    <div class="swal-button__loader">
                                        <div></div>
                                        <div></div>
                                        <div></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                </form>
            </div>
        </div>
    </div>

    <script src="../../Plantilla/Login/vendor/jquery/jquery-3.2.1.min.js"></script>
    <script src="../../Plantilla/Login/vendor/animsition/js/animsition.min.js"></script>
    <script src="../../Plantilla/Login/vendor/bootstrap/js/popper.js"></script>
    <script src="../../Plantilla/Login/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="../../Plantilla/Login/select2/select2.min.js"></script>
    <script src="../../Plantilla/Login/daterangepicker/moment.min.js"></script>
    <script src="../../Plantilla/Login/vendor/daterangepicker/daterangepicker.js"></script>
    <script src="../../Plantilla/Login/vendor/countdowntime/countdowntime.js"></script>
    <script src="../../Plantilla/Login/js/main.js"></script>
    <%--    <script type="text/javascript" src="../../Plantilla/Login/js/jquery.backstretch.min.js"></script>
   <script>
        $.backstretch("../../Plantilla/Privado/images/Empresa/equipo_trabajo.JPG", {
            speed: 500

        });
    </script>--%>
    <%--    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
$(document).ready(function(){
    
	$('#example1').click(function(){
       swal("Hello world!");
    });
	
	$('#example2').click(function(){
       swal("Here's the title!", "...and here's the text!");
    });
	
	$('#example3').click(function(){
       swal("Good job!", "You clicked the button!", "success");
    });
	
	$('#example4').click(function(){
       swal({
			  title: "Are you sure?",
			  text: "Once deleted, you will not be able to recover this imaginary file!",
			  icon: "warning",
			  buttons: true,
			  dangerMode: true,
			})
			.then((willDelete) => {
			  if (willDelete) {
				swal("Poof! Your imaginary file has been deleted!", {
				  icon: "success",
				});
			  } else {
				swal("Your imaginary file is safe!");
			  }
			});
    });
	
	$('#example5').click(function(){
       swal("Write something here:", {
			  content: "input",
			})
			.then((value) => {
			  swal(`You typed: ${value}`);
			});
    });
	
	$('#example6').click(function(){
       swal({
				text: 'Search for a movie. e.g. "Titanic".',
				  content: "input",
				  button: {
					text: "Search!",
					closeModal: false,
				  },
				})
				.then(name => {
				  if (!name) throw null;
				 
				  return fetch(`https://itunes.apple.com/search?term=${name}&entity=movie`);
				})
				.then(results => {
				  return results.json();
				})
				.then(json => {
				  const movie = json.results[0];
				 
				  if (!movie) {
					return swal("No movie was found!");
				  }
				 
				  const name = movie.trackName;
				  const imageURL = movie.artworkUrl100;
				 
				  swal({
					title: "Top result:",
					text: name,
					icon: imageURL,
				  });
				})
				.catch(err => {
				  if (err) {
					swal("Oh noes!", "The AJAX request failed!", "error");
				  } else {
					swal.stopLoading();
					swal.close();
				  }
				});
    });
	
});
</script>--%>
</body>
</html>


