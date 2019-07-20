<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="gestionar_supervisor.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.gestionar_supervisor" %>

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
                                <h4 class="card-title">MODIFICAR SUPERVISOR</h4>
                            </div>
                            <div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <asp:Label runat="server">BUSCAR POR CEDULA </asp:Label>
                                            <asp:TextBox runat="server" ID="buscar" aria-describedby="addon-right addon-left" type="number" class="form-control" placeholder="123456789" ></asp:TextBox>
                                            <asp:Button runat="server" Text="BUSCAR" type="submit" ID="Button1" OnClick="Consultar" class="btn btn-info btn-fill float-right"/>
                                
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <asp:Label runat="server">NOMBRE 1 </asp:Label>
                                            <asp:TextBox runat="server" ID="nombre1" aria-describedby="addon-right addon-left" type="text" class="form-control" placeholder="" pattern="[A-Za-z]+" required></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <asp:Label runat="server"> NOMBRE 2 </asp:Label>
                                            <asp:TextBox ID="nombre2" runat="server" aria-describedby="addon-right addon-left" type="text" placeholder="" class="form-control" pattern="[A-Za-z]+"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <asp:Label runat="server">  APELLIDO 1 </asp:Label>
                                            <asp:TextBox ID="apellido1" runat="server" aria-describedby="addon-right addon-left" type="text" placeholder="" class="form-control" pattern="[A-Za-z]+" required></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <asp:Label runat="server"> APELLIDO 2 </asp:Label>
                                            <asp:TextBox ID="apellido2" runat="server" aria-describedby="addon-right addon-left" type="text" placeholder="" class="form-control" pattern="[A-Za-z]+"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <asp:Label runat="server"> CÉDULA </asp:Label>
                                            <asp:TextBox ID="cedula" runat="server" required aria-describedby="addon-right addon-left" TextMode="Number" type="number" placeholder="" class="form-control" ></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <asp:Label runat="server">DIRECCIÓN</asp:Label>
                                            <asp:TextBox ID="direccion" runat="server" required aria-describedby="addon-right addon-left" type="text" placeholder="" class="form-control" ></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <asp:Label runat="server">CELULAR</asp:Label>
                                            <asp:TextBox ID="celular" runat="server" required aria-describedby="addon-right addon-left" TextMode="Number" type="number" placeholder="" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <asp:Label runat="server">FECHA NACIMIENTO </asp:Label>
                                            <asp:TextBox ID="nacimiento" runat="server" required aria-describedby="addon-right addon-left" TextMode="Date" Text="dd-mm-aaaa" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <asp:Label runat="server">SEXO </asp:Label>
                                            <asp:DropDownList ID="sexolis" runat="server" required aria-describedby="addon-right addon-left" class="form-control">
                                                <%--<asp:ListItem value =""> </asp:ListItem>
                                                <asp:ListItem value ="1"> M </asp:ListItem>
                                                <asp:ListItem value ="2"> F </asp:ListItem>--%>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <asp:Label runat="server">ESTADO </asp:Label>
                                            <asp:TextBox ID="estado" required runat="server" placeholder="ACTIVO - INACTIVO" aria-describedby="addon-right addon-left" type="text"  class="form-control" ></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-12" runat="server">
                                        <div class="form-group">
                                            <asp:Label runat="server">DETALLES</asp:Label>
                                            <asp:TextBox ID="detalle" runat="server" TextMode="Phone" Rows="3" class="form-control border-input"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row" runat="server">
                                <div class="text-center">
                                    <asp:Button runat="server" Text="GUARDAR" type="submit" ID="guardarSuper" OnClick="Guardar" class="btn btn-info btn-fill float-right"/>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       <%-- <br />


        <br />

    </form>--%>
</asp:Content>
