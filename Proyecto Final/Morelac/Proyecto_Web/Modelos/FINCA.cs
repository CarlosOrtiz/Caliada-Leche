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
    public class FINCA
    {
        private IDatos dat = new Datos();
        string FIN_NOMBRE { get; set; }
        string FIN_UBICACION { get; set; }
        string FIN_DIMENCION { get; set; }

        public FINCA()
        {
            FIN_NOMBRE = null;
            FIN_DIMENCION = null;
            FIN_UBICACION = null;

        }
        public FINCA(string nom, string dimencion, string ubicacion)
        {
            FIN_NOMBRE = nom;
            FIN_DIMENCION = dimencion;
            FIN_UBICACION = ubicacion;

        }
        public bool RegistrarFinca(string NOM, string UBI, string DIM, string ID_PERSONA)
        {
            try
            {
                return dat.OperarDatos("CALL INSE_FINCA ('" + NOM  + "', '" + UBI + "', '" + DIM + "', '" + ID_PERSONA + "');");
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool RegistrarFincaLenche(string cantidad_leche, string fehca,  string ID_FINCAA)
        {
            try
            {
                return dat.OperarDatos("CALL INSE_LECHE('" + cantidad_leche + "', '" + fehca + "', '" + ID_FINCAA + "');");
            }
            catch (Exception)
            {
                return false;
            }
        }

        public DataTable ConsultarFinca()
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_FINCA ();");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }
        public bool Actualizar(int id, string nom, string ubi, string dime)
        {
            try
            {
                return dat.OperarDatos("CALL UPDA_FINCA ('" + id + "', '" + nom + "', '" + ubi + "', '" + dime + "');");
            }
            catch (Exception)
            {
                return false;
            }

        }
    }
}