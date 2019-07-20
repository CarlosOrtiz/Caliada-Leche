using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_Web.Modelos;

namespace Proyecto_Web.Vistas.Private
{
    public partial class ingresarresultados : System.Web.UI.Page
    {
        PROVEEDOR mo_prove = new PROVEEDOR();
        DataTable DT;


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
                Fecha_Prueba.ReadOnly = true;
                Fecha_Prueba.Enabled = false;
                Fecha_Prueba.Text = DateTime.Now.ToString("dd/MM/yyyy");
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script1", "reset();", true);
            }
        }

        protected void Btn_Save_Prueba_Click(object sender, EventArgs e)
        {
            if (ValidarDatos())
            {
                mo_prove.RegistrarPruebas(Convert.ToString(Request.QueryString["Valor"]), Fecha_Prueba.Text, TB_Observacion.Text, TB_Cantidad.Text, Convert.ToString(Drop_Color.SelectedValue), Convert.ToString(Drop_Olor.SelectedValue), Convert.ToString(Drop_Sabor.SelectedValue), Convert.ToString(Drop_Textura.SelectedValue), TB_Grasa.Text,
                          Convert.ToString(Drop_Vitaminas.SelectedValue), Convert.ToString(Drop_Mineerales.SelectedValue), TB_PH.Text, TB_Lactico.Text, TB_Agua.Text, TB_Cloruros.Text, TB_Sacarosa.Text);
                Response.Redirect("~/Vistas/Private/Supervisor/Proveedores_views_pruebas.aspx");
            }
        }

        protected void Btn_Cerrar_Click(object sender, EventArgs e)
        {
            TB_Observacion.Text = null;
            TB_Cantidad.Text = null;

            Drop_Textura.ClearSelection();
            Drop_Olor.ClearSelection();
            Drop_Sabor.ClearSelection();
            Drop_Color.ClearSelection();

            TB_Grasa.Text = null;
            Drop_Mineerales.ClearSelection();
            Drop_Vitaminas.ClearSelection();

            TB_PH.Text = null;
            TB_Lactico.Text = null;

            TB_Agua.Text = null;
            TB_Cloruros.Text = null;
            TB_Sacarosa.Text = null;

            //TB_ANTI.Text = null;
        }

        protected void mostrarModal(string mensaje, string titulo, string tipo, string link = null)
        {
            modal_mensaje = mensaje;
            modal_titulo = titulo;
            modal_tipo = tipo;
            modal_link = link;
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script1", "MostrarModal('modal-perfil');", true);
        }

        protected bool ValidarDatos()
        {
            bool good = false;
            if (Drop_Olor.SelectedValue.Equals(0))
                mostrarModal("Ingrese su documento de dentidad correctamente!", "Error", "modal-danger");
            else if (Drop_Sabor.SelectedValue.Equals(0))
                mostrarModal("Ingrese sabor correctamente!", "Error", "modal-danger");
            else if (Drop_Textura.SelectedValue.Equals(0))
                mostrarModal("Ingrese sabor correctamente!", "Error", "modal-danger");
            else if (Drop_Color.SelectedValue.Equals(0))
                mostrarModal("Ingrese color correctamente!", "Error", "modal-danger");
            else if (Drop_Olor.SelectedValue.Equals(0))
                mostrarModal("Ingrese su olor correctamente!", "Error", "modal-danger");
            else if (TB_Grasa.Text.Length == 0 && TB_Grasa.Text.Length > 3 && TB_Grasa.Text.Length < 4)
                mostrarModal("Campo vacio o ha pasado el maximo de caracteres en le campo de grasa!", "Error", "modal-danger");
            else if (Drop_Vitaminas.SelectedValue.Equals(0))
                mostrarModal("Campo vacio o ha pasado el maximo de caracteres en le campo de viranimas!", "Error", "modal-danger");
            else if (Drop_Mineerales.SelectedValue.Equals(0))
                mostrarModal("Campo vacio o ha pasado el maximo de caracteres para el campo de minerales!", "Error", "modal-danger");
            else if (TB_PH.Text.Length == 0 && TB_Grasa.Text.Length > 6.5 && TB_Grasa.Text.Length < 6.7)
                mostrarModal("Campo vacio o ha pasado el maximo de caracteres permitidos por el campo de ph!", "Error", "modal-danger");
            else if (TB_Lactico.Text.Length == 0 && TB_Lactico.Text.Length < 10)
                mostrarModal("Campo vacio o ha pasado el maximo de caracteres permitidos por el campo de TB_Lactico!", "Error", "modal-danger");
            else if (TB_Agua.Text.Length == 0 && TB_Agua.Text.Length < 10)
                mostrarModal("Campo vacio o ha pasado el maximo de caracteres permitidos por el campo de TB_Agua!", "Error", "modal-danger");
            else if (TB_Cloruros.Text.Length == 0 && TB_Cloruros.Text.Length < 10)
                mostrarModal("Campo vacio o ha pasado el maximo de caracteres permitidos por el campo de TB_Cloruros!", "Error", "modal-danger");
            else if (TB_Sacarosa.Text.Length == 0 && TB_Sacarosa.Text.Length < 10)
                mostrarModal("Campo vacio o ha pasado el maximo de caracteres permitidos por el campo de TB_Sacarosa!", "Error", "modal-danger");
           // else if (TB_ANTI.Text.Length == 0 && TB_ANTI.Text.Length < 10)
          //      mostrarModal("Campo vacio o ha pasado el maximo de caracteres permitidos por el campo de TB_ANTI!", "Error", "modal-danger");
            else
                good = true;

            return good;

        }
    }
}