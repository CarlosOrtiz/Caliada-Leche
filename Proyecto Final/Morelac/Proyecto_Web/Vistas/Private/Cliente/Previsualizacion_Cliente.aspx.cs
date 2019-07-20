using Proyecto_Web.Modelos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Web.Vistas.Private.Cliente
{
    public partial class Previsualizacion_Cliente : System.Web.UI.Page
    {
        CLIENTES mod_cliente = new CLIENTES();
        DataTable DT_Cliente;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DT_Cliente = mod_cliente.ConsultarCliente_ID(Convert.ToString(Request.QueryString["Valor"]));

                Nombre.Text = DT_Cliente.Rows[0]["PER_NOMBRE1"].ToString() + " " + DT_Cliente.Rows[0]["PER_NOMBRE2"].ToString() + " " + DT_Cliente.Rows[0]["PER_APELLIDO1"].ToString() + " " + DT_Cliente.Rows[0]["PER_APELLIDO2"].ToString();
                Cedula.Text = DT_Cliente.Rows[0]["PER_CEDULA"].ToString();
                Celular.Text = DT_Cliente.Rows[0]["PER_CELULAR"].ToString();
                Direc.Text = DT_Cliente.Rows[0]["PER_DIRECCION"].ToString();
                Estado.Text = DT_Cliente.Rows[0]["ESTADO"].ToString();
                Descripcion.Text = DT_Cliente.Rows[0]["PER_DETALLES"].ToString();
                Img_Persona.ImageUrl = DT_Cliente.Rows[0]["PER_FOTO"].ToString();
            }
        }
    }
}