<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="ingresar_proveedor.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.ingresar_proveedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- daterange picker -->
    <link rel="stylesheet" href="../../../Plantilla/Privado/bower_components/bootstrap-daterangepicker/daterangepicker.css">
    <!-- bootstrap datepicker -->
    <link rel="stylesheet" href="../../../Plantilla/Privado/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
    <!-- iCheck for checkboxes and radio inputs -->
    <link rel="stylesheet" href="../../../Plantilla/Privado/plugins/iCheck/all.css">
    <!-- Bootstrap Color Picker -->
    <link rel="stylesheet" href="../../../Plantilla/Privado/bower_components/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css">
    <!-- Bootstrap time Picker -->
    <link rel="stylesheet" href="../../../Plantilla/Privado/plugins/timepicker/bootstrap-timepicker.min.css">
    <!-- Select2 -->
    <link rel="stylesheet" href="../../../Plantilla/Privado/bower_components/select2/dist/css/select2.min.css">
    <link rel="stylesheet" href="../../../Plantilla/Privado/plugins/pace/pace.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="content">
        <div class="row">
            <div class="col-md-3">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">NUEVO PROVEEDOR</h3>
                    </div>
                    <div class="box-body">
                        <p style="text-align: center; color: #333;" class="text-muted col-md-12">
                            <asp:Image runat="server" ID="IMG_Persona" ImageUrl="~/Plantilla/Privado/Img/User/Gerente.png" Width="100" Height="100" CssClass="img-circle" />
                        </p>
                        <hr />
                        <div class="form-group">
                            <div style="text-align: center;" class="col-sm-12 box-header with-border">
                                <a style="cursor: pointer;"><i style="color: #444;" class="fa fa-edit"></i><strong style="color: #333;">MODIFICAR MENÚ DEL PROVEEDOR</strong></a>
                            </div>
                            <br />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#Modificar" data-toggle="tab">Registrar Información</a></li>
                    <%--    <li><a href="#Modificar2" data-toggle="tab">Opcional</a></li>--%>
                        <li><a href="#Act_Logo" data-toggle="tab">Registrar Finca</a></li>
                        <li><a href="#Leche" data-toggle="tab">Registrar Leche</a></li>
                    </ul>
                    <div class="tab-content" id="ajax">

                        <div class="active tab-pane" id="Modificar">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">PRIMER NOMBRE</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox runat="server" ID="nom1" required CssClass="form-control style-form solo-letras" autocomplete="off" MaxLength="10" onkeyDown="checkTextAreaMaxLength(this,event,'10');" oncopy="return false" onpaste="return false" oncut="return false" placeholder="PEPITO" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">PRIMER APELLIDO</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox runat="server" ID="ape1" required CssClass="form-control style-form solo-letras" autocomplete="off" placeholder="PEREZ" MaxLength="10" onkeyDown="checkTextAreaMaxLength(this,event,'10');" oncopy="return false" onpaste="return false" oncut="return false" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">CÉDULA</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox runat="server" ID="ced" TextMode="Number" MaxLength="10" onKeyPress="return soloNumeros(event)" autocomplete="off" onkeyDown="checkTextAreaMaxLength(this,event,'10');" placeholder="1117552768" oncopy="return false" onpaste="return false" oncut="return false" CssClass="form-control style-form " required></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">NUMERO TELÉFONICO</label>
                                    <div style="padding-left: 2%; padding-right: 3%;" class="input-group col-sm-9">
                                        <div class="input-group-addon">
                                            <i class="fa fa-phone"></i>
                                        </div>
                                        <asp:TextBox ID="Celular" required CssClass="form-control style-form" runat="server" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" oncopy="return false" onpaste="return false" oncut="return false"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">CORREO ELECTRONICO</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="correo" runat="server" required TextMode="email" placeholder="Ejemplogmail.com" MaxLength="50" autocomplete="off" onkeyDown="checkTextAreaMaxLength(this,event,'50');" oncopy="return false" onpaste="return false" oncut="return false" CssClass="form-control style-form "></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">CONTRASEÑA</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="contrasena" runat="server" required TextMode="password" placeholder="Ingrese una contraseña" autocomplete="off" onkeyDown="checkTextAreaMaxLength(this,event,'50');" oncopy="return false" onpaste="return false" oncut="return false" CssClass="form-control style-form"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label ">SEXO</label>
                                    <div class="col-sm-9">
                                        <asp:DropDownList ID="DDL_Sexo" CssClass="form-control select2 select2-hidden-accessible style-form solo-letras" Style="width: 100%; text-align: center;" TabIndex="-1" aria-hidden="true" AppendDataBoundItems="true" runat="server" BackColor="White" required>
                                            <asp:ListItem Value="M" Text="Masculino"></asp:ListItem>
                                            <asp:ListItem Value="F" Text="Femenino"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div style="text-align: right;" class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10 text-right">
                                        <asp:LinkButton ID="Btn_Save1" runat="server" CssClass="btn btn-success" OnClick="Btn_Save1_Click"><i class="fa fa-save "></i>&nbsp Guardar Datos</asp:LinkButton>
                                        <asp:LinkButton ID="Btn_Cerrar1" runat="server" CssClass="btn btn-danger" OnClick="Btn_Cerrar1_Click"><i class="fa fa-remove"></i>&nbsp Cacelar</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%--<div class="tab-pane" id="Modificar2">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">SEGUNDO NOMBRE</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox runat="server" ID="nom2" CssClass="form-control style-form solo-letras" placeholder="JUAN" MaxLength="10" onkeyDown="checkTextAreaMaxLength(this,event,'10');" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">SEGUNDO APELLIDO</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox runat="server" ID="ape2" CssClass="form-control style-form solo-letras" placeholder="CASTRO" MaxLength="10" onkeyDown="checkTextAreaMaxLength(this,event,'10');" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">DIRECCIÓN</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="Direc" runat="server" placeholder="CAQUETA-FLORENCIA-ATALAYA CALLE 20" MaxLength="40" onkeyDown="checkTextAreaMaxLength(this,event,'40');" CssClass="form-control style-form"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">FECHA DE NACIMIENTO</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="Fecha_Nacimiento" runat="server" TextMode="Date" CssClass="form-control pull-right"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">BIOGRAFIA</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="Detalle" runat="server" Rows="4" onkeyDown="checkTextAreaMaxLength(this,event,'240');" placeholder="Aqui puedes escribir una breve descripció" CssClass="form-control style-form" TextMode="MultiLine"></asp:TextBox>

                                        <span class="has-error"><small class="help-block">0 caracteres</small> </span>
                                    </div>
                                </div>
                                <div style="text-align: right;" class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10 text-right">
                                        <asp:LinkButton ID="Btn_Save1" runat="server" CssClass="btn btn-success" OnClick="Btn_Save1_Click"><i class="fa fa-save "></i>&nbsp Guardar Datos</asp:LinkButton>
                                        <asp:LinkButton ID="Btn_Cerrar1" runat="server" CssClass="btn btn-danger" OnClick="Btn_Cerrar1_Click"><i class="fa fa-remove"></i>&nbsp Cacelar</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>--%>

                        <div class="tab-pane" id="Act_Logo">
                            <div class="form-horizontal">
                                <div class="box-body">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">NOMBRE DE SU FINCA</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox runat="server" MaxLength="45" ID="nom_finca" CssClass="form-control style-form solo-letras" placeholder="LA GLORIA" autocomplete="off" onkeyDown="checkTextAreaMaxLength(this,event,'45');" oncopy="return false" onpaste="return false" oncut="return false" pattern="[A-Za-z]+" required></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">UBICACIÓN DE SU FINCA</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox runat="server" MaxLength="45" ID="ubi_finca" CssClass="form-control style-form solo-letras" placeholder="LA MONTAÑITA" autocomplete="off" onkeyDown="checkTextAreaMaxLength(this,event,'45');" oncopy="return false" onpaste="return false" oncut="return false" pattern="[A-Za-z]+" required></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="box-body">
                                            <label class="col-sm-3 control-label">¿CUANTAS HECTÁREAS CUENTA SU FINCA?</label>
                                            <div style="padding-left: 2%; padding-right: 3%;" class="input-group col-sm-9">
                                                <asp:TextBox runat="server" ID="hectarias" onKeyPress="return soloNumeros(event)" TextMode="Number" onkeyDown="checkTextAreaMaxLength(this,event,'10');" MaxLength="45" CssClass="form-control style-form" placeholder=" 34.5" required></asp:TextBox>
                                                <span class="input-group-addon">ha</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="box-body">
                                            <label class="col-sm-3 control-label">¿CUAL ES SU CAPACIDAD POR SEMANA PARA PRODUCCIR LECHE?</label>
                                            <div style="padding-left: 2%; padding-right: 3%;" class="input-group col-sm-9">
                                                <asp:TextBox runat="server" ID="cap_leche" MaxLength="45" onKeyPress="return soloNumeros(event)" TextMode="Number" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" placeholder="100" required></asp:TextBox>
                                                <span class="input-group-addon">Litros</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label ">PROVEEDOR</label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList ID="Asig_Persona" Style="width: 100%;" CssClass="form-control select2 select2-hidden-accessible style-form solo-letras" TabIndex="-1" aria-hidden="true" AppendDataBoundItems="true" runat="server" BackColor="White" required>
                                                <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div style="text-align: right;" class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10 text-right">
                                            <asp:LinkButton ID="Btn_Finca" runat="server" CssClass="btn btn-success" OnClick="Save_Finca_Click"><i class="fa fa-save"></i>&nbsp Guardar Datos</asp:LinkButton>
                                            <asp:LinkButton ID="Remove_Finca" runat="server" CssClass="btn btn-danger" OnClick="Remove_Finca_Click"><i class="fa fa-remove"></i>&nbsp Cacelar</asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane" id="Leche">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <div class="box-body">
                                        <label class="col-sm-3 control-label">CANTIDAD DE LECHE DEL PROVEEDOR</label>
                                        <div style="padding-left: 2%; padding-right: 3%;" class="input-group col-sm-9">
                                            <asp:TextBox runat="server" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" ID="cant_leche" CssClass="form-control style-form" TextMode="Number" placeholder="39" required></asp:TextBox>
                                            <span class="input-group-addon">Litros</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="box-body">
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">FECHA DE ENTREGA</label>
                                            <div style="padding-left: 2%; padding-right: 3%;" class="input-group date col-sm-9">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-calendar"></i>
                                                </div>
                                                <asp:TextBox Style="width: 100%;" runat="server" ID="FechaEn" TextMode="Date" CssClass="form-control style-form" required></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">FINCA: </label>
                                    <div class="col-sm-9">
                                        <asp:DropDownList ID="Drop_Finca" Style="width: 100%;" CssClass="form-control select2 select2-hidden-accessible style-form solo-letras" TabIndex="-1" aria-hidden="true" AppendDataBoundItems="true" runat="server" BackColor="White" required>
                                            <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div style="text-align: right;" class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10 text-right">
                                        <asp:LinkButton ID="btn_Leche" runat="server" CssClass="btn btn-success" OnClick="btn_Leche_Click"><i class="fa fa-save"></i>&nbsp Guardar Datos</asp:LinkButton>
                                        <asp:LinkButton ID="btn_Leche_cerrar" runat="server" CssClass="btn btn-danger" OnClick="btn_Leche_cerrar_Click"><i class="fa fa-remove"></i>&nbsp Cacelar</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsEndPage" runat="server">
    <!-- Select2 -->
    <script src="../../../Plantilla/Privado/bower_components/select2/dist/js/select2.full.min.js"></script>
    <!-- InputMask -->
    <script src="../../../Plantilla/Privado/plugins/input-mask/jquery.inputmask.js"></script>
    <script src="../../../Plantilla/Privado/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
    <script src="../../../Plantilla/Privado/plugins/input-mask/jquery.inputmask.extensions.js"></script>
    <!-- date-range-picker -->
    <script src="../../../Plantilla/Privado/bower_components/moment/min/moment.min.js"></script>
    <script src="../../../Plantilla/Privado/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap datepicker -->
    <script src="../../../Plantilla/Privado/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <!-- bootstrap color picker -->
    <script src="../../../Plantilla/Privado/bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
    <!-- bootstrap time picker -->
    <script src="../../../Plantilla/Privado/plugins/timepicker/bootstrap-timepicker.min.js"></script>
    <!-- SlimScroll -->
    <script src="../../../Plantilla/Privado/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
    <!-- iCheck 1.0.1 -->
    <script src="../../../Plantilla/Privado/plugins/iCheck/icheck.min.js"></script>
    <!-- FastClick -->
    <script src="../../../Plantilla/Privado/bower_components/fastclick/lib/fastclick.js"></script>
    <!-- SlimScroll -->
    <script src="../../../Plantilla/Privado/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Page script -->
    <script>
        $(function () {
            //Initialize Select2 Elements
            $('.select2').select2()

            //Datemask dd/mm/yyyy
            $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
            //Datemask2 mm/dd/yyyy
            $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
            //Money Euro
            $('[data-mask]').inputmask()

            //Date range picker
            $('#reservation').daterangepicker()
            //Date range picker with time picker
            $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A' })
            //Date range as a button
            $('#daterange-btn').daterangepicker(
                {
                    ranges: {
                        'Today': [moment(), moment()],
                        'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                        'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                        'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                        'This Month': [moment().startOf('month'), moment().endOf('month')],
                        'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                    },
                    startDate: moment().subtract(29, 'days'),
                    endDate: moment()
                },
                function (start, end) {
                    $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
                }
            )

            //Date picker
            $('#datepicker').datepicker({
                autoclose: true
            })

            //iCheck for checkbox and radio inputs
            $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
                checkboxClass: 'icheckbox_minimal-blue',
                radioClass: 'iradio_minimal-blue'
            })
            //Red color scheme for iCheck
            $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
                checkboxClass: 'icheckbox_minimal-red',
                radioClass: 'iradio_minimal-red'
            })
            //Flat red color scheme for iCheck
            $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
                checkboxClass: 'icheckbox_flat-green',
                radioClass: 'iradio_flat-green'
            })

            //Colorpicker
            $('.my-colorpicker1').colorpicker()
            //color picker with addon
            $('.my-colorpicker2').colorpicker()

            //Timepicker
            $('.timepicker').timepicker({
                showInputs: false
            })
        })
    </script>
</asp:Content>
