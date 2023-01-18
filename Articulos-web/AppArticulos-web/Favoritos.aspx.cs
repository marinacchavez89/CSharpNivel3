using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace AppArticulos_web
{
    public partial class Favoritos : System.Web.UI.Page
    {
        public List<Articulo> ListaArticulo { get; set; }
        

        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            ListaArticulo = negocio.listarConSP();

            if (!IsPostBack)
            {
                repRepetidor.DataSource = ListaArticulo;
                repRepetidor.DataBind();

            }
          
        }
    }
}