<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="Modificar_Proveedor.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.Proveedor.Modificar_Proveedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-header height-title">
        <h3 class="margin-top-5"><i class="fa fa-folder-open"></i>&nbsp Información de proveedor</h3>
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
                            <asp:Image ID="Img_FileUpload" runat="server" Width="100%"  />
                        </div>
                         <div class="col-md-3"></div>
                        <div class="form-group col-md-12 no-padding">
                            <span class="col-md-2 control-label text-bold no-padding">Nombre 1</span>
                            <div class="col-lg-10 no-padding">
                                <asp:TextBox ID="TB_Nombre" runat="server" onkeyDown="checkTextAreaMaxLength(this,event,'20');"  autocomplete="off" CssClass="form-control" required MaxLength="20"
                                    placeholder="Ingrese su primer nombre..."></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-md-12 no-padding">
                            <span class="col-md-2 control-label text-bold no-padding">Nombre 2</span>
                            <div class="col-lg-10 no-padding">
                                <asp:TextBox ID="TB_Nombre2" runat="server" onkeyDown="checkTextAreaMaxLength(this,event,'20');" autocomplete="off" CssClass="form-control" MaxLength="20"
                                    placeholder="Ingrese su segundo nombre..."></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-md-12 no-padding">
                            <span class="col-md-2 control-label text-bold no-padding">Apellido 1</span>
                            <div class="col-lg-10 no-padding">
                                <asp:TextBox ID="TB_Apellido1" runat="server" onkeyDown="checkTextAreaMaxLength(this,event,'20');" autocomplete="off" CssClass="form-control" required MaxLength="20"
                                    placeholder="Ingrese su primer apellido..."></asp:TextBox>
                            </div>
                        </div>
              <div class="form-group col-md-12 no-padding">
                            <span class="col-md-2 control-label text-bold no-padding">Apellido 2</span>
                            <div class="col-lg-10 no-padding">
                                <asp:TextBox ID="TB_Apellido2" runat="server" onkeyDown="checkTextAreaMaxLength(this,event,'20');" autocomplete="off" CssClass="form-control" MaxLength="20"
                                    placeholder="Ingrese su segundo apellido..."></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-md-12 no-padding">
                            <span class="col-md-2 control-label text-bold no-padding">Cédula</span>
                            <div class="col-lg-10 no-padding">
                                <asp:TextBox ID="TB_CEDULA" runat="server" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control" autocomplete="off"  required MaxLength="10"
                                    placeholder="Ingrese su cédula..."></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-md-12 no-padding">
                            <span class="col-md-2 control-label text-bold no-padding">Numero teléfonico</span>
                            <div class="col-lg-10 no-padding">
                                <asp:TextBox ID="TB_Telefono" runat="server" onKeyPress="return  soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control" autocomplete="off"  required MaxLength="10"
                                    placeholder="Ingrese su número teléfonico..."></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-md-12 no-padding">
                            <span class="col-md-2 control-label text-bold no-padding">Dirección</span>
                            <div class="col-lg-10 no-padding">
                                <asp:TextBox ID="TB_Direccion" runat="server" onkeyDown="checkTextAreaMaxLength(this,event,'50');" CssClass="form-control" autocomplete="off"  MaxLength="50"
                                    placeholder="Ingrese su dirección..."></asp:TextBox>
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
                            <span class="col-md-4 control-label text-bold no-padding">Nombre de la finca</span>
                            <div class="col-lg-8 no-padding">
                                <asp:TextBox ID="TB_Finca" runat="server" CssClass="form-control" onkeyDown="checkTextAreaMaxLength(this,event,'45');"  autocomplete="off" required MaxLength="45"
                                    placeholder="Ingrese el nombre de su finca..."></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-md-12 no-padding">
                            <span class="col-md-4 control-label text-bold no-padding">¿Donde se ubica la finca?</span>
                            <div class="col-lg-8 no-padding">
                                <asp:TextBox ID="ubicacion" runat="server" CssClass="form-control" onkeyDown="checkTextAreaMaxLength(this,event,'45');" autocomplete="off" required MaxLength="45"
                                    placeholder="Ingrese la ubicacion de su finca..."></asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group col-md-12 no-padding">
                            <span class="col-md-4 control-label text-bold no-padding">¿Cuantas hectareas tiene su finca?</span>
                            <div class="col-lg-8 no-padding">
                                <asp:TextBox ID="dimencion" runat="server" CssClass="form-control" onkeypress="return filterFloat(event,this);"   autocomplete="off" onkeyDown="checkTextAreaMaxLength(this,event,'45');" MaxLength="45"
                                    placeholder="Ingrese el numero de hectareas de su finca..."></asp:TextBox>
                            </div>
                        </div>
                 <div class="form-group col-md-12 no-padding">
                            <span class="col-md-4 control-label text-bold no-padding">Fecha donde le surtio leche a empresa</span>
                            <div class="col-lg-8 no-padding">
                                <asp:TextBox ID="TB_Fecha_En" TextMode="Date" runat="server" CssClass="form-control" required ></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-md-12 no-padding">
                            <span class="col-md-4 control-label text-bold no-padding">¿Cantidad de leche que ingreso a la empresa?</span>
                            <div class="col-lg-8 no-padding">
                                <asp:TextBox ID="Tb_Cant_leche" TextMode="Number" runat="server" autocomplete="off"  CssClass="form-control" required 
                                    placeholder="Ingrese la cantidad en kilogramos (Kg)..."></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group col-md-12 no-padding">
                            <label class="col-md-4 control-label text-bold no-padding">Estado</label>
                            <div class="col-lg-8 no-padding">
                                <asp:DropDownList ID="Drop_Estado" CssClass="form-control select2" AppendDataBoundItems="true" runat="server" BackColor="White" >
                                    <asp:ListItem Value="ACTIVO" Text="Activo"></asp:ListItem>
                                    <asp:ListItem Value="INACTIVO" Text="Inactivo"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group col-md-12 no-padding">
                            <span class="col-md-4 control-label text-bold no-padding">Correo Electronico</span>
                            <div class="col-lg-8 no-padding">
                                <asp:TextBox ID="correo" Enabled="false" TextMode="Email" runat="server" autocomplete="off" CssClass="form-control" MaxLength="45"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-md-12 no-padding">
                            <span class="col-md-4 control-label text-bold no-padding">Contraseña</span>
                            <div class="col-lg-8 no-padding">
                                <asp:TextBox ID="contra"  runat="server" autocomplete="off" CssClass="form-control" onkeyDown="checkTextAreaMaxLength(this,event,'50');" required MaxLength="50"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-md-12 no-padding">
                            <span class="col-md-4 control-label text-bold no-padding">Descripción</span>
                            <div class="col-lg-8 no-padding">
                                <asp:TextBox ID="TB_Descri" TextMode="MultiLine" Rows="5" onkeyDown="checkTextAreaMaxLength(this,event,'255');" runat="server" autocomplete="off" CssClass="form-control"  MaxLength="225"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="box-footer text-center">
            <asp:Button ID="Btn_Modificar" runat="server" Text="Modificar" CssClass="btn btn-primary" OnClick="Btn_Modificar_Click"/>
        </div>
        </div>

    </section>
    <div class="clearfix"></div>
     <div class="modal <%=modal_tipo%> fade" id="modal-modi_proveedor" data-backdrop="static" data-keyboard="false">
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
      <script>    
        function darEstiloGVParticipantes() {
            $("#ContentPlaceHolder1_GV_Participantes tbody tr td a").text("");
            $("#ContentPlaceHolder1_GV_Participantes tbody tr td a").prepend("<i class='fa fa-remove'></i>");
            $("#ContentPlaceHolder1_GV_Participantes tbody tr td a").addClass("btn btn-danger");
            jQuery.moveColumn("#ContentPlaceHolder1_GV_Participantes", 1, 0);
            jQuery.moveColumn("#ContentPlaceHolder1_GV_Participantes", 2, 1);
        }

    </script>
</asp:Content>
