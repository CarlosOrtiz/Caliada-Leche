<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="Modificar_Supervisor.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.Supervisor.Modificar_Supervisor" %>
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
                            <span class="col-lg-2 control-label text-bold no-padding">Agregar imagen</span>
                            <div class="input-group col-lg-10 no-padding">
                                <span class="input-group-btn">
                                    <span class="btn btn-default btn-file">Seleccione…
                                 <asp:FileUpload ID="FU_Imagen" runat="server" accept="image/*" />
                                    </span>
                                </span>
                                <input type="text" class="form-control" id="textIMG" readonly>
                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-default"><i class="fa fa-remove"></i></button>
                                </span>
                            </div>
                        </div>
                        <div class="col-md-3"></div>
                        <div class="form-group col-md-6 no-padding" id="div-img">
                            <asp:Image ID="Img_FileUpload" runat="server" Width="100%" />
                        </div>
                        <div class="col-md-3"></div>
                        <div class="form-group col-md-12 no-padding">
                            <span class="col-md-2 control-label text-bold no-padding">Nombre 1</span>
                            <div class="col-lg-10 no-padding">
                                <asp:TextBox ID="TB_Nombre1" runat="server" autocomplete="off" CssClass="form-control" required MaxLength="100"
                                    placeholder="Ingrese su 1 nombre..."></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-md-12 no-padding">
                            <span class="col-md-2 control-label text-bold no-padding">Nombre 2</span>
                            <div class="col-lg-10 no-padding">
                                <asp:TextBox ID="TB_Nombre2" runat="server" autocomplete="off" CssClass="form-control" required MaxLength="100"
                                    placeholder="Ingrese su 2 nombre..."></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-md-12 no-padding">
                            <span class="col-md-2 control-label text-bold no-padding">Apellido 1</span>
                            <div class="col-lg-10 no-padding">
                                <asp:TextBox ID="TB_Apellido1" runat="server" autocomplete="off" CssClass="form-control" required MaxLength="100"
                                    placeholder="Ingrese su apellido..."></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-md-12 no-padding">
                            <span class="col-md-2 control-label text-bold no-padding">Apellido 2</span>
                            <div class="col-lg-10 no-padding">
                                <asp:TextBox ID="TB_Apellido2" runat="server" autocomplete="off" CssClass="form-control" required MaxLength="100"
                                    placeholder="Ingrese su 2 apellido..."></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-md-12 no-padding">
                            <span class="col-md-2 control-label text-bold no-padding">Cédula</span>
                            <div class="col-lg-10 no-padding">
                                <asp:TextBox ID="TB_CEDULA" runat="server" CssClass="form-control" autocomplete="off" TextMode="Number" required MaxLength="10"
                                    placeholder="Ingrese su cédula..."></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-md-12 no-padding">
                            <span class="col-md-2 control-label text-bold no-padding">Dirección</span>
                            <div class="col-lg-10 no-padding">
                                <asp:TextBox ID="TB_Direccion" runat="server" CssClass="form-control" autocomplete="off" required MaxLength="45"
                                    placeholder="Ingrese la dirección..."></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-md-12 no-padding">
                            <span class="col-md-2 control-label text-bold no-padding">No Teléfonico</span>
                            <div class="col-lg-10 no-padding">
                                <asp:TextBox ID="TB_Telefono" runat="server" CssClass="form-control" autocomplete="off" TextMode="Number" required MaxLength="10"
                                    placeholder="Ingrese su número teléfonico..."></asp:TextBox>
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
                            <span class="col-md-4 control-label text-bold no-padding">Fecha de Nacimiento</span>
                            <div class="col-lg-8 no-padding">
                                <asp:TextBox ID="TB_Fecha_Na" TextMode="Date" runat="server" autocomplete="off" CssClass="form-control" required MaxLength="45"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-md-12 no-padding">
                            <label class="col-md-4 control-label text-bold no-padding">Estado</label>
                            <div class="col-lg-8 no-padding">
                                <asp:DropDownList ID="Drop_Estado" CssClass="form-control select2" AppendDataBoundItems="true" runat="server" BackColor="White" AutoPostBack="true">
                                    <asp:ListItem Value="ACTIVO" Text="Activo"></asp:ListItem>
                                    <asp:ListItem Value="INACTIVO" Text="Inactivo"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group col-md-12 no-padding">
                            <span class="col-md-4 control-label text-bold no-padding">Descripción</span>
                            <div class="col-lg-8 no-padding">
                                <asp:TextBox ID="TB_Descri" TextMode="MultiLine" Rows="5" runat="server" autocomplete="off" CssClass="form-control" required MaxLength="225"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="box-footer text-center">
                <asp:Button ID="Btn_Modificar" runat="server" Text="Modificar" CssClass="btn btn-primary" OnClick="Btn_Modificar_Click" />
            </div>
        </div>

    </section>
    <div class="clearfix"></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsEndPage" runat="server">
</asp:Content>
