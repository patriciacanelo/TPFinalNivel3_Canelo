<%@ Page Title="Registro" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="MiComercioWeb.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cuerpo" runat="server">
    <div class="container-fluid pt-5">
        <div class="container">
            <div class="text-center pb-2">
                <p class="section-title px-5"><span class="px-2">Complete con sus datos</span></p>
            </div>
            <div class="row">
                <div class="col-lg-7 mb-5">
                    <div class="contact-form">
                        <div id="success"></div>
                                <asp:Label class="form-label">Usuario</asp:Label>
                                 <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
                                 <p class="help-block text-danger"></p>
                            
                                <asp:Label class="form-label">Contraseña</asp:Label>
                                <asp:TextBox ID="txtPassword" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                                <p class="help-block text-danger"></p>

                            <div class="col-9">
                                <asp:Button ID="btnRegistrarse" runat="server" Text="Registrarse" CssClass="btn btn-primary py-2 px-4" OnClick="btnRegistrarse_Click" />
                                <a href="/">Cancelar</a>
                            </div>
                    </div>
                </div>
               
            </div>
        </div>
    </div>

</asp:Content>
