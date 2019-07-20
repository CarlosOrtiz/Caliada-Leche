using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Proyecto_Web.Conection;
using Proyecto_Web.Interface;
using Proyecto_Web.Modelos;

namespace Proyecto_Web.Patrones.FactoryMethod
{
    public class ORGANOLEPTICO : TIPO_PRUEBA
    {
        private IDatos dat = new Datos();
        public float Cant { set; get; }
        public string FK_PERSONA { set; get; }
        public string CANTIDAD { set; get; }
        public string FECHA { set; get; }
        public string OBSERVACION { set; get; }
        public string TEXTURA { set; get; }
        public string COLOR { set; get; }
        public string SABOR { set; get; }
        public string OLOR { set; get; }

        public override float getCantidad_leche()
        {
            Cant = 11;
            return Cant;
        }

        public DataTable Registrar_Prueba_Organolepticas(ORGANOLEPTICO obj)
        {
            try
            {
                return dat.OperarProcedimiento("CALL INSE_ORGANOLEPTICO2 ('" + obj.FK_PERSONA + "', '" + obj.FECHA + "', '" + obj.OBSERVACION + "', '" + obj.CANTIDAD + "', '" + obj.TEXTURA + "', '" + obj.COLOR + "', '" + obj.SABOR + "', '" + obj.OLOR + "');");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }

    }
}