using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Proyecto_Web.Patrones.FactoryMethod;

namespace Proyecto_Web.Controladores
{
    public class COMPOSICIONCONTROLADOR
    {
        protected COMPOSICION Mol_Composicion = new COMPOSICION();

        public COMPOSICIONCONTROLADOR()
        {
            Mol_Composicion = new COMPOSICION();
        }

        public DataTable Guardar_Prueba_Adulteracion(COMPOSICION obj)
        {
            return obj.Registrar_Prueba_Composicion(obj);
        }
    }
}