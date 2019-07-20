using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_Web.Modelos;
using System.Data;
using Proyecto_Web.Controladores;

namespace Proyecto_Web.Vistas.Private.Proveedor
{
    public partial class Modificar_Proveedor : System.Web.UI.Page
    {
        //Modelos
        private PROVEEDOR mod_prov = new PROVEEDOR();
        private  PERSONA mod_per = new PERSONA();
        //Controladores
        private PROVEEDORCONTROLADOR con_proveedor = new PROVEEDORCONTROLADOR();
        //Variables
        DataTable DT_M_PROVEEDOR;
        public string modal_mensaje;
        public string modal_titulo;
        public string modal_tipo;
        public string modal_link;
        public int IDPAGE;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["CORREO_ELECTRONICO"].ToString().Equals(null))
                {
                    Response.Redirect("~/Vistas/Public/Index.aspx");
                }
            }
            catch (Exception)
            {
                Response.Redirect("~/Vistas/Public/Index.aspx");
            }
            if(Convert.ToInt32(Request.QueryString["Valor"]).Equals(" "))
            {
                Response.Redirect("~/Vistas/Private/Proveedor/Proveedores.aspx");
            }
            //Asigno el valor del id al atributo del modelo proveedor 
            mod_prov.ID_PROVEEDOR = Convert.ToString(Request.QueryString["Valor"]);

            DT_M_PROVEEDOR = con_proveedor.ConsultarProvedores_ID(mod_prov);

            if (!IsPostBack)
            {
                IDPAGE = Convert.ToInt32(Request.QueryString["Valor"]);
                TB_Nombre.Text = DT_M_PROVEEDOR.Rows[0]["PER_NOMBRE1"].ToString();
                TB_Nombre2.Text = DT_M_PROVEEDOR.Rows[0]["PER_NOMBRE2"].ToString();
                TB_Apellido1.Text = DT_M_PROVEEDOR.Rows[0]["PER_APELLIDO1"].ToString();
                TB_Apellido2.Text = DT_M_PROVEEDOR.Rows[0]["PER_APELLIDO2"].ToString();
                TB_CEDULA.Text = DT_M_PROVEEDOR.Rows[0]["CEDULA"].ToString();
                TB_Telefono.Text = DT_M_PROVEEDOR.Rows[0]["CELULAR"].ToString();
                TB_Direccion.Text = DT_M_PROVEEDOR.Rows[0]["DIRECCION"].ToString();
                TB_Finca.Text = DT_M_PROVEEDOR.Rows[0]["FIN_NOMBRE"].ToString();
                Tb_Cant_leche.Text = DT_M_PROVEEDOR.Rows[0]["CANT_LECHE"].ToString();
                TB_Fecha_En.Text = DT_M_PROVEEDOR.Rows[0]["LEC_FECHA"].ToString();
                TB_Descri.Text = DT_M_PROVEEDOR.Rows[0]["DETALLE"].ToString();
                dimencion.Text = DT_M_PROVEEDOR.Rows[0]["FIN_DIMENSION"].ToString();
                ubicacion.Text = DT_M_PROVEEDOR.Rows[0]["FIN_UBICACION"].ToString();
                correo.Text = DT_M_PROVEEDOR.Rows[0]["CORREO"].ToString();
                contra.Text = DT_M_PROVEEDOR.Rows[0]["CONTRASENA"].ToString();
                ViewState["VS_Participantes"] = DT_M_PROVEEDOR;
                ViewState["Ruta"] = DT_M_PROVEEDOR.Rows[0]["FOTO"].ToString();
                Img_FileUpload.ImageUrl = ViewState["Ruta"].ToString();

            }
            else
            {
                DT_M_PROVEEDOR = (DataTable)ViewState["VS_Participantes"];
                //if (Drop_Estado.SelectedIndex.Equals(0) || Drop_Estado.SelectedIndex.Equals(1))
                //    ScriptManager.RegisterStartupScript(UP_Datos, UP_Datos.GetType(), "script", "mostrarElemento('Div_Fecha_Fin', false);", true);
                //else
                //    ScriptManager.RegisterStartupScript(UP_Datos, UP_Datos.GetType(), "script", "mostrarElemento('Div_Fecha_Fin', true);", true);

                if (FU_Imagen.HasFile)
                {
                    ViewState["Ruta"] = "~/Vistas/Private/ImgUser/" + System.IO.Path.GetFileName(FU_Imagen.FileName);
                    Img_FileUpload.ImageUrl = ViewState["Ruta"].ToString();
                    FU_Imagen.SaveAs(Server.MapPath(ViewState["Ruta"].ToString()));
                }
                else
                {
                    if (ViewState["Ruta"].ToString() != DT_M_PROVEEDOR.Rows[0]["FOTO"].ToString())
                        Img_FileUpload.ImageUrl = ViewState["Ruta"].ToString();
                    else
                    {
                        ViewState["Ruta"] = DT_M_PROVEEDOR.Rows[0]["FOTO"].ToString();
                        Img_FileUpload.ImageUrl = ViewState["Ruta"].ToString();
                    }
                }
            }
        }
        protected void Btn_Modificar_Click(object sender, EventArgs e)
        {
            if (ValidarDatos())
            {
                mod_prov.ActualizarProveedor(Convert.ToInt32(Request.QueryString["Valor"]), TB_CEDULA.Text, TB_Nombre.Text, TB_Nombre2.Text, TB_Apellido1.Text, TB_Apellido2.Text, TB_Telefono.Text, TB_Direccion.Text, TB_Descri.Text,  contra.Text, Convert.ToString(Drop_Estado.SelectedValue), TB_Finca.Text, ubicacion.Text, dimencion.Text, Tb_Cant_leche.Text, TB_Fecha_En.Text);
                Response.Redirect("~/Vistas/Private/Proveedor/Proveedores.aspx");
            }
        }

        protected void mostrarModal(string mensaje, string titulo, string tipo, string link = null)
        {

            modal_mensaje = mensaje;
            modal_titulo = titulo;
            modal_tipo = tipo;
            modal_link = link;
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script1", "MostrarModal('modal-modi_proveedor');", true);
        }

        public bool ValidarDatos()
        {
            bool good = false;
            if (TB_Nombre.Text.Length == 0)
                mostrarModal("Campo vacio, por favor ingrese su primer nombre en el campo nombre 1", "Error", "modal-danger");
            else if (TB_Nombre.Text.Length < 3)
                mostrarModal("Por favor ingrese su primer nombre correctamente", "Error", "modal-danger");
            else if (TB_Nombre.Text.Length > 20)
                mostrarModal("Oh! Acaba de exceder el limite de caracteres permitidos por el sistema", "Error", "modal-danger");
            else if (TB_Nombre2.Text.Length > 20)
                mostrarModal("Oh! Acaba de exceder el limite de caracteres permitidos por el sistema", "Error", "modal-danger");
            else if (TB_Apellido1.Text.Length > 20)
                mostrarModal("Oh! Acaba de exceder el limite de caracteres permitidos por el campo apellido 1 ", "Error", "modal-danger");
            else if (TB_Apellido1.Text.Length < 3)
                mostrarModal("Por favor ingrese su primer apellido correctamente", "Error", "modal-danger");
            else if (TB_Apellido1.Text.Length == 0)
                mostrarModal("Oh! Campo vacio, por favor ingrese su primer apellido en el campo Apellido 1", "Error", "modal-danger");
            else if (TB_Apellido2.Text.Length > 20)
                mostrarModal("Oh! Acaba de exceder el limite de caracteres permitidos por el campo apellido 2", "Error", "modal-danger");
            else if (TB_CEDULA.Text.Length > 10)
                mostrarModal("Oh! Acaba de exceder el limite de caracteres permitidos por el campo cédula", "Error", "modal-danger");
            else if (TB_CEDULA.Text.Length < 3 || TB_CEDULA.Text.Length == 0)
                mostrarModal("Oh! Por favor ingresa tu numero de cedula correctamente ", "Error", "modal-danger");
            else if (TB_Telefono.Text.Length > 10)
                mostrarModal("Oh! Acaba de exceder el limite de caracteres permitidos por el campo Teléfono", "Error", "modal-danger");
            else if (TB_Telefono.Text.Length < 3 || TB_Telefono.Text.Length == 0)
                mostrarModal("Oh! Por favor ingresa tu numero telefonico correctamente Recuerda solo son 10 numeros", "Error", "modal-danger");
            else if (TB_Direccion.Text.Length > 50)
                mostrarModal("Oh! Acaba de exceder el limite de caracteres permitidos por el campo de la Dirección", "Error", "modal-danger");
            else if (TB_Finca.Text.Length > 45)
                mostrarModal("Oh! Acaba de exceder el limite de caracteres permitidos por el campo NOMBRE DE LA FINCA", "Error", "modal-danger");
            else if (TB_Finca.Text.Length < 3 || TB_Finca.Text.Length == 0)
                mostrarModal("Oh! Por favor ingresa un nombre para tu finca correctamente", "Error", "modal-danger");
            else if (ubicacion.Text.Length > 50)
                mostrarModal("Oh! Acaba de exceder el limite de caracteres permitidos por el campo de la ubicacion donde tiene la finca", "Error", "modal-danger");
            else if (dimencion.Text.Length > 45)
                mostrarModal("Oh! Acaba de exceder el limite de caracteres permitidos por el campo dimención", "Error", "modal-danger");
            else if (Tb_Cant_leche.Text.Length == 0)
                mostrarModal("Oh!Campo vacio por favor ingresa el la cantidad de leche que le has surtido a la empresa recuerda son en kg/L", "Error", "modal-danger");
            else if (contra.Text.Length > 50)
                mostrarModal("Oh! Acabas de exceder el limite permitido por este campo ", "Error", "modal-danger");
            else if (contra.Text.Length == 50)
                mostrarModal("Oh!Este campo no puede estar en vacio, debido a que debes proteger tu contraseña ", "Error", "modal-danger");
            else if (contra.Text.Length < 5)
                mostrarModal("Oh! Contraseña muy corta", "Error", "modal-danger");
            else if (TB_Descri.Text.Length > 255)
                mostrarModal("Oh! Excedio el limite permitodo para el campo de descripcion del proveedor", "Error", "modal-danger");
            else
                good = true;
            return good;
        }


    }
}