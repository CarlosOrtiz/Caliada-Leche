using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_Web.Modelos;
using System.Data;
using Proyecto_Web.Controladores;

namespace Proyecto_Web.Vistas.Private.Proveedor
{
    public partial class Previsualizacion_Proveedor : System.Web.UI.Page
    {
        //Modelos
        private PROVEEDOR mod_proveedor = new PROVEEDOR();
        //Controladores
        private PROVEEDORCONTROLADOR con_proveedor = new PROVEEDORCONTROLADOR();
        //Variables
        DataTable DT_Proveedor;
        //private string nombres, apellidos;
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
                mod_proveedor.ID_PROVEEDOR = Convert.ToString(Request.QueryString["Valor"]);
                DT_Proveedor = con_proveedor.ConsultarProvedores_ID(mod_proveedor);

                Nombre.Text = DT_Proveedor.Rows[0]["PER_NOMBRE1"].ToString() + " " + DT_Proveedor.Rows[0]["PER_NOMBRE2"].ToString() + " " + DT_Proveedor.Rows[0]["PER_APELLIDO1"].ToString() + " " + DT_Proveedor.Rows[0]["PER_APELLIDO2"].ToString();
                Cedula.Text = DT_Proveedor.Rows[0]["CEDULA"].ToString();
                Celular.Text = DT_Proveedor.Rows[0]["CELULAR"].ToString();
                Direc.Text = DT_Proveedor.Rows[0]["DIRECCION"].ToString();
                FincaNom.Text = DT_Proveedor.Rows[0]["FIN_NOMBRE"].ToString();
                Cant_En.Text = DT_Proveedor.Rows[0]["CANT_LECHE"].ToString();
                Fecha.Text = DT_Proveedor.Rows[0]["LEC_FECHA"].ToString();
                Estado.Text = DT_Proveedor.Rows[0]["ESTADO"].ToString();
                Descripcion.Text = DT_Proveedor.Rows[0]["DETALLE"].ToString();
                Img_Persona.ImageUrl = DT_Proveedor.Rows[0]["FOTO"].ToString();
            }
            catch (Exception)
            {

            }

        }
    }
}