<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="Modi_empresa.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.Modi_empresa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-header">
        <h3 style="margin-top: 5px"><i class="fa fa-hand-o-right"></i>INFORMACIÓN DE SU EMPRESA</h3>
    </section>
    <section class="content">

        <div class="row">
            <div class="col-md-3">

                <!-- About Me Box -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">PERFIL DE SU EMPRESA</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <strong><i class="fa fa-book margin-r-5"></i><%=Static_Nombre %></strong>
                        <p style="text-align: center; color: #333;" class="text-muted col-md-12">
                            <asp:Image runat="server" ID="IMG_EMPRESAS" ImageUrl="~/Multimedia/Imagenes/Logo sin fondo.png" Width="150" />
                            <br />
                            <strong style="color: black;">DUEÑO (A) DE LA EMPRESA:</strong><br />
                           <%=Static_Dueño %>
                        </p>

                        <hr>

                        <strong><i class="fa fa-file-text-o margin-r-5"></i>Misión</strong>

                        <p><%=Static_Mision %></p>
                        <hr>

                        <strong><i class="fa fa-file-text-o margin-r-5"></i>Visión</strong>

                        <p><%=Static_Vision %></p>
                        <hr>

                        <strong><i class="fa fa-map-marker margin-r-5"></i>Dirección</strong>

                        <p class="text-muted"><%=Static_Direccion %></p>

                        <hr>

                        <strong><i class="fa fa-pencil margin-r-5"></i>Contacto</strong>

                        <p>
                            <span style="cursor: pointer;" class="label label-danger" data-toggle="modal" data-target="#modal-default"><%=Static_Correo %></span>
                            <span style="cursor: pointer;" class="label label-success" data-toggle="modal" data-target="#modal-default"><%=Static_Numero %></span>
                        </p>

                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#Modificar" data-toggle="tab">Actualizar Información</a></li>
                        <li><a href="#Act_Logo" data-toggle="tab">Actualizar Logo</a></li>
                    </ul>
                    <div class="tab-content">


                        <div class="active tab-pane" id="Modificar">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><i class="fa fa-building"></i> NOMBRE DE SU EMPRESA</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox  runat="server"  ID="NOMBRE" CssClass="form-control style-form solo-letras" BackColor="White"></asp:TextBox>
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <label class="col-sm-3 control-label" ><i class="fa fa-university"></i> NIT</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox  TextMode="Number" runat="server"  ID="NIT" CssClass="form-control style-form" BackColor="White"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label" ><i class="fa fa-file-text-o"></i> MISIÓN</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox  runat="server"  TextMode="MultiLine" ID="MISION" CssClass="form-control no-resize style-form" Rows="2"
                                     onkeyDown="checkTextAreaMaxLength(this,event,'1000');" BackColor="White" placeholder="(Mínimo 10 caracteres, máximo 1000)"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label" ><i class="fa fa-file-text-o"></i> VISIÓN</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox runat="server" TextMode="MultiLine" ID="VISION" CssClass="form-control no-resize style-form" Rows="2"  onkeyDown="checkTextAreaMaxLength(this,event,'1000');" BackColor="White" placeholder="(Mínimo 10 caracteres, máximo 1000)" ></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label" ><i class="fa fa-map-marker"></i> DIRECCIÓN</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox  runat="server"  ID="DIRECCIÓN" CssClass="form-control style-form" BackColor="White"></asp:TextBox>
                                    </div>
                                </div>
                                  <div class="form-group">
                                    <label class="col-sm-3 control-label" ><i class="fa fa-envelope"></i> CORREO ELECTRONICO</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox  runat="server"  ID="CORREO" CssClass="form-control style-form" BackColor="White"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label" ><i class="fa fa-phone"></i> NUMERO TELÉFONICO</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox  runat="server"  ID="NUMERO" CssClass="form-control style-form" TextMode="Number" BackColor="White"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label" ><i class="fa fa-user"></i> NOMBRE DEL EMPRESARIO</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox  runat="server" ID="DUEÑO" CssClass="form-control style-form solo-letras" BackColor="White"></asp:TextBox>
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10 text-right">
                                        <asp:LinkButton ID="Btn_Actualizar" runat="server" CssClass="btn btn-primary" OnClick="Btn_Actualizar_Click"><i class="fa fa-pencil"></i>&nbsp Actualizar</asp:LinkButton>
                                        <span class="btn btn-primary" id="Btn_Activar_Form" style="display:none;"><i class="fa fa-pencil"></i>&nbsp Actualizar datos</span>
                                        <a href="Modi_empresa.aspx" class="btn btn-danger" id="Btn_Cancelar"><i class="fa fa-remove"></i>&nbsp Cancelar</a>
                                    </div>
                                 </div>
                            </div>
                        </div>

                        <div class="tab-pane" id="Act_Logo">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label for="inputName" class="col-sm-2 control-label">LOGO DE SU EMPRESA</label>

                                    <div class="col-sm-8">
                                        <asp:Image runat="server" ID="IMG_EMPRESA2" ImageUrl="~/Multimedia/Imagenes/Logo sin fondo.png" ImageAlign="Middle" Width="200" Height="100" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label style="text-align:center;" class="col-sm-2" for="exampleInputFile">File input</label>
                                    <div class="col-sm-10">
                                    <input type="file" id="exampleInputFile">
                                    <p class="help-block">Formato de la imagen permitido .png "sin fondo"</p>
                                    </div>
                                </div>
                                 <div class="form-group">
                                 <asp:LinkButton  runat="server" ID="save_imagen" CssClass="col-sm-offset-2 col-sm-2 btn btn-success" Text="ACTUALIZAR"></asp:LinkButton> 
                                 </div>
                            </div>
                        </div>
                        <!-- /.tab-pane -->
                    </div>
                    <!-- /.tab-content -->
                </div>
                <!-- /.nav-tabs-custom -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
        <div class="modal <%=modal_tipo%> fade" id="modal-perfil" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title"><%=modal_titulo%></h4>
                </div>
                <div class="modal-body">
                    <p><%=modal_mensaje%></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal" onclick="redirect(<%= modal_link %>)">Aceptar</button>
                </div>
            </div>
        </div>
    </div>
    </section>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsEndPage" runat="server">
    <script>
        function activar() {
            $(".style-form").removeClass("remove-style-form");
            $(".style-form").removeAttr("disabled");
            $("#ContentPlaceHolder1_Btn_Actualizar").show();
            $("#Btn_Cancelar").show();
            $("#Btn_Activar_Form").hide();
        }

        function reset() {
            $(".style-form, .style-form2").addClass("remove-style-form").attr("disabled", "disabled");
            $(".solo-letras").keydown(sololetras);
            $("#ContentPlaceHolder1_Btn_Actualizar").hide();
            $("#Btn_Cancelar").hide();
            $("#Btn_Activar_Form").show();
        }
             $(function () {
            $(".solo-letras").keydown(sololetras);
            $("#Btn_Activar_Form").click(activar);
            
            var today = new Date();
            var dd = today.getDate();
            var mm = today.getMonth() + 1; //January is 0!
            var yyyy = today.getFullYear();
            if (dd < 10) {
                dd = '0' + dd
            }
            if (mm < 10) {
                mm = '0' + mm
            }

            today = (yyyy-10) + '-' + mm + '-' + dd;
            past = (yyyy - 100) + '-' + mm + '-' + dd;
            document.getElementById("ContentPlaceHolder1_TB_Nacimiento").setAttribute("max", today);
            document.getElementById("ContentPlaceHolder1_TB_Nacimiento").setAttribute("min", past);
        });
       
    </script>
</asp:Content>