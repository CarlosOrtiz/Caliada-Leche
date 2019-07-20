using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_Web.Patrones.FactoryMethod
{
    public class SELECCIONAR_PRUEBA
    {
        public TIPO_PRUEBA getTipoPrueba(String TipoPrueba)
        {
            if (TipoPrueba == null)
            {
                Console.WriteLine("Campo vacio");
            }

            if (TipoPrueba.Equals("FISICAS Y QUIMICAS"))
            {
                return new FISICASQUIMICAS();
            }
            if (TipoPrueba.Equals("ADULTERACION"))
            {
                return new ADULTERACION();
            }
            if (TipoPrueba.Equals(" "))
            {
                return new COMPOSICION();
            }
            if (TipoPrueba.Equals("ORGANOLEPTICO"))
            {
                return new ORGANOLEPTICO();
            }
            return null;
        }


    }
}