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
    public class ROL
    {
        private IDatos dat = new Datos();
        string ROL_NOMBRE { get; set; }

        public ROL()
        {
            ROL_NOMBRE = null;
        }

        public ROL(string nombre)
        {
            ROL_NOMBRE = nombre;
        }
        public bool Registrarrol(string nombre)
        {
            try
            {
                return dat.OperarDatos("CALL INSE_ROL ('" + nombre + "');");
            }
            catch (Exception)
            {
                return false;
            }

        }

        public DataTable Consultarrol(string correo)
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_ROL ('" + correo + "');");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }
        public DataTable ConsultarRolAll()
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_ROL_ALL ();");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }
   
    }

}
