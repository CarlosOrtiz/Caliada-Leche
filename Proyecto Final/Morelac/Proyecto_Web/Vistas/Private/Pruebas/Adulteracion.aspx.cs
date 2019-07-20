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
    public partial class Adulteracion : System.Web.UI.Page
    {
        private ADULTERACION Mol_Adulteracion = new ADULTERACION();
        private ADULTERACIONCONTROLADOR Con_Adul = new ADULTERACIONCONTROLADOR();
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
                Mol_Adulteracion.FK_PERSONA = Convert.ToString(ID_PERSONA);
                Mol_Adulteracion.FECHA = Fecha_Prueba.Text;
                Mol_Adulteracion.CANTIDAD = TB_Cantidad.Text;
                Mol_Adulteracion.OBSERVACION = TB_Observacion.Text;
                Mol_Adulteracion.AGUA = TB_Agua.Text;
                Mol_Adulteracion.CLORUROS = TB_Cloruros.Text;
                Mol_Adulteracion.SACAROSA = TB_Sacarosa.Text;

                Con_Adul.Guardar_Prueba_Adulteracion(Mol_Adulteracion);

              //  Mol_Adulteracion.Registrar_Prueba_Antibiotico(TB_Nombre.Text, TB_Cantidad.Text, TB_Valor.Text, TB_Observacion.Text, Mol_Adulteracion.FK_PERSONA2);
                Response.Redirect("~/Vistas/Private/Pruebas/Adulteracion.aspx?Valor=" + ID_PERSONA);
                Ocultar = "collapsed-box";

            }
        }

        protected bool ValidarDatos()
        {
            bool good = false;

            if (TB_Cantidad.Text.Length == 0)
                mostrarModal("Campo vacio o ha pasado el maximo de caracteres en le campo de cantidad!", "Error", "modal-danger");
            else if (TB_Agua.Text.Length == 0 && TB_Agua.Text.Length < 10)
                mostrarModal("Campo vacio o ha pasado el maximo de caracteres permitidos por el campo de TB_Agua!", "Error", "modal-danger");
            else if (TB_Cloruros.Text.Length == 0 && TB_Cloruros.Text.Length < 10)
                mostrarModal("Campo vacio o ha pasado el maximo de caracteres permitidos por el campo de TB_Cloruros!", "Error", "modal-danger");
            else if (TB_Sacarosa.Text.Length == 0 && TB_Sacarosa.Text.Length < 10)
                mostrarModal("Campo vacio o ha pasado el maximo de caracteres permitidos por el campo de TB_Sacarosa!", "Error", "modal-danger");
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