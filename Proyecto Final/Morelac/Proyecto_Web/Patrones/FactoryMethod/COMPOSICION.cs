﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Proyecto_Web.Conection;
using Proyecto_Web.Interface;
using Proyecto_Web.Modelos;

namespace Proyecto_Web.Patrones.FactoryMethod
{
    public class COMPOSICION:TIPO_PRUEBA
    {
        private IDatos dat = new Datos();
        public float Cant { set; get; }
        public string ID_PRUEBA { set; get; }
        public string CANTIDAD { set; get; }
        public string FECHA { set; get; }
        public string OBSERVACION { set; get; }
        public string GRASA { set; get; }
        public string MINERALES { set; get; }
        public string VITAMINAS { set; get; }

        public override float getCantidad_leche()
        {
            Cant = 11;
            return Cant;
        }

        public DataTable Registrar_Prueba_Composicion(COMPOSICION obj)
        {
            try
            {
                return dat.OperarProcedimiento("CALL INSE_PRUEBA ('" + obj.ID_PRUEBA + "', '" + obj.FECHA + "', '" + obj.OBSERVACION + "', '" + obj.CANTIDAD + "', '" + obj.GRASA + "', '" + obj.MINERALES + "', '" + obj.VITAMINAS + "');");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }
    }
}