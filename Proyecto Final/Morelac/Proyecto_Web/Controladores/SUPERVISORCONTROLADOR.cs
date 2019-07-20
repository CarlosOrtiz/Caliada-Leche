using Proyecto_Web.Modelos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Proyecto_Web.Controladores
{
    public class SUPERVISORCONTROLADOR
    {

        public SUPERVISOR Mod_Supervisor = new SUPERVISOR();

        public SUPERVISORCONTROLADOR()
        {
            Mod_Supervisor = new SUPERVISOR();
        }

        public DataTable Select_Supervisor_All(SUPERVISOR obj)
        {
            return obj.ConsultarSupervisorAll();
        }

        public DataTable Select_Supervisor_ID(SUPERVISOR obj)
        {
            return obj.ConsultarSupervisor_ID(obj);
        }

        public DataTable Select_Supervisor_All2(SUPERVISOR obj)
        {
            return obj.ConsultarSupervisorAll2();
        }
    }
}