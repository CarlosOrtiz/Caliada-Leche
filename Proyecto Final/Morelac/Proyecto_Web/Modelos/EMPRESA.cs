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
    public class EMPRESA
    {
        private IDatos dat = new Datos();
        string ID_EMPRESA { set; get; }
        string EMP_NOMBRE { set; get; }
        string EMP_DIRECCION { set; get; }
        string EMP_CORREO { set; get; }
        string EMP_TELEFONO { set; get; }
        string EMP_DUENO { set; get; }
        string EMP_MISION { set; get; }
        string EMP_VISION { set; get; }
        string EMP_FOTO { set; get; }

        public EMPRESA()
        {
            ID_EMPRESA = null;
            EMP_NOMBRE = null;
            EMP_DIRECCION = null;
            EMP_CORREO = null;
            EMP_TELEFONO = null;
            EMP_DUENO = null;
            EMP_MISION = null;
            EMP_VISION = null;
            EMP_FOTO = null;
        }
        public EMPRESA(string id, string nom,string dire,string correo,string tele,string due,string mision,string vision,string foto)
        {
            ID_EMPRESA = id;
            EMP_NOMBRE = nom;
            EMP_DIRECCION = dire;
            EMP_CORREO = correo;
            EMP_TELEFONO = tele;
            EMP_DUENO = due;
            EMP_MISION = mision;
            EMP_VISION = vision;
            EMP_FOTO = foto;
        }
        public bool RegistrarEmpresa(string NOM1, string DIRE, string CORREO, string TELE, string DUENO, string MISION, string VISION, string FOTO)
        {
            try {
                return dat.OperarDatos("CALL INSE_EMPRESA ('" + NOM1 + "', '" + DIRE + "', '" + DUENO + "', '" + MISION + "', '" + VISION + "', '" + FOTO + "');");
            }catch (Exception){
                return false;
            }
        }
        public DataTable ConsultarEmpresa()
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_EMPRESA ();");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }

        // falta crear el procedimineto en la base de datos
        public DataTable ActualizarEmpresa(EMPRESA obj)
        {
            try
            {
                return dat.OperarProcedimiento("CALL UPDA_EMPRESA ('" + obj.ID_EMPRESA + "', '" + obj.EMP_NOMBRE + "', '" + obj.EMP_DIRECCION + "', '" + obj.EMP_CORREO + "', '" + obj.EMP_TELEFONO + "', '" + obj.EMP_DUENO + "', '" + obj.EMP_MISION + "', '" + obj.EMP_VISION + "');");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }

        }

        public DataTable ActualizarEmpresaFoto(EMPRESA obj)
        {
            try
            {
                return dat.OperarProcedimiento("CALL UPDA_FOTO_EMPRESA ('" + obj.ID_EMPRESA + "', '" + obj.EMP_FOTO + "');");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }

        }
    }
}