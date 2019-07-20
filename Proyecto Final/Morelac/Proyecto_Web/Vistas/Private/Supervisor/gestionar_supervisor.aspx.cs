using Proyecto_Web.Conection;
using Proyecto_Web.Interface;
using System;
using System.Data;

namespace Proyecto_Web.Vistas.Private
{
    public partial class gestionar_supervisor : System.Web.UI.Page
    {
        private IDatos da = new Datos();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["CORREO_ELECTRONICO"].ToString().Equals(null))
                {
                    Response.Redirect("~/Vistas/Public/Index.aspx");
                }
            }
            catch (Exception)
            {
                Response.Redirect("~/Vistas/Public/Index.aspx");
            }
            if (!IsPostBack)
            {
                // Establece la consulta SQL a ejecutar
                string consulta = "SELECT ID,NOMBRE FROM sexo";
                da.ConsultarDatos(consulta);
                // Asigna el valor a mostrar en el DropDownList
                sexolis.DataTextField = "NOMBRE"; ;
                // Asigna el valor del value en el DropDownList
                sexolis.DataValueField = "ID";
                // Llena el DropDownList con los datos
                sexolis.DataSource = da.ConsultarDatos(consulta);
                sexolis.DataBind();
            }

        }
        
        protected void Consultar(object sender, EventArgs e)
        {
            string query = "Select ID_PERSONA,NOMBRE1,NOMBRE2,APELLIDO1,APELLIDO2,CELULAR,NACIMIENTO,DIRECCION,ESTADO,DETALLES,SEXO_ID_SEXO From persona WHERE ID_PERSONA='"+buscar.Text+"'";
            da.ConsultarDatos(query);

            string nom1, nom2, ape1, ape2, celu, naci, direc, esta, deta, sexo, ident;
            foreach (System.Data.DataRow v in da.ConsultarDatos(query).Rows)
            {
                //aca haces las operaciones con cada fila de la tabla ej:
                ident = v["ID_PERSONA"].ToString();
                nom1 = v["NOMBRE1"].ToString();
                nom2 = v["NOMBRE2"].ToString();
                ape1 = v["APELLIDO1"].ToString();
                ape2 = v["APELLIDO2"].ToString();
                celu = v["CELULAR"].ToString();
                naci = v["NACIMIENTO"].ToString();
                direc = v["DIRECCION"].ToString();
                esta = v["ESTADO"].ToString();
                deta = v["DETALLES"].ToString();
                sexo = v["SEXO_ID_SEXO"].ToString();

                cedula.Enabled = false;
                cedula.Text = "" + ident;
                nombre1.Text = "" + nom1;
                nombre2.Text = "" + nom2;
                apellido1.Text = "" + ape1;
                apellido2.Text = "" + ape2;
                direccion.Text = "" + direc;
                celular.Text = "" + celu;
                nacimiento.Text = "" + naci;
                sexolis.Text = "" + sexo;
                estado.Text = "" + esta;
                detalle.Text = "" + deta;
                //SelectedValue

                //mi.ToString = mision;

            }
        }
        protected void Guardar(object sender, EventArgs e)
        {
            string query = "UPDATE persona SET NOMBRE1 = '" + nombre1.Text + "', NOMBRE2 = '" + nombre2.Text + "', APELLIDO1 = '" + apellido1.Text + "', APELLIDO2 = '" + apellido2.Text + "', CELULAR = " + celular.Text + ", DIRECCION = '" + direccion.Text + "', ESTADO = '" + estado.Text + "', DETALLES = '" + detalle.Text + "', SEXO_ID_SEXO=" + sexolis.SelectedValue + " WHERE ID_PERSONA =" + cedula.Text + "";
            da.OperarDatos(query);
        }
    }
}