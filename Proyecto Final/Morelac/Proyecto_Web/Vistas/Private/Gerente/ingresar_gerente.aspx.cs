using Proyecto_Web.Conection;
using Proyecto_Web.Interface;
using Proyecto_Web.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_Web.Controladores;

namespace Proyecto_Web.Vistas.Private.Gerente
{
    public partial class ingresar_gerente : System.Web.UI.Page
    {
        private IDatos da = new Datos();
        //MODELOS
        public PERSONA mod_persona = new PERSONA();
        private USUARIO mod_usuario = new USUARIO();
        //Controladores
        private USUARIOCONTROLADOR con_usuario = new USUARIOCONTROLADOR();
        private PERSONACONTROLADOR con_persona = new PERSONACONTROLADOR();
        //variables
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

            }
        }
        protected void Btn_Guardar_Click(object sender, EventArgs e)
        {
            if (ValidarDatos())
            {
                mod_persona.ID_CEDULA = Convert.ToInt32(ced.Text);
                mod_persona.NOMBRE1 = nom1.Text;
                mod_persona.APELLIDO1 = ape1.Text;
                mod_persona.CELULAR = Celular.Text;
                mod_persona.SEXO = Convert.ToChar(DDL_Sexo.SelectedValue);
                mod_persona.DETALLES = Detalle.Text;

                mod_usuario.USU_CORREO = correo.Text;
                mod_usuario.USU_CONTRASENA = contrasena.Text;
                mod_usuario.USU_ROL = "2";

                con_persona.Insert_Persona(mod_persona, mod_usuario);

                //mod_persona.RegistrarPersona(ced.Text, nom1.Text,  ape1.Text,  Celular.Text,  Convert.ToChar(DDL_Sexo.SelectedValue), correo.Text, contrasena.Text, "2");
                Response.Redirect("~/Vistas/Private/Gerente/Gerente.aspx");
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

        public bool ValidarDatos()
        {
            bool good = false;
            if (ced.Text.Length > 10)
                mostrarModal("Ingrese su documento de identidad correctamente!", "Error", "modal-danger");
            else if (ced.Text.Length == 0)
                mostrarModal("Campo vacio, por favor registre su documento de identidad!", "Error", "modal-danger");
            else if (nom1.Text.Length < 3)
                mostrarModal("Ingrese su nombre correctamente!", "Error", "modal-danger");
            else if (nom1.Text.Length == 0)
                mostrarModal("Campo vacio por favor ingrese su nombre correctamente!", "Error", "modal-danger");
            else if (nom1.Text.Length > 20)
                mostrarModal("Señor usuario acaba de exceder el limite peritido de caracteres: Error: Nombre 1", "Error", "modal-danger");
            else if (ape1.Text.Length < 3)
                mostrarModal("Ingrese su primer apellido correctamente!", "Error", "modal-danger");
            else if (ape1.Text.Length == 0)
                mostrarModal("Campo vacio por favor ingrese su primer apellido correctamente!", "Error", "modal-danger");
            else if (ape1.Text.Length > 20)
                mostrarModal("Señor usuario acaba de exceder el limite peritido de caracteres Error: Apellido 1", "Error", "modal-danger");
            else if (Celular.Text.Length < 3)
                mostrarModal("Ingrese un maximo de 10 numeros!", "Error", "modal-danger");
            else if (Celular.Text.Length == 0)
                mostrarModal("Campo vacio por favor ingrese su numero teléfonico correctamente!", "Error", "modal-danger");
            else if (Celular.Text.Length > 10)
                mostrarModal("Señor usuario acaba de exceder el limite perimitido por el campo de numero teléfonico: son 10 numeros", "Error", "modal-danger");
            else if (correo.Text.Length < 3 || correo.Text.Length == 0 || correo.Text.Length > 50)
                mostrarModal("Ingrese un correo electronico corectamente!", "Error", "modal-danger");
            else
                good = true;
            return good;
        }
    }
}