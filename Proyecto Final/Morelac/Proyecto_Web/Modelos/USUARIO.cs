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
    public class USUARIO
    {
        private IDatos dat = new Datos();
        public string USU_ID { set; get; }
        public string USU_CORREO { set; get; }
        public string USU_CONTRASENA { set; get; }
        public string USU_ROL { set; get; }
        public string USU_ESTADO { set; get; }
        public string USU_ID_PERSONA { set; get; }

        public USUARIO()
        {
            USU_ID = null;
            USU_CONTRASENA = null;
            USU_CORREO = null;
            USU_ROL = null;
            USU_ESTADO = null;
            USU_ID_PERSONA = null;
        }

        public USUARIO(string con, string correo, string rol, string estado)
        {
            USU_CONTRASENA = con;
            USU_CORREO = correo;
            USU_ROL = rol;
            USU_ESTADO = estado;
        }
        public DataTable Registrarusuario(USUARIO usu)
        {
            try
            {
                return dat.OperarProcedimiento("CALL INSE_USUARIO ('" + usu.USU_CORREO + "', '" + usu.USU_CONTRASENA + "','" + usu.USU_ID_PERSONA + "','" + usu.USU_ROL + "');");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }

        }

        public DataTable ConsultarUsuarios(USUARIO usu)
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_USUARIO ('" + usu.USU_CORREO + "', '" + usu.USU_CONTRASENA + "')");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }

        public DataTable ConsultarCant_Usuarios()
        {
            try
            {
                return dat.ConsultarDatos("CALL COUNT_USER ()");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }

        public DataTable Actualizar_Usuario(USUARIO usu)
        {
            try
            {
                return dat.OperarProcedimiento("CALL UPDA_USUARIO ('" + usu.USU_ID + "', '" + usu.USU_CONTRASENA + "', '" + usu.USU_ESTADO + "', '" + usu.USU_ROL + "')");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }

        }
    }
}