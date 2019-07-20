using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Proyecto_Web.Patrones.FactoryMethod;

namespace Proyecto_Web.Controladores
{
    public class ADULTERACIONCONTROLADOR
    {
        protected ADULTERACION Mol_Adulteracion = new ADULTERACION();

        public ADULTERACIONCONTROLADOR()
        {
            Mol_Adulteracion = new ADULTERACION();
        }

        public DataTable Guardar_Prueba_Adulteracion(ADULTERACION obj)
        {
            return obj.Registrar_Prueba_Adulteracion(obj);
        }
    }
}