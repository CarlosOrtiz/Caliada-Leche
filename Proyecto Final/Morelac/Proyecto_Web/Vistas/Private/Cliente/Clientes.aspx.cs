using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_Web.Modelos;

namespace Proyecto_Web.Vistas.Private.Cliente
{
    public partial class Clientes : System.Web.UI.Page
    {
        DataTable Tabla_Cliente;
        CLIENTES mod_cliente = new CLIENTES();
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
            Tabla_Cliente = mod_cliente.ConsultarClienteAll();
            Rep_Cliente.DataSource = Tabla_Cliente;
            Rep_Cliente.DataBind();
        }
    }
}