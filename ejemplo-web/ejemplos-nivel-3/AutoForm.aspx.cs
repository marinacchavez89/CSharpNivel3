using System;
using System.Collections.Generic;
using System.Configuration;
using System.Dynamic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;

namespace ejemplo_web
{
    public partial class AutoForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlColores.Items.Add("Negro");
                ddlColores.Items.Add("Blanco");
                ddlColores.Items.Add("Rojo");
            }

            if (Request.QueryString["id"] != null)
            {
                int id = int.Parse(Request.QueryString["id"].ToString());
                List<Auto> temporal = (List<Auto>)Session["listaAutos"];
                Auto seleccionado = temporal.Find(x => x.Id == id);
                txtModelo.Text = seleccionado.Modelo;
                txtId.Text = seleccionado.Id.ToString();
                txtId.ReadOnly = true;
                txtDescripcion.Text = seleccionado.Descripcion;
                ddlColores.SelectedItem.Text = seleccionado.Color;
                chkUsado.Checked = seleccionado.Usado;
                txtFecha.Text = seleccionado.Fecha.ToString("yyyy-MM-dd");
                if (rdbImportado.Checked)
                {
                    rdbImportado.Checked = seleccionado.Importado;
                }
                else
                {
                    rdbNacional.Checked = seleccionado.Importado;
                }
            }           
            
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
            {
                Auto a = new Auto();
                a.Id = int.Parse(txtId.Text);
                a.Modelo = txtModelo.Text;
                a.Descripcion = txtDescripcion.Text;
                a.Color = ddlColores.SelectedValue;
                a.Fecha = DateTime.Parse(txtFecha.Text);
                a.Usado = chkUsado.Checked;

                if (rdbImportado.Checked)
                    a.Importado = true;
                else if (rdbNacional.Checked)
                    a.Importado = false;

                //En un escenario normal esto lo mandaria a un back(base de datos) llamando a algun método.
                //((List<Auto>)Session["listaAutos"]).Add(a); --> forma larga.

                List<Auto> temporal = (List<Auto>)Session["listaAutos"];
                temporal.Add(a);

                Response.Redirect("Default.aspx");
            }           

        }

        protected void rdbImportado_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                
                int id = int.Parse(Request.QueryString["id"].ToString());
                List<Auto> temporal = (List<Auto>)Session["listaAutos"];
                Auto seleccionado = temporal.Find(x => x.Id == id);
                txtModelo.Text = seleccionado.Modelo;
                txtId.Text = seleccionado.Id.ToString();
                txtId.ReadOnly = true;
                txtDescripcion.Text = seleccionado.Descripcion;
                ddlColores.SelectedItem.Text = seleccionado.Color;
                chkUsado.Checked = seleccionado.Usado;
                txtFecha.Text = seleccionado.Fecha.ToString("yyyy-MM-dd");
                if (rdbImportado.Checked)
                {
                    rdbImportado.Checked = seleccionado.Importado;
                }
                else
                {
                    rdbNacional.Checked = seleccionado.Importado;
                }

                temporal.Remove(seleccionado);

                Response.Redirect("Default.aspx");
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                
                int id = int.Parse(Request.QueryString["id"].ToString());
                List<Auto> temporal = (List<Auto>)Session["listaAutos"];
                Auto seleccionado = temporal.Find(x => x.Id == id);
                seleccionado.Id = int.Parse(txtId.Text);
                seleccionado.Modelo = txtModelo.Text;
                seleccionado.Descripcion = txtDescripcion.Text;
                seleccionado.Color = ddlColores.SelectedValue;
                seleccionado.Fecha = DateTime.Parse(txtFecha.Text);
                seleccionado.Usado = chkUsado.Checked;

                
                 if (rdbImportado.Checked)
                        seleccionado.Importado = true;
                 else if (rdbNacional.Checked)
                        seleccionado.Importado = false;  
            }

            Response.Redirect("Default.aspx");
        }
    }
}