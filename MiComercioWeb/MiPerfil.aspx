<%@ Page Title="Mi Perfil" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MiPerfil.aspx.cs" Inherits="MiComercioWeb.MiPerfil" %>
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
                        <form name="sentMessage" id="contactForm" novalidate="novalidate">
                            <div class="control-group">

                                <asp:Label Text="Email">Usuario:</asp:Label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <asp:Label ID="Label1" runat="server" Text="Label">Nombre:</asp:Label>
                                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <asp:Label ID="Label2" runat="server" Text="Label">Apellido:</asp:Label>
                                <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control"></asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>
                            
                            <div>
                                <asp:Button class="btn btn-primary py-2 px-4" ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
                                <a href="/">Cancelar</a>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-5 mb-5">
                      <asp:Label ID="Label4" runat="server" Text="Label">Imagen Perfil:</asp:Label>
                       <input id="txtImagen" type="file"  runat="server" class="form-control"/>
                      <p class="help-block text-danger"></p>  
                      <asp:Image ID="imgNuevoPerfil"  ImageUrl="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"
                          runat ="server" CssClass="img-fluid m-3" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
