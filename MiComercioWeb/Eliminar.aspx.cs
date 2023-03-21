using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace MiComercioWeb
{
    public partial class Eliminar : System.Web.UI.Page
    {
        public virtual bool ShowDeleteButton { get; set; }
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

                        negociofavo.DeleteFavorito(favo);
                    }

                }

            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx", false);
            }
        }

        protected void dgvFavoritos_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void dgvFavoritos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }
    }
}