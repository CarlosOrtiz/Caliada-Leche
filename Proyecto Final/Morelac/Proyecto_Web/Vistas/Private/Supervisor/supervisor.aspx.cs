using System;
using System.Data;
using Proyecto_Web.Modelos;
namespace Proyecto_Web.Vistas.Private.Supervisor
{
    public partial class supervisor : System.Web.UI.Page
    {
        PERSONA MOD_PERSONA = new PERSONA();
        MENU mod_menu = new MENU();
        public string foto, Nombre, n1, n2, ape1, ape2, IDn;
        DataTable tabla = new DataTable();
        SUPERVISOR mod_supervisor = new SUPERVISOR();
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
            tabla = mod_supervisor.ConsultarSupervisorAll();
            Rep_Supervisor.DataSource = tabla;
            Rep_Supervisor.DataBind();
        }
    }
}