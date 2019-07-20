using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Proyecto_Web.Modelos;
using Proyecto_Web.Controladores;
using Proyecto_Web.Conection;
using Proyecto_Web.Interface;


namespace Proyecto_Web.Patrones.Adapter
{
    public abstract class PRUEBA
    {
        private IDatos dat = new Datos();
        private PROVEEDOR ModProveedor = new PROVEEDOR();
        private PROVEEDORCONTROLADOR ConProveedor = new PROVEEDORCONTROLADOR();
        public abstract string ID_PRUEBA { get; set; }
        public abstract string FECHA { set; get; }
        public abstract string OBSER { get; set; }
        public abstract string PESO { set; get; }
        public abstract string COLOR { get; set; }
        public abstract string OLOR { set; get; }
        public abstract string SABOR { get; set; }
        public abstract string TEXTURA { set; get; }
        public abstract string GRASA { set; get; }
        public abstract string VITAMINA { get; set; }
        public abstract string MINERALES { set; get; }
        public abstract string PH { get; set; }
        public abstract string LACTICO { set; get; }
        public abstract string AGUA { get; set; }
        public abstract string CLORUROS { set; get; }
        public abstract string SACAROSA { set; get; }
        public abstract string ANTI { get; set; }

        public PRUEBA()
        {
        ID_PRUEBA = null;
            FECHA = null;
            OBSER = null;
            PESO = null;
            COLOR = null;
            OLOR = null;
            SABOR = null;
            TEXTURA = null;
            GRASA = null;
            VITAMINA = null;
            MINERALES = null;
            PH = null;
            LACTICO = null;
            AGUA = null;
            CLORUROS = null;
            SACAROSA = null;
            ANTI = null;
    }

        public PRUEBA(string a, string b,string c,string d,string e,string f,string g,string h,string i,string j,string k,string m,string n,string o,string p ,string q,string r)
        {
            ID_PRUEBA = a;
            FECHA = b;
            OBSER = c;
            PESO = d;
            COLOR = e;
            OLOR = f;
            SABOR = g;
            TEXTURA = h;
            GRASA = i;
            VITAMINA = j;
            MINERALES = k;
            PH = m;
            LACTICO = n;
            AGUA = o;
            CLORUROS = p;
            SACAROSA = q;
            ANTI = r;
        }

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

    }
}