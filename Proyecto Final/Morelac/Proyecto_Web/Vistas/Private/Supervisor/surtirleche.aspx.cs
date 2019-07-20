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
    public partial class surtirleche : System.Web.UI.Page
    {
        DataTable Tabla_Proveedor;
        PROVEEDOR mol_proveedor = new PROVEEDOR();
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
            Tabla_Proveedor = mol_proveedor.ConsultarProvedoresAll();
            Rep_Proveedor.DataSource = Tabla_Proveedor;
            Rep_Proveedor.DataBind();
        }
    }

      
    }
