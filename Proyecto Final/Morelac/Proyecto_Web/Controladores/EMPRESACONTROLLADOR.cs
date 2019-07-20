using System;
using System.Data;
using Proyecto_Web.Modelos;

namespace Proyecto_Web.Controladores
{
    public class EMPRESACONTROLLADOR
    {
        public EMPRESA modelo_empresa = new EMPRESA();

        public EMPRESACONTROLLADOR()
        {
            modelo_empresa = new EMPRESA();
        }

        public DataTable Update_Empresa(EMPRESA obj)
        {
            return obj.ActualizarEmpresa(obj);
        }

        public DataTable Update_Foto_Empresa(EMPRESA obj)
        {
            return obj.ActualizarEmpresaFoto(obj);
        }
    }
}