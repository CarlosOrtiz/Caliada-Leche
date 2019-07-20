using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_Web.Patrones.FactoryMethod;
using Proyecto_Web.Controladores;

namespace Proyecto_Web.Vistas.Private.Pruebas
{
    public partial class Quimicas : System.Web.UI.Page
    {
        private FISICASQUIMICASCONTROLADOR Con_FisicasQuimicas = new FISICASQUIMICASCONTROLADOR();
        private FISICASQUIMICAS Mod_FisicasQuimicas = new FISICASQUIMICAS();
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
                Mod_FisicasQuimicas.FK_PERSONA = Convert.ToString(ID_PERSONA);
                Mod_FisicasQuimicas.FECHA = Fecha_Prueba.Text;
                Mod_FisicasQuimicas.OBSERVACION = TB_Observacion.Text;
                Mod_FisicasQuimicas.CANTIDAD = TB_Cantidad.Text;
                Mod_FisicasQuimicas.PH = TB_PH.Text;
                Mod_FisicasQuimicas.ACIDO = TB_Lactico.Text;

                Con_FisicasQuimicas.Guardar_Prueba_FisicaQuimica(Mod_FisicasQuimicas);
                Response.Redirect("~/Vistas/Private/Pruebas/Quimicas.aspx?Valor=" + ID_PERSONA);
                Ocultar = "collapsed-box";

            }
        }

        protected bool ValidarDatos()
        {
            bool good = false;

            if (TB_Cantidad.Text.Length == 0)
                mostrarModal("Campo vacio o ha pasado el maximo de caracteres en le campo de cantidad!", "Error", "modal-danger");
            else if (TB_PH.Text.Length == 0 && TB_PH.Text.Length > 6.5 && TB_PH.Text.Length < 6.7)
                mostrarModal("Campo vacio o ha pasado el maximo de caracteres permitidos por el campo de ph!", "Error", "modal-danger");
            else if (TB_Lactico.Text.Length == 0 && TB_Lactico.Text.Length < 10)
                mostrarModal("Campo vacio o ha pasado el maximo de caracteres permitidos por el campo de TB_Lactico!", "Error", "modal-danger");
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