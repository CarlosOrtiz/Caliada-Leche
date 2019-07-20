using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_Web.Controladores;
using Proyecto_Web.Patrones.FactoryMethod;

namespace Proyecto_Web.Vistas.Private.Pruebas
{
    public partial class Organolepticas : System.Web.UI.Page
    {
        DataTable DT = new DataTable();
        private ORGANOLEPTICACONTROLADOR Con_Organolepticas = new ORGANOLEPTICACONTROLADOR();
        private ORGANOLEPTICO Mol_Organolepticas = new ORGANOLEPTICO();
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
                Mol_Organolepticas.COLOR = Convert.ToString(Drop_Color.SelectedItem);
                Mol_Organolepticas.OLOR = Convert.ToString(Drop_Olor.SelectedItem);
                Mol_Organolepticas.SABOR = Convert.ToString(Drop_Sabor.SelectedItem);
                Mol_Organolepticas.TEXTURA = Convert.ToString(Drop_Textura.SelectedItem);
                Mol_Organolepticas.FK_PERSONA =Convert.ToString(ID_PERSONA);
                Mol_Organolepticas.OBSERVACION = TB_Observacion.Text;
                Mol_Organolepticas.CANTIDAD = TB_Cantidad.Text;
                Mol_Organolepticas.FECHA = Fecha_Prueba.Text;


                Con_Organolepticas.Guardar_Prueba_Organolepticas(Mol_Organolepticas);

                Response.Redirect("~/Vistas/Private/Pruebas/Organolepticas.aspx?Valor=" + ID_PERSONA);
                Ocultar = "collapsed-box";

            }
        }

        protected bool ValidarDatos()
        {
            bool good = false;

            if (Convert.ToString(Drop_Color.SelectedValue).Equals(0) )
                mostrarModal("Por favor seleccione algun color!", "Error", "modal-danger");
            else if (Convert.ToString(Drop_Textura.SelectedValue).Equals(0))
                mostrarModal("Por favor seleccione algun color!", "Error", "modal-danger");
            else if (Convert.ToString(Drop_Olor.SelectedValue).Equals(0))
                mostrarModal("Por favor seleccione algun color!", "Error", "modal-danger");
            else if (Convert.ToString(Drop_Sabor.SelectedValue).Equals(0))
                mostrarModal("Por favor seleccione algun color!", "Error", "modal-danger");
            else if (TB_Cantidad.Text.Length == 0)
                mostrarModal("Campo vacio o ha pasado el maximo de caracteres para el campo de cantidad!", "Error", "modal-danger");
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