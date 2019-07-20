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
    public class PROVEEDOR
    {
        private IDatos dat = new Datos();
        public string ID_PROVEEDOR { set; get; }
        public string NOM_PROVEEDOR { set; get; }
        public string ESTADO { set; get; }

        public PROVEEDOR()
        {
            ID_PROVEEDOR = null;
            NOM_PROVEEDOR = null;
            ESTADO = null;
        }

        public PROVEEDOR(string n, string x)
        {
            ID_PROVEEDOR = n;
            NOM_PROVEEDOR = x;
        }

        public DataTable RegistrarPruebas(string IP_PRUEBA, string FECHA, string OBSER, string PESO, string COLOR,
            string OLOR, string SABOR, string TEXTURA, string GRASA, string VITAMINA, string MINERALES, string PH,
            string LACTICO, string AGUA, string CLORUROS, string SACAROSA)
        {
            try
            {
                return dat.OperarProcedimiento("CALL INSE_PRUEBA ('" + IP_PRUEBA + "', '" + FECHA + "', '" + OBSER + "', '" + PESO + "', '" + COLOR + "', '" + OLOR + "', '" + SABOR + "', '" + TEXTURA + "', '" + GRASA + "', '" + VITAMINA + "', '" + MINERALES + "', '" + PH + "', '" + LACTICO + "', '" + AGUA + "', '" + CLORUROS + "', '" + SACAROSA  + "');");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }

        public DataTable ConsultarProvedoresAll()
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_TODOS_PROVEEDORES ();");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }

        public DataTable ConsultarTODAS_PRUEBAS()
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_RESULDADOS_PRUEBA ();");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }

        public DataTable ConsultarNumero_pruebas()
        {
            try
            {
                return dat.ConsultarDatos("CALL CANT_PRUEBAS ();");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }

        public DataTable ConsultarProvedores_ID(PROVEEDOR por)
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_PROVEEDOR_ID ('" + por.ID_PROVEEDOR + "');");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }

        public DataTable ConsultarProvedoresAll2()
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_PROVEEDOR_ALL ();");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }

        public DataTable ActualizarEstado_Proveedor(PROVEEDOR por)
        {
            try
            {
                return dat.OperarProcedimiento("CALL  UPDA_ESTADO_PROVEEDOR ('" + por.ID_PROVEEDOR + "','" + por.ESTADO + "');");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }

        }

        public DataTable ActualizarProveedor(int id, string cedula, string nom1, string nom2, string ape1, string ape2, string celular, string direccion, string detalle, string contra, string estado, string nom_finca, string ubicacion, string dimencion, string cant_leche, string fecha_entrega)
        {
            try
            {
                return dat.OperarProcedimiento("CALL UPDA_PROVEEDOR ('" + id + "', '" + cedula + "', '" + nom1 + "', '" + nom2 + "', '" + ape1 + "', '" + ape2 + "', '" + celular + "', '" + direccion + "','" + detalle + "', '" + contra + "', '" + estado + "', '" + nom_finca + "', '" + ubicacion + "','" + dimencion + "','" + cant_leche + "','" + fecha_entrega + "');");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }

        }
    }
}
