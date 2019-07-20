using Proyecto_Web.Conection;
using Proyecto_Web.Interface;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_Web.Modelos;
using Proyecto_Web.Controladores;

namespace Proyecto_Web.Vistas.Public
{
    public partial class login : System.Web.UI.Page
    {
        private IDatos dat = new Datos();
        //Modelos
        private USUARIO MOD_USUARIO = new USUARIO();
        private ROL MOD_ROL = new ROL();
        //Controlador
        private USUARIOCONTROLADOR con_usuario = new USUARIOCONTROLADOR();
        private PERSONACONTROLADOR con_persona = new PERSONACONTROLADOR();
        //Variables
        public string USUARIO { get; private set; }
        public string mjs = "Defecto";

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session.Contents.Count > 0)
            //{
            //    Response.Redirect("~/Vistas/Public/Index.aspx");
            //}
        }
        protected void In_Sesion_Click(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrEmpty(correo_login.Text) && !string.IsNullOrEmpty(contra_login.Text))
                {

                    MOD_USUARIO.USU_CORREO = correo_login.Text;
                    MOD_USUARIO.USU_CONTRASENA = contra_login.Text;

                    if (con_usuario.Select_Usuario_Correo_Contrasena(MOD_USUARIO).Rows[0]["TIPO"].Equals("3"))
                    {
                        Session["ID_ROL"] = MOD_ROL.Consultarrol(correo_login.Text).Rows[0]["ID_ROL"].ToString();
                        Session["CORREO_ELECTRONICO"] = correo_login.Text;
                        Session["CONTRASENA"] = contra_login.Text;
                        Response.Redirect("~/Vistas/Private/Home/index_admin.aspx");

                        switch (Int32.Parse(MOD_ROL.Consultarrol(correo_login.Text).Rows[0]["ID_ROL"].ToString()))
                        {
                            case 1:
                                Response.Redirect("~/Vistas/Private/Home/index_admin.aspx");
                                break;
                            default:
                                Response.Redirect("~/Vistas/Public/login.aspx");
                                break;
                        }
                    }
                    else
                    {
                        mjs = con_usuario.Select_Usuario_Correo_Contrasena(MOD_USUARIO).Rows[0]["MENSAJE"].ToString();
                        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "Confirm();", true);
                    }
                }
                else
                {
                    mjs = "Campos vacios, por favor ingrese su correo elecctronico o su contraseña";
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "Confirm();", true);
                }
            }
            catch (Exception)
            {
                mjs = "Error, Problemas de coneción, por favor revisar su red";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "Confirm();", true);
            }
        }

    }

}
