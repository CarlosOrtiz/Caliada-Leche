using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_Web.Patrones.Adapter;

namespace Proyecto_Web.Vistas.Private.Pruebas
{
    public partial class Adulteracion : System.Web.UI.Page
    {
        private PRUEBA_MEDICAMENTO mol_medicamento = new PRUEBA_MEDICAMENTO();
        DataTable DT;

        public string modal_mensaje;
        public string modal_titulo;
        public string modal_tipo;
        public string modal_link, Ocultar;
        public static int ID_PERSONA;
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

            try
            {
                if (!Request.QueryString["Valor"].ToString().Equals(null))
                {
                    ID_PERSONA = Convert.ToInt32(Request.QueryString["Valor"]);
                }
                else
                {
                    Response.Redirect("~/Vistas/Private/Home/index_admin.aspx");
                }
            }
            catch (Exception)
            {
                Response.Redirect("~/Vistas/Private/Home/index_admin.aspx");
            }
        }
        protected void Btn_Save_Prueba_Click(object sender, EventArgs e)
        {
            if (ValidarDatos())
            {
                mol_medicamento.FK_PERSONA2 = Convert.ToString(Request.QueryString["Valor"]);
                mol_medicamento.Registrar_Prueba_Antibiotico(TB_Nombre.Text, TB_Cantidad.Text, TB_Valor.Text, TB_Observacion.Text, mol_medicamento.FK_PERSONA2);
                Response.Redirect("~/Vistas/Private/Supervisor/SeleccionarPrueba.aspx?Valor=" + mol_medicamento.FK_PERSONA2);
                Ocultar = "collapsed-box";

            }
        }

        protected bool ValidarDatos()
        {
            bool good = false;

            if (TB_Nombre.Text.Length == 0 || TB_Nombre.Text.Length < 3)
                mostrarModal("Campo vacio o ha pasado el maximo de caracteres en le campo de nombre del medicamento!", "Error", "modal-danger");
            else if (TB_Cantidad.Text.Length == 0)
                mostrarModal("Campo vacio o ha pasado el maximo de caracteres en le campo de cantidad!", "Error", "modal-danger");
            else if (TB_Valor.Text.Length == 0)
                mostrarModal("Campo vacio o ha pasado el maximo de caracteres para el campo de valor!", "Error", "modal-danger");
            else
                good = true;

            return good;

        }

        protected void mostrarModal(string mensaje, string titulo, string tipo, string link = null)
        {
            modal_mensaje = mensaje;
            modal_titulo = titulo;
            modal_tipo = tipo;
            modal_link = link;
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script1", "MostrarModal('modal-perfil');", true);
        }
    }
}