using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;

namespace ejemplo_web
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            if (Session["listaAutos"] == null)
            {
                AutoNegocio negocio = new AutoNegocio();
                Session.Add("listaAutos", negocio.listar());
            }
            
            dgvAutos.DataSource = Session["listaAutos"];
            dgvAutos.DataBind();
        }

        protected void dgvAutos_SelectedIndexChanged(object sender, EventArgs e)
        {
            //var algo = dgvAutos.SelectedRow.Cells[0].Text; 
            var id = dgvAutos.SelectedDataKey.Value.ToString();
            Response.Redirect("AutoForm.aspx?id=" + id);            
        }
        
    }
}