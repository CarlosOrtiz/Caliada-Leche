using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Proyecto_Web.Modelos;

namespace Proyecto_Web.Controladores
{
    public class PERSONACONTROLADOR
    {
        PERSONA modelo_persona = new PERSONA();

        public PERSONACONTROLADOR()
        {
            modelo_persona = new PERSONA();
        }

        public DataTable Insert_Persona(PERSONA obj, USUARIO usu)
        {
            return obj.RegistrarPersona(obj,usu);
        }

        public DataTable Select_Persona_Correo(USUARIO obj)
        {
            return modelo_persona.ConsultarPersona(obj);
        }

        public DataTable Select_Persona_All(PERSONA obj)
        {
            return obj.ConsultarPersona_ALL();
        }

        public DataTable Update_Persona(PERSONA obj,USUARIO usu)
        {
            return obj.RegistrarPersona(obj,usu);
        }

       

    }
}