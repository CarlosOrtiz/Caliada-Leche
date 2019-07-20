<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="Ingresar_supervisor.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.Ingresar_supervisor" %>

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
    <div class="content">
        <div class="container-fluid">
            <div class="form-row">
                <div class="col-md-10">
                    <div class="contact-form">
                        <div class="card-header">
                            <br />
                            <h4 class="card-title">CREAR UN NUEVO SUPERVISOR</h4>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server">NOMBRE 1 </asp:Label>
                                        <asp:TextBox runat="server" ID="nom1" required CssClass="form-control style-form" autocomplete="off" onkeyDown="checkTextAreaMaxLength(this,event,'10');" onpaste="return false" oncut="return false" placeholder="PEPITO" ></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server"> APELLIDO 1 </asp:Label>
                                        <asp:TextBox runat="server" ID="ape1" required CssClass="form-control style-form" autocomplete="off" placeholder="PEREZ" MaxLength="10" onkeyDown="checkTextAreaMaxLength(this,event,'10');" onpaste="return false" oncut="return false" ></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server"> CÉDULA </asp:Label>
                                        <asp:TextBox runat="server" ID="ced" TextMode="Number" MaxLength="10" onKeyPress="return soloNumeros(event)" autocomplete="off" onkeyDown="checkTextAreaMaxLength(this,event,'10');" placeholder="1117552768" oncopy="return false" onpaste="return false" oncut="return false" CssClass="form-control style-form " required></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server">NUMERO TELÉFONICO</asp:Label>
                                        <asp:TextBox ID="Celular" required CssClass="form-control style-form" runat="server" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" oncut="return false"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server">CORREO</asp:Label>
                                        <asp:TextBox ID="correo" runat="server" required TextMode="Email" placeholder="Ejemplogmail.com" MaxLength="50" autocomplete="off" onkeyDown="checkTextAreaMaxLength(this,event,'50');" onpaste="return false" oncut="return false" CssClass="form-control style-form "></asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server">CONTRASEÑA</asp:Label>
                                        <asp:TextBox ID="contrasena" runat="server" required TextMode="password" placeholder="Ingrese una contraseña" autocomplete="off" onkeyDown="checkTextAreaMaxLength(this,event,'50');"  onpaste="return false" oncut="return false" CssClass="form-control style-form"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-2">
                                    <div class="form-group">
                                        <asp:Label runat="server">SEXO</asp:Label>

                                        <asp:DropDownList ID="DDL_Sexo" CssClass="form-control select2 select2-hidden-accessible style-form solo-letras" Style="width: 100%; text-align: center;" TabIndex="-1" aria-hidden="true" AppendDataBoundItems="true" runat="server" BackColor="White" required>
                                            <asp:ListItem Value="M" Text="Masculino"></asp:ListItem>
                                            <asp:ListItem Value="F" Text="Femenino"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div style="text-align: right;" class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10 text-right">
                                        <asp:LinkButton ID="Btn_Save1" runat="server" CssClass="btn btn-success" OnClick="Btn_Guardar_Click"><i class="fa fa-save "></i>&nbsp Guardar Datos</asp:LinkButton>
                                        <asp:LinkButton ID="Btn_Cerrar1" runat="server" CssClass="btn btn-danger" OnClick="Btn_Cerrar1_Click"><i class="fa fa-remove"></i>&nbsp Cancelar</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

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
