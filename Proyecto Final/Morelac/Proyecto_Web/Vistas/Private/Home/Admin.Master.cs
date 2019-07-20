using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_Web.Modelos;
using Proyecto_Web.Controladores;
namespace Proyecto_Web.Vistas.Private
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        //modelos
        PERSONA MOD_PERSONA = new PERSONA();
        USUARIO MOD_USUARIO = new USUARIO();
        MENU mod_menu = new MENU();
        ROL mod_rol = new ROL();
        //controladores
        PERSONACONTROLADOR con_persona = new PERSONACONTROLADOR();
        USUARIOCONTROLADOR CON_USAURIO = new USUARIOCONTROLADOR();
        public string foto, Nombre, n1, n2, ape1, ape2, IDn;
        //variables
        DataTable MenuDin, SubMenu = new DataTable();

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

                MOD_USUARIO.USU_CORREO = Session["CORREO_ELECTRONICO"].ToString();

                IMG.ImageUrl = con_persona.Select_Persona_Correo(MOD_USUARIO).Rows[0]["PER_FOTO"].ToString();
                n1 = con_persona.Select_Persona_Correo(MOD_USUARIO).Rows[0]["PER_NOMBRE1"].ToString();
                ape1 = con_persona.Select_Persona_Correo(MOD_USUARIO).Rows[0]["PER_APELLIDO1"].ToString();

                NombreUser.Text = n1 + " " + ape1;
                RolUser.Text = mod_rol.Consultarrol(Session["CORREO_ELECTRONICO"].ToString()).Rows[0]["ROL_NOMBRE"].ToString();
                MenuDin = mod_menu.ConsultarMenu(Session["CORREO_ELECTRONICO"].ToString());

                Rep_Menu_Dim.DataSource = MenuDin;
                Rep_Menu_Dim.DataBind();

                SubMenu = mod_menu.ConsultarSub_Menu(MenuDin.Rows[0]["ID_MENU"].ToString());
            }
            catch (Exception)
            {

            }



        }

        protected void Btn_cerrar_Click(object sender, EventArgs e)
        {
            Session["ID_ROL"] = null;
            Session["CORREO_ELECTRONICO"] = null;
            Session["CONTRASENA"] = null;
            Session.Abandon();
            Session.Contents.RemoveAll();
            Response.Redirect("~/Vistas/Public/Index.aspx");
        }
    }
}