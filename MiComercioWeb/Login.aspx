<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MiComercioWeb.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cuerpo" runat="server">
     <div class="container-fluid pt-5">
        <div class="container">
            <div class="text-center pb-2">
                <p class="section-title px-5"><span class="px-2">iniciar sesion</span></p>
            </div>
            <div class="row">
                <div class="col-lg-5 mb-3">
                    <asp:Label runat="server" Text="Login"></asp:Label>  
                    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>   
                 </div>
                </div>
             <div class="row">
                <div class="col-lg-5 mb-3">
                    <asp:Label runat="server" Text="Contraseña"></asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </div>
              </div>
                  <asp:Button ID="btnLogin" runat="server" Text="Iniciar Sesión" CssClass="btn btn-primary py-2 px-4" OnClick="btnLogin_Click" />
                 <a href="/">Cancelar</a>
            
        </div>
    </div>
</asp:Content>
