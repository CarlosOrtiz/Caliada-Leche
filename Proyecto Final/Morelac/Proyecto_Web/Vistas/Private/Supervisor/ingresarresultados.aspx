<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="ingresarresultados.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.ingresarresultados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- daterange picker -->
    <!-- bootstrap datepicker -->
    <!-- iCheck for checkboxes and radio inputs -->
    <link rel="stylesheet" href="../../../Plantilla/Privado/plugins/iCheck/all.css">
    <!-- Bootstrap Color Picker -->
    <!-- Bootstrap time Picker -->
    <!-- Select2 -->
    <link rel="stylesheet" href="../../../Plantilla/Privado/bower_components/select2/dist/css/select2.min.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="content-header">
        <h1><i class="fa fa-hand-o-right"></i><b>NUEVA PRUEBA</b></h1>
        <small>De morelac</small>
        <ol class="breadcrumb">
            <li><a href="/Vistas/Private/Home/index_admin.aspx"><i class="fa fa-dashboard"></i>Inicio</a></li>
            <li><a href="/Vistas/Private/Proveedor/Proveedores.aspx"><i class="fa fa-street-view"></i>Proveedores</a></li>
            <li class="active"><a href="/Vistas/Private/Supervisor/ingresarresultados.aspx"><i class="fa fa-street-view"></i><b>Registrar pruebss</b></a></li>
        </ol>
    </section>

    <br />

    <div class="row">
        <div class="col-md-12">
            <!-- DIRECT CHAT WARNING -->
            <div class="box box-warning collapsed-box direct-chat direct-chat-warning">
                <div class="box-header with-border">
                    <h3 class="box-title"><b>CANTIDAD DE LECHE UTILIZADA</b></h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                            <i class="fa fa-plus"></i>
                        </button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body" style="">
                    <fieldset>
                        <div class="form-horizontal">
                            <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-5 control-label"><b style="font-size: 17px;">Cantidad: </b></label>
                                    <div style="padding-left: 2%; padding-right: 5%;" class="input-group col-sm-3">
                                        <asp:TextBox runat="server" ID="TB_Cantidad" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder="32.5" required></asp:TextBox>
                                        <span class="input-group-addon">kg</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="box box-warning  collapsed-box direct-chat direct-chat-warning">
                <div class="box-header with-border">
                    <h3 class="box-title"><b>CARACTERISTICAS ORGANOLÉPTICOS</b></h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                            <i class="fa fa-plus"></i>
                        </button>
                    </div>
                </div>
                <div class="box-body" style="">
                    <fieldset>
                        <div class="form-horizontal col-lg-6">
                            <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Textura</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:DropDownList ID="Drop_Textura" Style="width: 100%;" CssClass="form-control select2 select2-hidden-accessible style-form solo-letras" TabIndex="-1" aria-hidden="true" AppendDataBoundItems="true" runat="server" BackColor="White" required>
                                            <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                            <asp:ListItem Value="1">Viscosa</asp:ListItem>
                                            <asp:ListItem Value="2">opaco</asp:ListItem>
                                            <asp:ListItem Value="3">Pegajosa</asp:ListItem>
                                            <asp:ListItem Value="4">Todas("Viscoso,opaco,Pegajosa")</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Color</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:DropDownList ID="Drop_Color" Style="width: 100%;" CssClass="form-control select2 select2-hidden-accessible style-form solo-letras" TabIndex="-1" aria-hidden="true" AppendDataBoundItems="true" runat="server" BackColor="White" required>
                                            <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                            <asp:ListItem Value="1">Blanco</asp:ListItem>
                                            <asp:ListItem Value="2">Blanco Con Tinte Azulado</asp:ListItem>
                                            <asp:ListItem Value="3">Gris Amarillento</asp:ListItem>
                                            <asp:ListItem Value="4">Rosado</asp:ListItem>
                                            <asp:ListItem Value="5">Otros Colores</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-horizontal col-lg-6">
                            <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Sabor</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:DropDownList ID="Drop_Sabor" Style="width: 100%;" CssClass="form-control select2 select2-hidden-accessible style-form solo-letras" TabIndex="-1" aria-hidden="true" AppendDataBoundItems="true" runat="server" BackColor="White" required>
                                            <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                            <asp:ListItem Value="1">Exelente</asp:ListItem>
                                            <asp:ListItem Value="2">Buena</asp:ListItem>
                                            <asp:ListItem Value="3">Regular</asp:ListItem>
                                            <asp:ListItem Value="4">Pobre</asp:ListItem>
                                            <asp:ListItem Value="5">Insulubre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Olor</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:DropDownList ID="Drop_Olor" Style="width: 100%;" CssClass="form-control select2 select2-hidden-accessible style-form solo-letras" TabIndex="-1" aria-hidden="true" AppendDataBoundItems="true" runat="server" BackColor="White" required>
                                            <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                            <asp:ListItem Value="1">Caracteristico</asp:ListItem>
                                            <asp:ListItem Value="2">Otro</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="box box-warning collapsed-box direct-chat direct-chat-warning">
                <div class="box-header with-border">
                    <h3 class="box-title"><b>CARACTERISTICAS COMPOSICIÓN</b></h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                            <i class="fa fa-plus"></i>
                        </button>
                    </div>
                </div>
                <div class="box-body" style="">
                    <fieldset>
                        <div class="form-horizontal col-lg-6">
                            <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Grasa</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:TextBox runat="server" ID="TB_Grasa" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder="15" required></asp:TextBox>
                                        <span class="input-group-addon">gr</span>
                                    </div>
                                </div>
                            </div>
                           <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Vitaminas</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:DropDownList ID="Drop_Vitaminas" Style="width: 100%;" CssClass="form-control select2 select2-hidden-accessible style-form solo-letras" TabIndex="-1" aria-hidden="true" AppendDataBoundItems="true" runat="server" BackColor="White" required>
                                            <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                            <asp:ListItem Value="1">Vit. A</asp:ListItem>
                                            <asp:ListItem Value="2">Vit. D</asp:ListItem>
                                            <asp:ListItem Value="3">Vit. E</asp:ListItem>
                                            <asp:ListItem Value="4">Vit. K</asp:ListItem>
                                            <asp:ListItem Value="5">Vit. B1</asp:ListItem>
                                            <asp:ListItem Value="6">Vit. B2</asp:ListItem>
                                            <asp:ListItem Value="7">Vit. B6</asp:ListItem>
                                            <asp:ListItem Value="8">Vit. B12</asp:ListItem>
                                            <asp:ListItem Value="9">Vit. C</asp:ListItem>
                                            <asp:ListItem Value="10">Todas Vit. A,D,E,K,B1,B2,B6,B12,C)</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                        </div>
                       <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Minerales</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:DropDownList ID="Drop_Mineerales" Style="width: 100%;" CssClass="form-control select2 select2-hidden-accessible style-form solo-letras" TabIndex="-1" aria-hidden="true" AppendDataBoundItems="true" runat="server" BackColor="White" required>
                                            <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                            <asp:ListItem Value="1">Potasio</asp:ListItem>
                                            <asp:ListItem Value="2">Calcio</asp:ListItem>
                                            <asp:ListItem Value="3">Cloro</asp:ListItem>
                                            <asp:ListItem Value="4">Fósfor</asp:ListItem>
                                            <asp:ListItem Value="5">Fósfor</asp:ListItem>
                                            <asp:ListItem Value="6">Azufre</asp:ListItem>
                                            <asp:ListItem Value="7">Magnesio</asp:ListItem>
                                            <asp:ListItem Value="8">Todos</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="box box-warning collapsed-box direct-chat direct-chat-warning">
                <div class="box-header with-border">
                    <h3 class="box-title"><b>CARACTERISTICAS FISICAS Y QUIMICAS</b></h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                            <i class="fa fa-plus"></i>
                        </button>
                    </div>
                </div>
                <div class="box-body" style="">
                    <fieldset>
                        <div class="container">
                            <div class="row">
                                <div class="form-horizontal col-lg-12">
                                    <div class="form-group col-lg-6">
                                        <div class="box-body">
                                            <label class="col-sm-3 control-label"><b style="font-size: 17px;">PH</b></label>
                                            <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                                <asp:TextBox runat="server" ID="TB_PH" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder="6.5 A 6.7" required></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group col-lg-6">
                                        <div class="box-body">
                                            <label class="col-sm-3 control-label"><b style="font-size: 17px;">Acido Lactico</b></label>
                                            <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                                <asp:TextBox runat="server" ID="TB_Lactico" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder="5" required></asp:TextBox>
                                                <span class="input-group-addon">ml</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <!-- DIRECT CHAT WARNING -->
            <div class="box box-warning collapsed-box direct-chat direct-chat-warning">
                <div class="box-header with-border">
                    <h3 class="box-title"><b>ADULTERACIÓN</b></h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                            <i class="fa fa-plus"></i>
                        </button>
                    </div>
                </div>
                <div class="box-body" style="">
                    <br />
                    <fieldset>
                        <div class="form-horizontal col-lg-12"">
                            <div class="form-group col-lg-6">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Por Agua</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group" >
                                        <asp:TextBox runat="server" ID="TB_Agua" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder="15" required></asp:TextBox>
                                        <span class="input-group-addon">ml</span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group col-lg-6">
                                <div class="box-body ">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Por cloruros</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group ">
                                        <asp:TextBox runat="server" ID="TB_Cloruros" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder="5" required></asp:TextBox>
                                        <span class="input-group-addon">ml</span>
                                    </div>
                                </div>
                            </div>
                              </div>
                         <div class="form-horizontal">
                            <div class="form-group col-lg-6">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Por sacarosa</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group ">
                                        <asp:TextBox runat="server" ID="TB_Sacarosa" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder="3" required></asp:TextBox>
                                        <span class="input-group-addon">ml</span>
                                    </div>
                                </div>
                            </div>
                      </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>

  <%--  <div class="row">
        <div class="col-md-12">
            <div class="box box-warning collapsed-box direct-chat direct-chat-warning">
                <div class="box-header with-border">
                    <h3 class="box-title"><b>RESIDUOS DE MEDICAMENTOS</b></h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                            <i class="fa fa-plus"></i>
                        </button>
                    </div>
                </div>
                <div class="box-body" style="">
                    <br />
                    <fieldset class="container">
                        <div class="row">
                            <div class="form-horizontal col-lg-12">
                                <div class="form-group ">
                                    <div class="box-body">
                                        <label class="control-label col-lg-6"><b style="font-size: 17px;">En los examenes se presentarón Antibióticos en la leche?</b></label>
                                        <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-lg-4">
                                            <asp:TextBox runat="server" ID="TB_ANTI" MaxLength="100"  onkeyDown="checkTextAreaMaxLength(this,event,'100');" CssClass="form-control style-form"  placeholder="11" required></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--</div>-->
                        <!--   <div " class="col-lg-6"> -
                            Reducción del Azul de Metileno:
                    <select class="Red_Azul_Metileno" required>
                        <option value="value0" selected>Selecionar</option>
                        <option value="value1">Buena a exelente</option>
                        <option value="value2">Regular a buena</option>
                        <option value="value3">Aceptable</option>
                        <option value="value4">Mala</option>
                    </select>
                            <!--Mala: Menos de 2 horas    
                Aceptable: 2 - 6 horas
                Regular a buena: 6 - 8 horas    
                Buena a exelente: más de 8 horas  

                Numero estimado de bacterias por ml 
                Mala: 2 a 10 millones
                Regular a buena: 200.000 a 2.000.000 
                Buena a exelente:   100.000 a 200.000
                -->

                        <%-- <div class="col-md-6">
                            Agua:
                    <input class="agua" name='textu' type="number" required />
                            gr
            <p></p>
                            Energía:
                    <input class="agua" name='textu' type="number" required />
                            kcal
            <p></p>
                            Proteína:
                    <input class="agua" name='textu' type="number" required />
                            gr
            <p></p>
                            Grasas:
                    <input class="Grasas" name='textu' type="text" placeholder="Viscosidad de 1,6"
                        required>
                            gr
            <p></p>
                            Lactosa:
                    <input class="agua" name='textu' type="number" required>
                            gr
            <p></p>
                            Minerales:
                    <input class="agua" name='textu' type="number" required>
                            gr
            <p></p>
                            Colesterol:
                    <input class="coles" name='textu' type="text" placeholder="Viscosidad de 1,6"
                        required>
                            gr
            <p></p>
                       --><- --%
                    </fieldset>
                </div>
            </div>
        </div>

    </div>--%>

    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <div class="box box-success">
                <div class="box-header with-border">
                    <h3 class="box-title"><b>GUARDAR PRUEBA</b></h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                            <i class="fa fa-minus"></i>
                        </button>
                    </div>
                </div>
                <div class="box-body" style="text-align: center;">

                    <div class="form-group col-md-12 no-padding">
                        <span class="col-md-2 control-label text-bold no-padding">Fecha de la prueba</span>
                        <div class="col-lg-10 no-padding">
                            <asp:TextBox ID="Fecha_Prueba" runat="server" CssClass="form-control" required TextMode="DateTime"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group col-md-12 no-padding">
                        <span class="col-md-2 control-label text-bold no-padding">Observación</span>
                        <div class="col-lg-10 no-padding">
                            <asp:TextBox ID="TB_Observacion" runat="server" TextMode="MultiLine" onkeyDown="checkTextAreaMaxLength(this,event,'255');" Rows="3" CssClass="form-control" required MaxLength="255"
                                placeholder="Ingrese la obsercacion de esta prueba, pueden ser los aspectos a mejorar..."></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <asp:LinkButton Style="margin: 0% 0% 0% 0%;" runat="server" ID="Btn_Save_Prueba" CssClass="btn btn-success" OnClick="Btn_Save_Prueba_Click"><i class="fa fa-save"></i> Guardar Prueba</asp:LinkButton>
                        <asp:LinkButton Style="margin: 0% 0% 0% 0%;" runat="server" ID="Btn_Cerrar" CssClass="btn btn-danger" OnClick="Btn_Cerrar_Click"><i class="fa fa-remove"></i> Cancelar</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3"></div>
    </div>

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

    <script src="../../../Plantilla/Privado/bower_components/select2/dist/js/select2.full.min.js"></script>
    <script src="../../../Plantilla/Privado/bower_components/moment/min/moment.min.js"></script>
    <script src="../../../Plantilla/Privado/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
    <script src="../../../Plantilla/Privado/plugins/iCheck/icheck.min.js"></script>
    <script src="../../../Plantilla/Privado/bower_components/fastclick/lib/fastclick.js"></script>
    <script>
        $(document).ready(function () {
            $('input').iCheck({
                checkboxClass: 'icheckbox_flat-green',
                radioClass: 'iradio_flat-green'
            });
        });

        $(function () {
            //Initialize Select2 Elements
            $('.select2').select2()
    </script>

</asp:Content>
