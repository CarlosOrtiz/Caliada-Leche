using Proyecto_Web.Conection;
using Proyecto_Web.Interface;
using System;
using Proyecto_Web.Modelos;
using System.Data;
using System.Web.UI;

namespace Proyecto_Web.Vistas.Private
{
    public partial class Modi_empresa : System.Web.UI.Page
    {
        private IDatos da = new Datos();
        EMPRESA mod_empresa = new EMPRESA();
        public string id_empresa;
        public string Static_Nombre, Static_Mision, Static_Vision, Static_Direccion, Static_Correo, Static_Numero, Static_Dueño;

        public string modal_mensaje;
        public string modal_titulo;
        public string modal_tipo;
        public string modal_link;

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

            if (!IsPostBack)
            {
                NOMBRE.Text = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_NOMBRE"].ToString();
                NIT.Text = mod_empresa.ConsultarEmpresa().Rows[0]["ID_EMPRESA"].ToString();
                MISION.Text = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_MISION"].ToString();
                VISION.Text = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_VISION"].ToString();
                DIRECCIÓN.Text = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_DIRECCION"].ToString();
                CORREO.Text = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_CORREO"].ToString();
                NUMERO.Text = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_TELEFONO"].ToString();
                DUEÑO.Text = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_DUENO"].ToString();
                IMG_EMPRESA2.ImageUrl = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_FOTO"].ToString();
                IMG_EMPRESAS.ImageUrl = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_FOTO"].ToString();

                id_empresa = mod_empresa.ConsultarEmpresa().Rows[0]["ID_EMPRESA"].ToString();

                Static_Nombre = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_NOMBRE"].ToString();
                Static_Dueño = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_DUENO"].ToString();
                Static_Mision = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_MISION"].ToString();
                Static_Vision = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_VISION"].ToString();
                Static_Direccion = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_DIRECCION"].ToString();
                Static_Correo = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_CORREO"].ToString();
                Static_Numero = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_TELEFONO"].ToString();

                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script1", "reset();", true);
            }


        }
        protected void Btn_Actualizar_Click(object sender, EventArgs e)
        {
            if (ValidarDatos()) { 
            try
            {
                DataTable DT_Mensaje;
            //    DT_Mensaje = mod_empresa.ActualizarEmpresa(NIT.Text, NOMBRE.Text, DIRECCIÓN.Text, CORREO.Text, NUMERO.Text, DUEÑO.Text, MISION.Text, VISION.Text);

             //   if (DT_Mensaje.Rows[0]["TIPO"].ToString().Equals("3"))
            //        mostrarModal(DT_Mensaje.Rows[0]["MENSAJE"].ToString(), "Registro completo", "modal-success", "'Modi_empresa.aspx'");
             //   else
              //      mostrarModal(DT_Mensaje.Rows[0]["MENSAJE"].ToString(), "Error", "modal-danger");
            }
            catch
            {
                mostrarModal("Ocurrió un error en el registro de los datos.", "Error", "modal-danger");
            }
            }
        }
        protected void mostrarModal(string mensaje, string titulo, string tipo, string link = null)
        {
            modal_mensaje = mensaje;
            modal_titulo = titulo;
            modal_tipo = tipo;
            modal_link = link;
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script1", "MostrarModal('modal-perfil');", true);
        }
        private bool ValidarDatos()
        {
            bool estaBien = false;
            if (NIT.Text.Length > 10 || NIT.Text.Length == 0)
                mostrarModal("Ingrese su documento de dentidad correctamente!", "Error", "modal-danger");
            else if (NOMBRE.Text.Length < 3)
                mostrarModal("Ingrese su nombre correctamente!", "Error", "modal-danger");
            else if (NOMBRE.Text.Length ==0 )
                mostrarModal("Campo vacio por favor ingrese el nobre de su empresa!", "Error", "modal-danger");
            else if (NOMBRE.Text.Length > 50)
                mostrarModal("Excedio el maximo de caracteres para el campo de nombre recuerde que son 50 caracteres!", "Error", "modal-danger");
            else if (DUEÑO.Text.Length < 3)
                mostrarModal("Ingrese su nombre correctamente!", "Error", "modal-danger");
            else if (DIRECCIÓN.Text.Length < 3)
                mostrarModal("Ingrese su apellido correctamente!", "Error", "modal-danger");
            else if (NUMERO.Text.Length < 10)
                mostrarModal("Ingrese su número de celular correctamente!", "Error", "modal-danger");
            else if (MISION.Text.Length < 10)
                mostrarModal("Ingrese su biografía correctamente!", "Error", "modal-danger");
            else if (MISION.Text.Length > 1000)
                mostrarModal("Exedió 1000 caracteres en la biografía!", "Error", "modal-danger");
            else if (VISION.Text.Length < 10)
                mostrarModal("Ingrese su biografía correctamente!", "Error", "modal-danger");
            else if (VISION.Text.Length > 1000)
                mostrarModal("Exedió 1000 caracteres en la biografía!", "Error", "modal-danger");
            else
                estaBien = true;

            return estaBien;
        }
    }

}