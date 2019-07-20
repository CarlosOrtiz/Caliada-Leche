using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_Web.Patrones.FactoryMethod;

namespace Proyecto_Web.Vistas.Private.Supervisor
{
    public partial class SelecionarPrueba : System.Web.UI.Page
    {
        public string Nombre_Prueba;
        public int cantidad;
        SELECCIONAR_PRUEBA Select_Prueba = new SELECCIONAR_PRUEBA();
        ADULTERACION Mol_Adulteracion = new ADULTERACION();
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

        protected void Btn_FisicasQuimicas_Command(object sender, CommandEventArgs e)
        {

            Nombre_Prueba = "FISICAS Y QUIMICAS";
            TIPO_PRUEBA Aux = Select_Prueba.getTipoPrueba(Nombre_Prueba);
            Response.Redirect("~/Vistas/Private/Pruebas/Quimicas.aspx?Valor=" + ID_PERSONA);
        }

        protected void btn_Adulteracion_Command(object sender, CommandEventArgs e)
        {
            Nombre_Prueba = "ADULTERACION";
            TIPO_PRUEBA Aux = Select_Prueba.getTipoPrueba(Nombre_Prueba);
            Response.Redirect("~/Vistas/Private/Pruebas/Adulteracion.aspx?Valor="+ ID_PERSONA);
        }

        protected void btn_Composicion_Command(object sender, CommandEventArgs e)
        {
            Nombre_Prueba = "COMPOSICION";
            TIPO_PRUEBA Aux = Select_Prueba.getTipoPrueba(Nombre_Prueba);
            Response.Redirect("~/Vistas/Private/Pruebas/Composicion.aspx?Valor=" + ID_PERSONA);
        }

        protected void Btn_Organolectica_Command(object sender, CommandEventArgs e)
        {
            Nombre_Prueba = "ORGANOLEPTICO";
            TIPO_PRUEBA Aux = Select_Prueba.getTipoPrueba(Nombre_Prueba);
            Response.Redirect("~/Vistas/Private/Pruebas/Organolepticas.aspx?Valor=" + ID_PERSONA );
        }
    }
}