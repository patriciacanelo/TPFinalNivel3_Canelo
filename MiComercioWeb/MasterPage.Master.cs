using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using dominio;


namespace MiComercioWeb
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                                  
            if (!(Page is Login || Page is Registro || Page is Error || Page is WebForm1))
            {
                if (!Seguridad.sesionActiva(Session["trainee"]))
                {
                    ImgAvatar.ImageUrl = "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png";
                    Response.Redirect("Login.aspx", false);
                }                       
                else
                {
                    Cliente user = (Cliente)Session["trainee"];
                    lblUser.Text = user.Email;
                    if (!string.IsNullOrEmpty(user.ImagenPerfil))
                        ImgAvatar.ImageUrl = "~/Images/Perfil/" + user.ImagenPerfil;
                }
            }       
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx",false);
        }
    }
}