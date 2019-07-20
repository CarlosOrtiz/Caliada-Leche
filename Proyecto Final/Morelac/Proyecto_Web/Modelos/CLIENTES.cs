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
    public class CLIENTES
    {
        private IDatos dat = new Datos();
        string NOM_CLIENTES;
        public CLIENTES()
        {
            NOM_CLIENTES = null;
        }
        public CLIENTES(string n)
        {
            NOM_CLIENTES = n;
        }
        public DataTable ConsultarClienteAll()
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_TODOS_CLIENTES ();");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }
        public DataTable ConsultarCliente_ID(string id)
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_CLIENTE_ID ('" + id + "');");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }
        public DataTable ConsultarClienteAll2()
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_CLIENTE_ALL ();");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }
    }
}