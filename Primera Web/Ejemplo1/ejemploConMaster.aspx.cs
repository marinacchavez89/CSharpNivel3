using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejemplo1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            if(!IsPostBack)
                txtNombre.Text = "Ingrese su nombre...";
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            string password = txtPassword.Text;
            lblSaludo.Text = "Hola " + nombre;

            Session.Add("usuario", nombre);
            Session.Add("pass", password);

            //Evitar el uso de responde asi a secas porque sobrecarga el servidor.
            //Se le agrega el false para que no cancele con un end lo que esta ejecutando y envie a una excepcion.
            //Response.Redirect("Default.aspx?nombre=" + nombre + "&pass=" + txtPassword.Text, false);
            Response.Redirect("Default.aspx", false);
        }

        protected void txtNombre_TextChanged(object sender, EventArgs e)
        {
            lblSecundario.Text = txtNombre.Text;
        }
    }
}