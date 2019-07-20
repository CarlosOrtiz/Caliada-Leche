using Proyecto_Web.Conection;
using Proyecto_Web.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_Web.Modelos;
using System.Data;
using Proyecto_Web.Controladores;

namespace Proyecto_Web.Vistas.Private
{
    public partial class ingresar_proveedor : System.Web.UI.Page
    {
        private IDatos da = new Datos();
        //MODELOS
        private PERSONA mod_persona = new PERSONA();
        private USUARIO mod_usuario = new USUARIO();
        private PROVEEDOR mod_proveedor = new PROVEEDOR();
        private FINCA mod_finca = new FINCA();
        //Controladores
        private USUARIOCONTROLADOR con_usuario = new USUARIOCONTROLADOR();
        private PERSONACONTROLADOR con_persona = new PERSONACONTROLADOR();

        public string modal_mensaje;
        public string modal_titulo;
        public string modal_tipo;
        public string modal_link;
        DataTable ListNom, DT_FINCA;
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
                ListNom = mod_proveedor.ConsultarProvedoresAll2();

                DT_FINCA = mod_finca.ConsultarFinca();
                Asig_Persona.DataValueField = "ID";
                Asig_Persona.DataTextField = "NOMBRE";
                Asig_Persona.DataSource = ListNom;
                Asig_Persona.DataBind();

                Drop_Finca.DataValueField = "ID_FINCA";
                Drop_Finca.DataTextField = "FIN_NOMBRE";
                Drop_Finca.DataSource = DT_FINCA;
                Drop_Finca.DataBind();
            }

        }

        protected void Btn_Save1_Click(object sender, EventArgs e)
        {
            if (ValidarDatos())
            {
                mod_persona.ID_CEDULA = Convert.ToInt32(ced.Text);
                mod_persona.NOMBRE1 = nom1.Text;
                mod_persona.APELLIDO1 = ape1.Text;
                mod_persona.CELULAR = Celular.Text;
                mod_persona.SEXO = Convert.ToChar(DDL_Sexo.SelectedValue);

                mod_usuario.USU_CORREO = correo.Text;
                mod_usuario.USU_CONTRASENA = contrasena.Text;
                mod_usuario.USU_ROL = "5";

                con_persona.Insert_Persona(mod_persona, mod_usuario);


                //  mod_persona.RegistrarPersona(ced.Text, nom1.Text,  ape1.Text,  Celular.Text, Convert.ToChar(DDL_Sexo.SelectedValue), correo.Text, contrasena.Text,"5");
                Response.Redirect("~/Vistas/Private/Proveedor/ingresar_proveedor.aspx");
            }
        }
        protected void Save_Finca_Click(object sender, EventArgs e)
        {
            if (ValidarDatosFinca())
            {
                mod_finca.RegistrarFinca(nom_finca.Text, ubi_finca.Text, hectarias.Text, Convert.ToString(Asig_Persona.SelectedValue));
                Response.Redirect("~/Vistas/Private/Proveedor/ingresar_proveedor.aspx");
            }
        }
        protected void btn_Leche_Click(object sender, EventArgs e)
        {
            if (ValidarDatosLeche())
            {
                mod_finca.RegistrarFincaLenche(cant_leche.Text, FechaEn.Text, Convert.ToString(Drop_Finca.SelectedValue));
                Response.Redirect("~/Vistas/Private/Proveedor/ingresar_proveedor.aspx");
            }
        }

        protected void Btn_Cerrar1_Click(object sender, EventArgs e)
        {
            ced.Text = null;
            nom1.Text = null;
            //nom2.Text = null;
            ape1.Text = null;
            //ape2.Text = null;
            Celular.Text = null;
            //Fecha_Nacimiento.Text = null;
            //Direc.Text = null;
            //Detalle.Text = null;
            correo.Text = null;
            contrasena.Text = null;
        }
        protected void btn_Leche_cerrar_Click(object sender, EventArgs e)
        {
            cant_leche.Text = null;
            FechaEn.Text = null;
            Drop_Finca.ClearSelection();
        }
        protected void Remove_Finca_Click(object sender, EventArgs e)
        {
            nom_finca.Text = null;
            ubi_finca.Text = null;
            hectarias.Text = null;
            cap_leche.Text = null;
            Asig_Persona.ClearSelection();

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
            else if (contrasena.Text.Length < 6 || contrasena.Text.Length == 0 || contrasena.Text.Length > 50)
                mostrarModal("Ingrese un una contraseña mayor a 6 caracteres!", "Error", "modal-danger");
            else
                good = true;
            return good;
        }
        public bool ValidarDatosFinca()
        {
            bool good = false;
            if (nom_finca.Text.Length == 0 || nom_finca.Text.Length < 3 || nom_finca.Text.Length > 45)
                mostrarModal("Ingrese el nombre de su finca correctamente!", "Error", "modal-danger");
            else if (ubi_finca.Text.Length == 0 || ubi_finca.Text.Length > 45 || ubi_finca.Text.Length < 3)
                mostrarModal("Ingrese una ubicacion correctamente!", "Error", "modal-danger");
            else if (hectarias.Text.Length == 0 || hectarias.Text.Length > 45 || hectarias.Text.Length < 3)
                mostrarModal("Ingrese la cantidad de hectarias que cuenta su finca!", "Error", "modal-danger");
            else
                good = true;
            return good;
        }
        public bool ValidarDatosLeche()
        {
            bool good = false;
            if (cant_leche.Text.Length == 0 || cant_leche.Text.Length > 45)
                mostrarModal("Ingrese la cantidad que le surtio a la empresa correctamente!", "Error", "modal-danger");

            else if (FechaEn.Text.Length == 0)
                mostrarModal("Ingrese una ubicacion correctamente!", "Error", "modal-danger");
            else if (Drop_Finca.SelectedValue.Equals(0))
                mostrarModal("Seleccione la finca a la cual quiere agregarle el registro de leche!", "Error", "modal-danger");
            else
                good = true;
            return good;
        }

    }
}