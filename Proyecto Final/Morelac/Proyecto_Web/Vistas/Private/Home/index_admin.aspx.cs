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
    public partial class index_admin : System.Web.UI.Page
    {
        USUARIO Mod_Usuario = new USUARIO();
        PROVEEDOR mo_pro = new PROVEEDOR();
        DataTable DT_CANT_USER;
        public string cant_user,cant_prueba;
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

            DT_CANT_USER = Mod_Usuario.ConsultarCant_Usuarios();

            if (!IsPostBack)
            {
                try
                {
                    cant_user = DT_CANT_USER.Rows[0]["COUNT(usuario.USU_CORREO_ELECTRONICO)"].ToString();
                    cant_prueba = mo_pro.ConsultarNumero_pruebas().Rows[0]["COUNT(ID_RESULTADOS_PRUEBAS)"].ToString();
                }
                catch (Exception)
                {
                    cant_user = "0";
                }

            }
            else
            {

            }
        }
    }
}