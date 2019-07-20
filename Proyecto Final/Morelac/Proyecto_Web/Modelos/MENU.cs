using Proyecto_Web.Interface;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Proyecto_Web.Modelos;
using Proyecto_Web.Conection;

namespace Proyecto_Web.Modelos
{
    public class MENU
    {

        private IDatos dat = new Datos();
        string MENU_NOMBRE { get; set; }
        string MENU_ICON { get; set; }
        string MENU_URL { get; set; }
        public MENU()
        {
            MENU_NOMBRE = null;
            MENU_URL = null;
            MENU_ICON = null;

        }
        public MENU(string nom, string icon, string url)
        {
            MENU_NOMBRE = nom;
            MENU_URL = icon;
            MENU_ICON = url;

        }

        public DataTable ConsultarMenu(string correo)
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_MENU ('" + correo + "');");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }


        public DataTable ConsultarSub_Menu(string  id)
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_SUBMENU ('" + id + "');");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }
    }
}