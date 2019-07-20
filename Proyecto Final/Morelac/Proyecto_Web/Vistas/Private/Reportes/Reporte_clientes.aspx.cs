using Proyecto_Web.Conection;
using Proyecto_Web.Interface;
using Proyecto_Web.Reportes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Web.Vistas.Private.Reportes
{
    public partial class Reporte_clientes : System.Web.UI.Page
    {
        private IDatos dat = new Datos();
        DataSet dts = new DataSet();
        DataTable da, em = new DataTable();
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
            Lis_clientes rep = new Lis_clientes();
            da = dat.ConsultarDatos("CALL CONS_CLIENTE_REPORTE;");
            rep.SetDataSource(da);
            em = dat.ConsultarDatos("Select EMP_NOMBRE From empresa ;");
            rep.SetParameterValue("Empresa", em.Rows[0]["EMP_NOMBRE"].ToString());
            re_clientes.ReportSource = rep;
            re_clientes.Height = 200;
            re_clientes.Width = 400;
        }
    }
}