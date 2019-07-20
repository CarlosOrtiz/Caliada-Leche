using Proyecto_Web.Interface;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Proyecto_Web.Modelos;
using Proyecto_Web.Conection;

namespace Proyecto_Web.Modelos
{
    public class FACTURA
    {
        private IDatos dat = new Datos();
        int ID_FACTURA { set; get; }
        double TOTAL { set; get; }
        string PRO_X_PAGAR { set; get; }


        public FACTURA()
        {
            ID_FACTURA = 0;
            TOTAL = 0;
            PRO_X_PAGAR = null;
        }
        public FACTURA(int id, double total, string pro_x_pagar)
        {
            ID_FACTURA = id;
            TOTAL = total;
            PRO_X_PAGAR = pro_x_pagar;
        }
        public bool RegistrarFactura(int id, double total, string pro_x_pagar, string id_persona)
        {
            try
            {
                return dat.OperarDatos("INSERT INTO factura VALUES ('" + id + "','" + total + "', '" + pro_x_pagar + "','" + id_persona + "');");
            }
            catch (Exception)
            {
                return false;
            }
        }

        //public DataTable ConsultarFactura_All()
        //{
        //    try
        //    {
        //        return dat.ConsultarDatos("CALL CONS_ARTICULO_TABLA ();");
        //    }
        //    catch (Exception io)
        //    {
        //        estructura err = new estructura();
        //        return err.GetError(io.Message);
        //    }
        //}

        public bool Actualizar(string arturl, string artresumen)
        {
            try
            {
                return dat.OperarDatos("CALL UPDA_ARTICULO (" + arturl + "','" + artresumen + "');");
            }
            catch (Exception)
            {
                return false;
            }

        }
    }
}