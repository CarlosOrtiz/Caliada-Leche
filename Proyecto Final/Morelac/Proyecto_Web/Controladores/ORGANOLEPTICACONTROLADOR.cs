using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Proyecto_Web.Patrones.FactoryMethod;

namespace Proyecto_Web.Controladores
{
    public class ORGANOLEPTICACONTROLADOR
    {
        protected ORGANOLEPTICO Mol_Organoleptico = new ORGANOLEPTICO();

        public ORGANOLEPTICACONTROLADOR()
        {
            Mol_Organoleptico = new ORGANOLEPTICO();
        }

        public DataTable Guardar_Prueba_Organolepticas(ORGANOLEPTICO obj)
        {
            return obj.Registrar_Prueba_Organolepticas(obj);
        }
    }
}