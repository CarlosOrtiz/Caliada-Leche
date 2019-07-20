using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Proyecto_Web.Modelos;

namespace Proyecto_Web.Controladores
{
    public class PROVEEDORCONTROLADOR
    {
        public PROVEEDOR Mod_Supervisor = new PROVEEDOR();

        public PROVEEDORCONTROLADOR()
        {
            Mod_Supervisor = new PROVEEDOR();
        }

        public DataTable Select_Proveedor_All(PROVEEDOR obj)
        {
            return obj.ConsultarProvedoresAll();
        }

        public DataTable Consultar_TODAS_PRUEBAS(PROVEEDOR obj)
        {
            return obj.ConsultarTODAS_PRUEBAS();
        }

        public DataTable Consultar_Numero_pruebas(PROVEEDOR obj)
        {
            return obj.ConsultarNumero_pruebas();
        }

        public DataTable ConsultarProvedores_ID(PROVEEDOR obj)
        {
            return obj.ConsultarProvedores_ID(obj);
        }

        public DataTable ActualizarEstado_Proveedor(PROVEEDOR obj)
        {
            return obj.ActualizarEstado_Proveedor(obj);
        }

    }
}