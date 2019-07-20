<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="Proveedores.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.Proveedor.Proveedores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="padding-bottom:10px;" class="content-header">
        <h1><i class="fa fa-hand-o-right"></i><b> PROVEEDORES</b></h1>
        <small>De morelac</small>
        <ol class="breadcrumb">
            <li><a href="('<%= Page.ResolveUrl("~/Views/PrivateViews/index_admin.aspx") %>')"><i class="fa fa-dashboard"></i>Inicio</a></li>
            <li class="active"><a href="#"><i class="fa fa-street-view"></i><b>Proveedores</b></a></li>
        </ol>
    </section>
    <div style="padding-left: 0px;padding-bottom:10px;" class="col-xs-12">
        <div class="col-xs-12">
    <a style="text-align: center; border-radius: 100%; width:30px; background-color: transparent; padding-left: 0%;padding-right:0%;" class="btn btn-info btn-sm" title="MODIFICAR"><i style="color: #00acd6;text-align:center;" class="fa fa-eye"></i> </a><b style="padding-left: 1%;padding-right:1%; "> MODIFICAR</b>
    <a style="text-align: center; border-radius: 100%; width:30px; background-color: transparent; padding-left: 0%;padding-right:0%;" class="btn btn-success btn-sm" title="CAMBIAR ACTIVO"><i style="color: green; text-align:center;" class="fa fa-circle-o-notch"></i></a><b style="padding-left: 1%;padding-right:1%; ">CAMBIAR ESTADO A ACTIVO</b>
    <a style="text-align: center; border-radius: 100%; width:30px; background-color: transparent; padding-left: 0%;padding-right:0%;" class="btn btn-danger btn-sm" title="CAMBIAR INACTIVO"><i style="color: maroon;text-align:center;" class="fa fa-circle-o-notch"></i></a><b style="padding-left: 1%;padding-right:1%; ">CAMBIAR ESTADO A INACTIVO</b>
    <a style="text-align: center; border-radius: 100%; width:30px; background-color: transparent; padding-left: 0%;padding-right:0%;" class="btn btn-success btn-sm" title="AGREGAR NEW PRUEBA"><i style="color: green;text-align:center;" class="fa fa-plus"></i></a><b style="padding-left: 1%;padding-right:1%; ">AGREGAR PRUEBA</b>
    <a style="margin-left:10px;" href="ingresar_proveedor.aspx" class="btn btn-success">Registrar nuevo</a>
    </div>
    </div>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <!-- /.box-header -->
                    <div class="box-body table-responsive">
                        <asp:Repeater ID="Rep_Proveedores" runat="server">
                            <HeaderTemplate>
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>NOMBRE</th>
                                            <th>FINCA</th>
                                            <th>ESTADO</th>
                                            <th style="text-align:center;">ACCIONES</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("NOMBRE")%></td>
                                    <td><%#Eval("FIN_NOMBRE")%></td>
                                    <td><%#Eval("ESTADO")%></td>
                                    <td style="text-align: center;">
                                        <div class="form-group">
                                            <a style="text-align: center; border-radius: 100%; width:30px; background-color: transparent; padding-left: 0%;padding-right:0%;"href="Previsualizacion_Proveedor.aspx?Valor=<%#Eval("ID")%>" class="btn btn-info btn-sm" title="MODIFICAR"><i style="color: #00acd6;text-align:center;" class="fa fa-eye"></i> </a>
                                           <asp:LinkButton ID="Modi_Estado" runat="server"  style="text-align: center; border-radius: 100%; width:30px; background-color: transparent; padding-left: 0%;padding-right:0%;" CssClass="btn btn-success btn-sm" title="CAMBIAR ESTADO ACTIVO" OnCommand="Modi_Estado_Command" CommandArgument='<%#Eval("ID")%>'><i style="color: green;" class="fa fa-circle-o-notch"></i></asp:LinkButton>
                                           <asp:LinkButton ID="Esta_Rojo" runat="server"  style="text-align: center; border-radius: 100%; width:30px; background-color: transparent; padding-left: 0%;padding-right:0%;" CssClass="btn btn-danger btn-sm" title="CAMBIAR ESTADO INACTIVO" OnCommand="Esta_Rojo_Command" CommandArgument='<%#Eval("ID")%>'><i style="color: maroon;" class="fa fa-circle-o-notch"></i></asp:LinkButton>
                                             <a  style="text-align: center; border-radius: 100%; width:30px; background-color: transparent; padding-left: 0%;padding-right:0%;" href="/Vistas/Private/Supervisor/SelecionarPrueba.aspx?Valor=<%#Eval("ID")%>" class="btn btn-success btn-sm" title="AGREGAR NEW PRUEBA"><i style="color: green;text-align:center;" class="fa fa-plus"></i></a>                                          
                                        </div>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>NOMBRE</th>
                                        <th>FINCA</th>
                                        <th>ESTADO</th>
                                        <th>ACCIONES</th>
                                    </tr>
                                </tfoot>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsEndPage" runat="server">

    <script>
        $(function () {
            $('#example1').DataTable()
            $('#example2').DataTable({
                'paging': true,
                'lengthChange': true,
                'searching': true,
                'ordering': true,
                'info': true,
                'autoWidth': false
            })
        })
    </script>

</asp:Content>
