using Proyecto_Web.Conection;
using Proyecto_Web.Interface;
using Proyecto_Web.Modelos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Web.Vistas.Private.Gerente
{
    public partial class gerente : System.Web.UI.Page
    {
        DataTable Tabla_Gerente;
        GERENTE mod_Gerente = new GERENTE();
        
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
            Tabla_Gerente = mod_Gerente.ConsultarGerenteAll();
            Rep_Gerente.DataSource = Tabla_Gerente;
            Rep_Gerente.DataBind();
        }
    }
}