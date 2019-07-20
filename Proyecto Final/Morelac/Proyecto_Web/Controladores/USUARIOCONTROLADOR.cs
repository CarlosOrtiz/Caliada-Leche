using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Proyecto_Web.Modelos;

namespace Proyecto_Web.Controladores
{
    public class USUARIOCONTROLADOR
    {
        public USUARIO Mod_Usuario = new USUARIO();

        public USUARIOCONTROLADOR()
        {
            Mod_Usuario = new USUARIO();
        }

        public DataTable Insert_Usuario(USUARIO obj)
        {
            return obj.Registrarusuario(obj);
        }

        public DataTable Select_Usuario_Correo_Contrasena(USUARIO obj)
        {
            return obj.ConsultarUsuarios(obj);
        }

        public DataTable Select_Cantidad_Usuario(USUARIO obj)
        {
            return obj.ConsultarCant_Usuarios();
        }

        public DataTable Update_Usuario(USUARIO obj)
        {
            return obj.Actualizar_Usuario(obj);
        }
    }
}