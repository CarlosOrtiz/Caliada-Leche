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
    public partial class Modificar_Gerente : System.Web.UI.Page
    {
        GERENTE mod_gere = new GERENTE();
        PERSONA mod_per = new PERSONA();
        DataTable DT_M_GERENTE;

        public string modal_mensaje;
        public string modal_titulo;
        public string modal_tipo;
        public string modal_link;
        protected void Page_Load(object sender, EventArgs e)
        {
            DT_M_GERENTE = mod_gere.ConsultarGerente_ID(Convert.ToString(Request.QueryString["Valor"]));
            if (!IsPostBack)
            {

                TB_Nombre1.Text = DT_M_GERENTE.Rows[0]["PER_NOMBRE1"].ToString();
                TB_Nombre2.Text = DT_M_GERENTE.Rows[0]["PER_NOMBRE2"].ToString();
                TB_Apellido1.Text = DT_M_GERENTE.Rows[0]["PER_APELLIDO1"].ToString();
                TB_Apellido2.Text = DT_M_GERENTE.Rows[0]["PER_APELLIDO2"].ToString();
                TB_CEDULA.Text = DT_M_GERENTE.Rows[0]["PER_CEDULA"].ToString();
                TB_Direccion.Text = DT_M_GERENTE.Rows[0]["PER_DIRECCION"].ToString();
                TB_Telefono.Text = DT_M_GERENTE.Rows[0]["PER_CELULAR"].ToString();
                //TB_Fecha_Na.Text = DT_M_CLIENTE.Rows[0]["LEC_FECHA"].ToString();
                TB_Descri.Text = DT_M_GERENTE.Rows[0]["PER_DETALLES"].ToString();

                ViewState["VS_Participantes"] = DT_M_GERENTE;
                ViewState["Ruta"] = DT_M_GERENTE.Rows[0]["PER_FOTO"].ToString();
                Img_FileUpload.ImageUrl = ViewState["Ruta"].ToString();
            }
            else
            {
                DT_M_GERENTE = (DataTable)ViewState["VS_Participantes"];
                //if (Drop_Estado.SelectedIndex.Equals(0) || Drop_Estado.SelectedIndex.Equals(1))
                //    ScriptManager.RegisterStartupScript(UP_Datos, UP_Datos.GetType(), "script", "mostrarElemento('Div_Fecha_Fin', false);", true);
                //else
                //    ScriptManager.RegisterStartupScript(UP_Datos, UP_Datos.GetType(), "script", "mostrarElemento('Div_Fecha_Fin', true);", true);

                if (FU_Imagen.HasFile)
                {
                    ViewState["Ruta"] = "~/Views/PrivateViews/Images/Proyectos/" + System.IO.Path.GetFileName(FU_Imagen.FileName);
                    Img_FileUpload.ImageUrl = ViewState["Ruta"].ToString();
                    FU_Imagen.SaveAs(Server.MapPath(ViewState["Ruta"].ToString()));
                }
                else
                {
                    if (ViewState["Ruta"].ToString() != DT_M_GERENTE.Rows[0]["FOTO"].ToString())
                        Img_FileUpload.ImageUrl = ViewState["Ruta"].ToString();
                    else
                    {
                        ViewState["Ruta"] = DT_M_GERENTE.Rows[0]["FOTO"].ToString();
                        Img_FileUpload.ImageUrl = ViewState["Ruta"].ToString();
                    }
                }
            }
        }

        protected void Btn_Modificar_Click(object sender, EventArgs e)
        {

        }
        protected void mostrarModal(string mensaje, string titulo, string tipo, string link = null)
        {
            modal_mensaje = mensaje;
            modal_titulo = titulo;
            modal_tipo = tipo;
            modal_link = link;
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script1", "MostrarModal('modal-detalle-proyecto');", true);
        }

        protected bool ValidarDatos()
        {
            bool estaBien = false;
            if (TB_Nombre1.Text.Length < 3)
                mostrarModal("Ingrese el nombre correctamente.", "Error", "modal-danger");
            else if (TB_Descri.Text.Length < 10)
                mostrarModal("Ingrese la descripción correctamente.", "Error", "modal-danger");
            else if (Drop_Estado.SelectedIndex.Equals(0))
                mostrarModal("Seleccione un estado.", "Error", "modal-danger");
            else if (Drop_Estado.SelectedIndex.Equals(2))
                mostrarModal("Ingrese la fecha de nacimiento.", "Error", "modal-danger");
            else
                estaBien = true;

            return estaBien;
        }
    }
}