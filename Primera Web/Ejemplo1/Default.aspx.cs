using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejemplo1
{
    public partial class _Default : Page
    {
        public string user { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(Request.QueryString["nombre"] != null)
            //{
            //    string user = Request.QueryString["nombre"].ToString();
            //    lblUser.Text = user + " tu ingreso fue exitoso!";
            //}
            //else
            //{
            //    lblUser.Text = "LOGUEATE!";
            //}

            // otra forma de validar usando operador ternario:

            //user = Request.QueryString["nombre"] != null ? Request.QueryString["nombre"].ToString() : "";
            user = Session["usuario"] != null ?  Session["usuario"].ToString() : "";
            lblUser.Text = user + " tu ingreso fue exitoso!";
        }
    }
}