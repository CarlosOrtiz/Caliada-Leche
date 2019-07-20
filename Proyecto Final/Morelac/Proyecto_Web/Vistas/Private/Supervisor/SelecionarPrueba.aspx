<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="SelecionarPrueba.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.Supervisor.SelecionarPrueba" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-header">
        <h1><i class="fa fa-hand-o-right"></i><b>&nbsp PRUEBAS</b></h1>
        <small>De morelac</small>
        <ol class="breadcrumb">
            <li><a href="/Vistas/Private/Home/index_admin.aspx"><i class="fa fa-dashboard"></i>Inicio</a></li>
            <li><a href="/Vistas/Private/Proveedor/Proveedores.aspx"><i class="fa fa-street-view"></i>Proveedores</a></li>
            <li class="active"><a href="#"><i class="fa fa-street-view"></i><b>Seleccionar Prueba</b></a></li>
        </ol>
    </section>

    <br />

    <div class="row">
        <div class="col-md-12">
            <div class="box box-warning direct-chat direct-chat-warning">
                <div class="box-header with-border text-center">
                    <h3 class="box-title"><b>ESCOGER LA PRUEBA QUE QUIERE REALIZAR</b></h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                            <i class="fa fa-minus"></i>
                        </button>
                    </div>
                </div>
                <div class="box-body" style="padding-left: 14%; padding-right: 15%; padding-bottom: 3%; padding-top: 3%;">

                    <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6" style="height: 150px; width: 200px;">
                        <div class="thumbnail" style="height: 100%;">
                            <asp:Image runat="server" ImageUrl="~/Plantilla/Privado/Img/icon/leche 2.png" Height="80%" />
                            <div class="caption" style="height: 20%;">
                                <p>
                                    <asp:LinkButton runat="server" ID="Btn_FisicasQuimicas" class="pull-right" data-toggle="tooltip" data-placement="bottom" title="Seleccionar" OnCommand="Btn_FisicasQuimicas_Command" 
                                        CommandArgument='<%=ID_PERSONA %>'>
                                         <b>FISICAS Y QUIMICAS</b> <i class="fa fa-check-circle-o"></i>
                                    </asp:LinkButton>
                                </p>
                            </div>
                            <br />
                        </div>
                    </div>

                    <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6" style="height: 150px; width: 180px;">
                        <div class="thumbnail" style="height: 100%;">
                            <asp:Image runat="server" ImageUrl="~/Plantilla/Privado/Img/icon/lechoso.png" Height="80%" />
                            <div class="caption" style="height: 20%;">
                                <p>
                                     <asp:LinkButton runat="server" ID="Btn_Organolectica" class="pull-right" data-toggle="tooltip" data-placement="bottom" title="Seleccionar" OnCommand="Btn_Organolectica_Command" 
                                        CommandArgument='<%=ID_PERSONA %>'>
                                         <b>ORGANOLÉPTICA</b> <i class="fa fa-check-circle-o"></i>
                                    </asp:LinkButton>
                                </p>
                            </div>
                            <br />
                        </div>
                    </div>

                    <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6" style="height: 150px; width: 180px;">
                        <div class="thumbnail" style="height: 100%;">
                            <asp:Image runat="server" ImageUrl="~/Plantilla/Privado/Img/icon/productos-lacteos.png" Height="80%" />
                            <div class="caption" style="height: 20%;">
                                <p>
                                           <asp:LinkButton runat="server" ID="btn_Composicion" class="pull-right" data-toggle="tooltip" data-placement="bottom" title="Seleccionar" OnCommand="btn_Composicion_Command" 
                                        CommandArgument='<%=ID_PERSONA %>'>
                                         <b>COMPOSICIÓN</b> <i class="fa fa-check-circle-o"></i>
                                    </asp:LinkButton>

                                  
                                </p>
                            </div>
                            <br />
                        </div>
                    </div>

                    <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6" style="height: 150px; width: 180px;">
                        <div class="thumbnail" style="height: 100%;">
                            <asp:Image runat="server" ImageUrl="~/Plantilla/Privado/Img/icon/lacteo.png" Height="80%" />
                            <div class="caption" style="height: 20%;">
                                <p>
                                      <asp:LinkButton runat="server" ID="btn_Adulteracion" class="pull-right" data-toggle="tooltip" data-placement="bottom" title="Seleccionar" OnCommand="btn_Adulteracion_Command" 
                                        CommandArgument='<%=ID_PERSONA %>'>
                                         <b>ADULTERACIÓN</b> <i class="fa fa-check-circle-o"></i>
                                    </asp:LinkButton>
                                </p>
                            </div>
                            <br />
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="box box-warning collapsed-box direct-chat direct-chat-warning">
                <div class="box-header with-border text-center">
                    <h3 class="box-title">
                        <a href='/Vistas/Private/Supervisor/ingresarresultados.aspx?Valor=<%=Convert.ToInt32(Request.QueryString["Valor"]) %>' style="color: #444;"><b>REALIZAR TODAS LAS PRUEBAS AL MISMO TIEMPO &nbsp</b><i class="fa fa-check-circle-o"></i></a></h3>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsEndPage" runat="server">
    <script src="../../../Plantilla/Privado/bower_components/moment/min/moment.min.js"></script>
    <script src="../../../Plantilla/Privado/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
    <script src="../../../Plantilla/Privado/plugins/iCheck/icheck.min.js"></script>
    <script src="../../../Plantilla/Privado/bower_components/fastclick/lib/fastclick.js"></script>
</asp:Content>
