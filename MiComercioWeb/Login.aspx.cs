﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace MiComercioWeb
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Cliente trainee = new Cliente();
            ClienteNegocio negocio = new ClienteNegocio();
            try
            {
                trainee.Email = txtEmail.Text;
                trainee.Pass = txtPassword.Text;
                if (negocio.Login(trainee))
                {
                    Session.Add("trainee", trainee);
                    Response.Redirect("MiPerfil.aspx", false);
                }
                else
                {
                    Session.Add("error", "Usuario o contraseña incorrectos");
                    Response.Redirect("Error.aspx", false);
                }

            }
           
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx");

            }
        }
    }
}