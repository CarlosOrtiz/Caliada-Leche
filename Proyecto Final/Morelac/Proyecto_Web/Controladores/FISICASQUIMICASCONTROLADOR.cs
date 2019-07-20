using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Proyecto_Web.Patrones.FactoryMethod;

namespace Proyecto_Web.Controladores
{
    public class FISICASQUIMICASCONTROLADOR
    {
        protected FISICASQUIMICAS Mol_FisicaQuimica = new FISICASQUIMICAS();

        public FISICASQUIMICASCONTROLADOR()
        {
            Mol_FisicaQuimica = new FISICASQUIMICAS();
        }

        public DataTable Guardar_Prueba_FisicaQuimica(FISICASQUIMICAS obj)
        {
            return obj.Registrar_Prueba_FisicasQuimicas(obj);
        }
    }
}