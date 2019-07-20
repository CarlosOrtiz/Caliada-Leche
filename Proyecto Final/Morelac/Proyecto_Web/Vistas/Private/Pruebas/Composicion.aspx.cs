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
    public partial class Composicion : System.Web.UI.Page
    {
        private COMPOSICION Mod_Composicion = new COMPOSICION();
        private COMPOSICIONCONTROLADOR Con_Composicion = new COMPOSICIONCONTROLADOR();
        DataTable DT= new DataTable();

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
                Fecha_Prueba.Text = DateTime.Now.ToString("yyyy-MM-dd");
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
                Mod_Composicion.FK_PERSONA = Convert.ToString(ID_PERSONA);
                Mod_Composicion.FECHA = Fecha_Prueba.Text;
                Mod_Composicion.OBSERVACION = TB_Observacion.Text;
                Mod_Composicion.CANTIDAD = TB_Cantidad.Text;
                Mod_Composicion.GRASA = TB_Grasa.Text;
                Mod_Composicion.VITAMINAS = Convert.ToString(Drop_Vitaminas.SelectedItem);
                Mod_Composicion.MINERALES = Convert.ToString(Drop_Mineerales.SelectedItem);


                Con_Composicion.Guardar_Prueba_Composicion(Mod_Composicion);
            //    mol_medicamento.FK_PERSONA2 = Convert.ToString(Request.QueryString["Valor"]);
              //  mol_medicamento.Registrar_Prueba_Antibiotico(TB_Nombre.Text, TB_Cantidad.Text, TB_Valor.Text, TB_Observacion.Text, mol_medicamento.FK_PERSONA2);
                Response.Redirect("~/Vistas/Private/Pruebas/Composicion.aspx?Valor=" + ID_PERSONA);
                Ocultar = "collapsed-box";

            }
        }

        protected bool ValidarDatos()
        {
            bool good = false;

            if (TB_Cantidad.Text.Length == 0)
                mostrarModal("Campo vacio o ha pasado el maximo de caracteres en le campo de cantidad!", "Error", "modal-danger");
            else if (TB_Grasa.Text.Length == 0 && TB_Grasa.Text.Length > 3 && TB_Grasa.Text.Length < 4)
                mostrarModal("Campo vacio o ha pasado el maximo de caracteres en le campo de grasa!", "Error", "modal-danger");
            else if (Drop_Vitaminas.SelectedValue.Equals(0))
                mostrarModal("Campo vacio o ha pasado el maximo de caracteres en le campo de viranimas!", "Error", "modal-danger");
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