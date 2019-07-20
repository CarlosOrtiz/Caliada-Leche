using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_Web.Modelos;

namespace Proyecto_Web.Vistas.Public
{
    public partial class Index : System.Web.UI.Page
    {
        EMPRESA mod_emp = new EMPRESA();
        public string Men_Vision, Men_Mision;
        DataTable DT_Datos_Empresa;
        protected void Page_Load(object sender, EventArgs e)
        {
            DT_Datos_Empresa = mod_emp.ConsultarEmpresa();
            if (!IsPostBack)
            {
                try
                {
                    Men_Vision = DT_Datos_Empresa.Rows[0]["EMP_VISION"].ToString();
                    Men_Mision = DT_Datos_Empresa.Rows[0]["EMP_MISION"].ToString();
                }
                catch (Exception)
                {
                    Men_Mision = "No tiene ninguna información al respecto";
                    Men_Vision = "No tiene ninguna información al respecto";
                }
            }
            else
            {
                Men_Mision = "No tiene ninguna información al respecto";
                Men_Vision = "No tiene ninguna información al respecto";
            }
        }
    }
}