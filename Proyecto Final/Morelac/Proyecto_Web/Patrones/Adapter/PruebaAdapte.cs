using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Proyecto_Web.Controladores;
using Proyecto_Web.Modelos;
using Proyecto_Web.Conection;
using Proyecto_Web.Interface;

namespace Proyecto_Web.Patrones.Adapter
{
    public abstract class PruebaAdapte:PRUEBA
    {
        private IDatos dat = new Datos();
        private PRUEBA_MEDICAMENTO NuevaPrueba { get; set; }

        public PruebaAdapte()
        {
            NuevaPrueba = new PRUEBA_MEDICAMENTO();
        }

        public new DataTable Registrar_Prueba(string IP_PRUEBA, string FECHA, string OBSER, string PESO, string COLOR,
            string OLOR, string SABOR, string TEXTURA, string GRASA, string VITAMINA, string MINERALES, string PH,
            string LACTICO, string AGUA, string CLORUROS, string SACAROSA, string ANTI)
        {
            try
            {
                return dat.OperarProcedimiento("CALL INSE_PRUEBA ('" + IP_PRUEBA + "', '" + FECHA + "', '" + OBSER + "', '" + PESO + "', '" + COLOR + "', '" + OLOR + "', '" + SABOR + "', '" + TEXTURA + "', '" + GRASA + "', '" + VITAMINA + "', '" + MINERALES + "', '" + PH + "', '" + LACTICO + "', '" + AGUA + "', '" + CLORUROS + "', '" + SACAROSA + "', '" + ANTI + "');");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }

    }
}