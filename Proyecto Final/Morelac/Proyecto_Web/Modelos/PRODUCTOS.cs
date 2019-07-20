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
    public class PRODUCTOS
    {
        private IDatos dat = new Datos();
        int ID_PRODCUTOS { get; set; }
        string PRO_NOMBRE { get; set; }
        float PRO_CANTIDAD { get; set; }
        double PRO_PRECIO { get; set; }

        public PRODUCTOS()
        {
            ID_PRODCUTOS = 0;
            PRO_NOMBRE = null;
            PRO_CANTIDAD = 0;
            PRO_PRECIO = 0;
        }
        public PRODUCTOS(int id,string nom,float cantidad, double precio)
        {
            ID_PRODCUTOS = id;
            PRO_NOMBRE = nom;
            PRO_CANTIDAD = cantidad;
            PRO_PRECIO = precio;
        }
        public bool RegistrarProducto(string NOM, float cant, double precio)
        {
            try
            {
                return dat.OperarDatos("CALL INSE_PRODUCTO ('" + NOM + "', '" + cant + "', '" + precio + "');");
            }
            catch (Exception)
            {
                return false;
            }
        }
        public DataTable ConsultarProducto(string ID)
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_PRODUCTO ('" + ID + "');");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }
        public bool ActualizarProducto(int id, string nom, string ubi, string dime)
        {
            try
            {
                return dat.OperarDatos("CALL UPDA_PRODUCTO ('" + id + "', '" + nom + "', '" + ubi + "', '" + dime + "');");
            }
            catch (Exception)
            {
                return false;
            }

        }
    }
}