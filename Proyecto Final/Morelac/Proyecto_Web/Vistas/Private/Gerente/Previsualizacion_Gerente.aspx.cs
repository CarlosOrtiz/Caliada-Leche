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
    public partial class Previsualizacion_Gerente : System.Web.UI.Page
    {
        GERENTE mod_gerente = new GERENTE();
        DataTable DT_Gerente;
        protected void Page_Load(object sender, EventArgs e)
        {
            DT_Gerente = mod_gerente.ConsultarGerente_ID(Convert.ToString(Request.QueryString["Valor"]));

            Nombre.Text = DT_Gerente.Rows[0]["PER_NOMBRE1"].ToString() + " " + DT_Gerente.Rows[0]["PER_NOMBRE2"].ToString() + " " + DT_Gerente.Rows[0]["PER_APELLIDO1"].ToString() + " " + DT_Gerente.Rows[0]["PER_APELLIDO2"].ToString();
            Cedula.Text = DT_Gerente.Rows[0]["PER_CEDULA"].ToString();
            Celular.Text = DT_Gerente.Rows[0]["PER_CELULAR"].ToString();
            Direc.Text = DT_Gerente.Rows[0]["PER_DIRECCION"].ToString();
            Estado.Text = DT_Gerente.Rows[0]["ESTADO"].ToString();
            Descripcion.Text = DT_Gerente.Rows[0]["PER_DETALLES"].ToString();
            Img_Persona.ImageUrl = DT_Gerente.Rows[0]["PER_FOTO"].ToString();
        }
    }
}