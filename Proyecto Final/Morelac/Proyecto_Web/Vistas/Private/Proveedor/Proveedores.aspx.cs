using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_Web.Modelos;
using Proyecto_Web.Controladores;

namespace Proyecto_Web.Vistas.Private.Proveedor
{
    public partial class Proveedores : System.Web.UI.Page
    {
        //Modelos
        private PROVEEDOR mol_proveedor = new PROVEEDOR();
        //Controladores
        private PROVEEDORCONTROLADOR con_proveedor = new PROVEEDORCONTROLADOR();
        //Variables
        DataTable Tabla_Proveedor;
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
            Rep_Proveedores.DataSource = Tabla_Proveedor;
            Rep_Proveedores.DataBind();
        }

        protected void Modi_Estado_Command(object sender, CommandEventArgs e)
        {
            mol_proveedor.ID_PROVEEDOR = e.CommandArgument.ToString();
            mol_proveedor.ESTADO = "ACTIVO";
            con_proveedor.ActualizarEstado_Proveedor(mol_proveedor);
            Response.Redirect("~/Vistas/Private/Proveedor/Proveedores.aspx");
        }

        protected void Esta_Rojo_Command(object sender, CommandEventArgs e)
        {
            mol_proveedor.ID_PROVEEDOR = e.CommandArgument.ToString();
            mol_proveedor.ESTADO = "INACTIVO";
            con_proveedor.ActualizarEstado_Proveedor(mol_proveedor);
            //mol_proveedor.ActualizarEstado_Proveedor(e.CommandArgument.ToString(), "INACTIVO");
            Response.Redirect("~/Vistas/Private/Proveedor/Proveedores.aspx");
        }
    }
}