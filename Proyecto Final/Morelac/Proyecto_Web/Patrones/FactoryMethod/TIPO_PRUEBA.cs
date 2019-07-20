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
    public abstract class TIPO_PRUEBA
    {
        private IDatos dat = new Datos();
        private float Cantidad_leche { set; get; }

        public abstract float getCantidad_leche();

        public DataTable Registrar_Prueba(string IP_PRUEBA, string FECHA, string OBSER, string PESO, string COLOR,
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


        public float RegistrarCantidadLeche(float ml)
        {



            Cantidad_leche = ml;
            return ml;
        }
    }
}