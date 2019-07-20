<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="Previsualizacion_Supervisor.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.Supervisor.Previsualizacion_Supervisor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-header height-title">
        <h3 class="margin-top-5"><i class="fa fa-folder-open"></i>&nbsp Información de Supervisor</h3>
    </section>
    <section class="content">
        <div class="row box box-primary no-margin">
            <div class="col-md-6 no-padding">
                <div class="box no-border no-shadow">
                    <div class="box-header">
                        <h3 class="box-title text-bold">Datos</h3>
                    </div>
                    <div class="box-body">
                        <div class="form-group col-md-12 no-padding">
                            <div class="text-center">
                                <asp:Image ID="Img_Persona" runat="server" Width="35%" CssClass="img-thumbnail rounded" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 no-padding">
                <div class="box no-border no-shadow">
                    <div class="box-header">
                    </div>
                    <div class="box-header">
                        <div class="form-group col-md-12 no-padding">
                            <p><b>Nombre:</b>&nbsp<asp:Label ID="Nombre" runat="server"></asp:Label></p>
                            <p><b>Cédula:</b>&nbsp<asp:Label ID="Cedula" runat="server"></asp:Label></p>
                            <p><b>No Teléfonico:</b>&nbsp<asp:Label ID="Celular" runat="server"></asp:Label></p>
                            <p><b>Dirección:</b>&nbsp<asp:Label ID="Direc" runat="server"></asp:Label></p>
                            <p><b>Estado:</b>&nbsp<asp:Label ID="Estado" runat="server"></asp:Label></p>
                            <p align="justify"><b>Descripción:&nbsp</b><asp:Label ID="Descripcion" runat="server"></asp:Label></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="box-footer text-right">
                <a href="Modificar_Supervisor.aspx?Valor=<%=Convert.ToString(Request.QueryString["Valor"])%>" class="btn btn-primary"><i class="fa fa-pencil"></i>&nbsp Modificar</a>
            </div>
            </div>
    </section>
    <div class="clearfix"></div>
</asp:Content>
<%--<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsEndPage" runat="server">
</asp:Content>--%>
