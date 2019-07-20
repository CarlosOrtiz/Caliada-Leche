using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Proyecto_Web.Modelos;
using Proyecto_Web.Controladores;
using Proyecto_Web.Conection;
using Proyecto_Web.Interface;

namespace Proyecto_Web.Patrones.FactoryMethod
{
    public class ADULTERACION : TIPO_PRUEBA
    {
        private IDatos dat = new Datos();

        public string ID_PRUEBA { set; get; }
        public string FECHA { set; get; }
        public string OBSERVACION { set; get; }
        public string CANTIDAD { set; get; }
        public string AGUA { set; get; }
        public string CLORUROS { set; get; }
        public string SACAROSA { set; get; }

        public float Cant { set; get; }
        
        public override float getCantidad_leche()
        {
            Cant = 12;
            return Cant;
        }

        public DataTable Registrar_Prueba_Adulteracion(ADULTERACION obj)
        {
            try
            {
                return dat.OperarProcedimiento("CALL INSE_PRUEBA ('" + obj.ID_PRUEBA + "', '" + obj.FECHA + "', '" + obj.OBSERVACION + "', '" + obj.CANTIDAD + "', '" + obj.AGUA + "', '" + obj.CLORUROS + "', '" + obj.SACAROSA + "');");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }
    }
}