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
    public partial class DetalleArticulo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtId.Enabled = false;
            txtCodigo.Enabled = false;
            txtNombre.Enabled = false;
            txtPrecio.Enabled = false;
            txtDescripcion.Enabled = false;
            ddlCategoria.Enabled = false;
            ddlTipo.Enabled = false;
            try
            {
                //configuracion inicial de la pantalla
            if (!IsPostBack)
                {
                    CategoriaNegocio categoria = new CategoriaNegocio();
                    MarcaNegocio marca = new MarcaNegocio();
                    List<Categoria> listac = categoria.listar();  //categoria
                    List<Marca> listam = marca.listar(); //Tipo

                    ddlCategoria.DataSource = listac;  //categoria
                    ddlCategoria.DataValueField = "Id";
                    ddlCategoria.DataTextField = "Descripcion";
                    ddlCategoria.DataBind();

                    ddlTipo.DataSource = listam; //marca
                    ddlTipo.DataValueField = "Id";
                    ddlTipo.DataTextField = "Descripcion";
                    ddlTipo.DataBind();
                }

                ////configuracion si estamos modificando
            string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";
            if (id != "" && !IsPostBack)
            {
                ArticuloNegocio negocio = new ArticuloNegocio();
                Articulo seleccionado = (negocio.listar(id))[0];

            //precargar todos los campos
                    txtId.Text = seleccionado.Id.ToString();
                    txtCodigo.Text = seleccionado.Codigo;
                    txtNombre.Text = seleccionado.Nombre;

                    //desplegables
                    ddlCategoria.SelectedValue = seleccionado.Tipo.Id.ToString();
                    ddlTipo.SelectedValue = seleccionado.Marca.Id.ToString();


                    txtPrecio.Text = seleccionado.Precio.ToString();
                    txtDescripcion.Text = seleccionado.Descripcion;
                    txtImagenUrl.Text = seleccionado.ImagenUrl;
                    txtImagenUrl_TextChanged(sender, e);

             }


            }
            catch (Exception ex)
            {
                Session.Add("error", ex);
                Response.Redirect("Error.aspx", false);
            }
        }

        protected void txtImagenUrl_TextChanged(object sender, EventArgs e)
        {
            imgArticulo.ImageUrl = txtImagenUrl.Text;
        }

        protected void btnAgregarFavoritos_Click(object sender, EventArgs e)
        {
            try
            {
                ArticuloFavorito favo = new ArticuloFavorito();
                ArticuloNegocioFavorito negociofavo = new ArticuloNegocioFavorito();

                //obtengo el id del cliente
                string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";
                Cliente user = (Cliente)Session["trainee"];
                favo.IdUser = user.Id;

                //obtengo el id del articulo seleccionado
                ArticuloNegocio negocio = new ArticuloNegocio();
                Articulo seleccionado = (negocio.listar(id))[0];
                favo.IdArticulo = seleccionado.Id;

                negociofavo.insertarFavoritoConSP(favo);

                Response.Redirect("Favoritos.aspx", false);
            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx", false);

            }
        }
    }
    
}