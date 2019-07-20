<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="Proveedores_views_pruebas.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.Supervisor.Proveedores_views_pruebas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="padding-bottom: 10px;" class="content-header">
        <h1><i class="fa fa-hand-o-right"></i><b>PROVEEDORES CON PRUEBAS REGISTRADAS</b></h1>
        <small>De morelac</small>
        <ol class="breadcrumb">
            <li><a href="/Vistas/Private/Home/index_admin.aspx"><i class="fa fa-dashboard"></i>Inicio</a></li>
            <li><a href="/Vistas/Private/Proveedor/Proveedores.aspx"><i class="fa fa-street-view"></i>Proveedores</a></li>
            <li class="active"><a href="/Vistas/Private/Proveedor/Proveedores.aspx"><i class="fa fa-street-view"></i><b>Vizualización de Pruebas</b></a></li>
        </ol>
    </section>
    <div style="padding-left: 0px; padding-bottom: 10px;" class="col-xs-12">
        <div class="col-xs-12">
            <a style="text-align: center; border-radius: 100%; width: 30px; background-color: transparent; padding-left: 0%; padding-right: 0%;" class="btn btn-info btn-sm" title="MODIFICAR"><i style="color: #00acd6; text-align: center;" class="fa fa-eye"></i></a><b style="padding-left: 1%; padding-right: 1%;">MODIFICAR</b>
        </div>
    </div>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <!-- /.box-header -->
                    <div class="box-body table-responsive">
                        <asp:Repeater ID="Rep_View_Pruebas" runat="server">
                            <HeaderTemplate>
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>NOMBRE</th>
                                            <th>FECHA</th>
                                            <th>OBSERVACION</th>
                                            <th style="text-align: center;">ACCIONES</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("NOMBRE")%></td>
                                    <td><%#Eval("FECHA_PRUEBA")%></td>
                                    <td><%#Eval("OBSERVACION")%></td>
                                    <td style="text-align: center;">
                                        <div class="form-group">
                                            <a style="text-align: center; border-radius: 100%; width: 30px; background-color: transparent; padding-left: 0%; padding-right: 0%;" class="btn btn-info btn-sm" title="MODIFICAR"><i style="color: #00acd6; text-align: center;" class="fa fa-eye"></i></a>
                                        </div>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>NOMBRE</th>
                                        <th>FECHA</th>
                                        <th>OBSERVACION</th>
                                        <th style="text-align: center;">ACCIONES</th>
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

