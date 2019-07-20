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
    public class PERSONA
    {
        private IDatos dat = new Datos();

        public int ID_CEDULA { set; get; }
        public string NOMBRE1 { set; get; }
        public string NOMBRE2 { set; get; }
        public string APELLIDO1 { set; get; }
        public string APELLIDO2 { set; get; }
        public string CELULAR { set; get; }
        public string FECHA_NACIMIENTO { set; get; }
        public string DIRRECCION { set; get; }
        public  string DETALLES { set; get; }
        public char SEXO { set; get; }
        public string FOTO { set; get; }

        public PERSONA()
        {
            ID_CEDULA = 0;
            NOMBRE1 = null;
            NOMBRE2 = null;
            APELLIDO1 = null;
            APELLIDO2 = null;
            CELULAR = null;
            FECHA_NACIMIENTO = null;
            DIRRECCION = null;
            DETALLES = null;
            SEXO = '0';
        }

        public PERSONA(int iD_CEDULA, string nOMBRE1, string nOMBRE2, string aPELLIDO1, string aPELLIDO2, string cELULAR, string fECHA_NACIMIENTO, string dIRRECCION, string dETALLES, char sEXO)
        {
            ID_CEDULA = iD_CEDULA;
            NOMBRE1 = nOMBRE1;
            NOMBRE2 = nOMBRE2;
            APELLIDO1 = aPELLIDO1;
            APELLIDO2 = aPELLIDO2;
            CELULAR = cELULAR;
            FECHA_NACIMIENTO = fECHA_NACIMIENTO;
            DIRRECCION = dIRRECCION;
            DETALLES = dETALLES;
            SEXO = sEXO;
        }

        public DataTable RegistrarPersona(PERSONA per, USUARIO usu)
        {
            try
            {
                return dat.OperarProcedimiento("CALL INSE_PERSONA ('" + per.ID_CEDULA + "', '" + per.NOMBRE1 + "', '" + per.APELLIDO1 + "', '" + per.CELULAR + "', '" + per.SEXO + "', '" + usu.USU_CORREO+ "', '" + usu.USU_CONTRASENA + "', '" + usu.USU_ROL + "');");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }

        public DataTable ConsultarPersona(USUARIO usu)
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_PERSONA ('" + usu.USU_CORREO + "');");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }

        public DataTable ConsultarPersona_ALL()
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_PERSONA_ALL ();");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }

        public DataTable Actualizar(PERSONA obj,USUARIO usu)
        {
            try
            {
                return dat.OperarProcedimiento("CALL UPDA_PERSONA ('" + obj.ID_CEDULA + "', '" + obj.NOMBRE1 + "', '" + obj.APELLIDO1 + "', '" + obj.FECHA_NACIMIENTO + "', '" + obj.SEXO + "', '" + obj.CELULAR + "', '" + obj.DETALLES + "', '" + obj.FOTO + "','" + usu.USU_CONTRASENA + "','" + usu.USU_ESTADO + "');");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }
    }
}