using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Authentication.ExtendedProtection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;


namespace MiComercioWeb
{
    public partial class Favoritos : System.Web.UI.Page
    {
        public virtual bool ShowSelectButton { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";
                if (!IsPostBack)
                {
                    if (Seguridad.sesionActiva(Session["trainee"]))
                    {
                        Cliente user = (Cliente)Session["trainee"];

                        ArticuloNegocio negocio = new ArticuloNegocio();
                        Articulo seleccionado = (negocio.listar(id))[0];
                        ArticuloNegocioFavorito negociofavo = new ArticuloNegocioFavorito();
                        ArticuloFavorito favo = new ArticuloFavorito();


                        favo.IdUser = user.Id;
                        favo.IdArticulo = seleccionado.Id;

                        Session.Add("listaArticulos", negociofavo.listarFavoritoConSP(favo));
                        dgvArticulos.DataSource = Session["listaArticulos"];
                        dgvArticulos.DataBind();

                    }
                    
                }

            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx", false);
            }


        }

        protected void dgvArticulos_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = dgvArticulos.SelectedRow.Cells[0].Text;
            Response.Redirect("Eliminar.aspx?id=" + id);
        }


        protected void dgvArticulos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgvArticulos.DataSource = Session["listaArticulos"];
            dgvArticulos.PageIndex = e.NewPageIndex;
            dgvArticulos.DataBind();
        }

    }
}