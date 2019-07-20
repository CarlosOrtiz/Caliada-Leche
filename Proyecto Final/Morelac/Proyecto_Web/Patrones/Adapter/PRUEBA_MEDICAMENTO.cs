using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Proyecto_Web.Conection;
using Proyecto_Web.Interface;
using Proyecto_Web.Modelos;

namespace Proyecto_Web.Patrones.Adapter
{
    public class PRUEBA_MEDICAMENTO
    {
        private IDatos dat = new Datos();
        public string ID_PRUEBAM2 { set; get; }
        public string FECHAM2 { set; get; }
        public string OBSERVACIONM2 { set; get; }
        public string MEDICAMENTO2 { set; get; }
        public string CANTIDAD2 { set; get; }
        public string ESTADO2 { set; get; }
        public string FK_PERSONA2 { set; get; }

        public DataTable Registrar_Prueba_Antibiotico(string MEDICAMENTO, string CANTIDAD, string VALOR, string OBSERVACION,  string FK_PERSONA)
        {
            try
            {
                return dat.OperarProcedimiento("CALL INSE_RESIDUOS_MEDICAMENTOS ('" + MEDICAMENTO + "', '" + CANTIDAD + "', '" + VALOR + "', '" + OBSERVACION + "', '" + FK_PERSONA + "');");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }

    }
}