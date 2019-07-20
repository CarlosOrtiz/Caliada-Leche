using Proyecto_Web.Conection;
using Proyecto_Web.Interface;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Proyecto_Web.Modelos
{
    public class GERENTE
    {
        private IDatos dat = new Datos();
        string NOM_GERENTE;
        public GERENTE()
        {
            NOM_GERENTE = null;
        }
        public GERENTE(string n)
        {
            NOM_GERENTE = n;
        }
        public DataTable ConsultarGerenteAll()
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_TODOS_GERENTES ();");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }
        public DataTable ConsultarGerente_ID(string id)
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_GERENTE_ID ('" + id + "');");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }
        public DataTable ConsultarGerenteAll2()
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_GERENTE_ALL ();");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }
    }
}