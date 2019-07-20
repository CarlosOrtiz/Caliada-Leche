<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="ingresar_cliente.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.ingresar_cliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <%-- <form runat="server">--%>
        <div class="content">
        <div class="container-fluid">
            <div class="form-row">
                <div class="col-md-10">
                    <div class="contact-form">
                        <div class="card-header">
                            <br />
                            <h4 class="card-title">CREAR UN NUEVO CLIENTE</h4>
                        </div>
                        <div class="card-body">
                            <%--<form>--%>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server">NOMBRE 1 </asp:Label>
                                        <asp:TextBox runat="server" ID="nom1" aria-describedby="addon-right addon-left" type="text" class="form-control" placeholder="JUAN" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server"> NOMBRE 2 </asp:Label>
                                        <asp:TextBox ID="nom2" runat="server" aria-describedby="addon-right addon-left" type="text" placeholder="JOSE" class="form-control" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server"> APELLIDO 1 </asp:Label>
                                        <asp:TextBox ID="ape1" required runat="server" aria-describedby="addon-right addon-left" type="text" placeholder="PEREZ" class="form-control" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server"> APELLIDO 2 </asp:Label>
                                        <asp:TextBox ID="ape2" runat="server" aria-describedby="addon-right addon-left" type="text" placeholder="PEREZ" class="form-control" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server"> CÉDULA </asp:Label>
                                        <asp:TextBox ID="ced" required runat="server" aria-describedby="addon-right addon-left" TextMode="Number" type="number" placeholder="1117552597" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server">DIRECCIÓN</asp:Label>
                                        <asp:TextBox ID="Direc" runat="server" aria-describedby="addon-right addon-left" type="text" placeholder="CAQUETA-FLORENCIA-ATALAYA" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server">CELULAR</asp:Label>
                                        <asp:TextBox ID="Celular" required runat="server" aria-describedby="addon-right addon-left" TextMode="Number" placeholder="3144703595" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server">FECHA NACIMIENTO </asp:Label>
                                        <asp:TextBox ID="FechaN" runat="server" aria-describedby="addon-right addon-left" TextMode="Date" Text="dd-mm-aaaa" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server">CORREO</asp:Label>
                                        <asp:TextBox ID="correo" required runat="server" aria-describedby="addon-right addon-left" TextMode="email" placeholder="@" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server">CONTRASEÑA</asp:Label>
                                        <asp:TextBox ID="contrasena" required runat="server" aria-describedby="addon-right addon-left" TextMode="password" placeholder="*****" class="form-control"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-2">
                                    <div class="form-group">
                                        <asp:Label runat="server">SEXO </asp:Label>

                                        <asp:DropDownList ID="DDL_Sexo" CssClass="form-control" runat="server" BackColor="White">
                                            <asp:ListItem Value="M" Text="Masculino"></asp:ListItem>
                                            <asp:ListItem Value="F" Text="Femenino"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="col-md-12" runat="server">
                                    <div class="form-group">
                                        <asp:Label runat="server">DETALLES</asp:Label>
                                        <asp:TextBox ID="Detalle" runat="server" Rows="5" placeholder="Aqui puedes escribir una breve descripció" class="form-control border-input" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row" runat="server">
                                <div class="col-sm-offset-2 col-sm-10 text-right">
                                    <asp:LinkButton ID="Btn_Guardar" runat="server" CssClass="btn btn-primary" OnClick="Btn_Guardar_Click"><i class="fa fa-save"></i>&nbsp Guardar datos</asp:LinkButton>
                                    <a href="Clientes.aspx" class="btn btn-danger" id="Btn_Cancelar"><i class="fa fa-remove"></i>&nbsp Cancelar</a>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
