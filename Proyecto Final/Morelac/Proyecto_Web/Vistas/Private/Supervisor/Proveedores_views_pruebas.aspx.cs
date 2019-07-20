using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_Web.Modelos;

namespace Proyecto_Web.Vistas.Private.Supervisor
{
   
    public partial class Proveedores_views_pruebas : System.Web.UI.Page
    {
        DataTable Tabla_Prueba;
        PROVEEDOR mol_prove = new PROVEEDOR();
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
            Tabla_Prueba = mol_prove.ConsultarTODAS_PRUEBAS();
            Rep_View_Pruebas.DataSource = Tabla_Prueba;
            Rep_View_Pruebas.DataBind();
        }
    }
}