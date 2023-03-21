<%@ Page Title="Detalle" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DetalleArticulo.aspx.cs" Inherits="MiComercioWeb.DetalleArticulo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cuerpo" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container-fluid pt-5">
        <div class="container">
            <div class="text-center pb-2">
                <p class="section-title px-5"><span class="px-2">Detalle del artículo elegido</span></p>
                <p class="help-block text-danger"></p>
                 <asp:Button ID="btnAgregarFavoritos" runat="server" Text="Agregar a Favoritos" CssClass="btn btn-primary" OnClick="btnAgregarFavoritos_Click" />
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                      <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                    </svg>
                </div>
            <div class="row">
                <div class="col-lg-7 mb-5">
                    <div class="contact-form">
                        <div id="success"></div>
                            <div class="control-group">
                                <asp:Label ID="lblId" runat="server">Id</asp:Label>
                                <asp:TextBox ID="txtId" runat="server" class="form-control"></asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <asp:Label ID="lblCodigo" runat="server" Text="Código"></asp:Label>
                                <asp:TextBox ID="txtCodigo" runat="server" class="form-control"></asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                                <asp:TextBox ID="txtNombre" runat="server" class="form-control"></asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>
                            
                            <div class="control-group">
                                <asp:Label ID="lblMarca" runat="server" Text="Marca"></asp:Label> 
                                <asp:DropDownList ID="ddlTipo" runat="server" CssClass="form-select"></asp:DropDownList>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <asp:Label ID="lblCategoria" runat="server" Text="Categoria"></asp:Label>
                                <asp:DropDownList ID="ddlCategoria" runat="server" CssClass="form-select"></asp:DropDownList>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                  <asp:Label ID="Precio" runat="server">Precio</asp:Label>
                                  <asp:TextBox ID="txtPrecio" runat="server" class="form-control"></asp:TextBox>
                          <p class="help-block text-danger"></p>
                            </div>
                            
                    </div>
                </div>
                <div class="col-lg-5 mb-5">
                     
                    <div class="control-group">
                          <asp:Label ID="lblDescripcion" runat="server" Text="Descripción"></asp:Label>
                          <p class="help-block text-danger"></p>
                    </div>

                     <div class="control-group">
                          <asp:TextBox ID="txtDescripcion" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                          <p class="help-block text-danger"></p>
                     </div>
                    <asp:UpdatePanel ID="Cuerpo" runat="server">
                        <ContentTemplate>
                             <div class="control-group">
                               <asp:Label ID="lblImagenUrl" runat="server" Text="Imagen"></asp:Label>                    
                               <asp:TextBox ID="txtImagenUrl" runat="server" CssClass="form-control" 
                                   AutoPostBack="true" OnTextChanged="txtImagenUrl_TextChanged"></asp:TextBox>
                             </div>
                             <p class="help-block text-danger"></p>
                            <asp:Image ImageUrl="https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Placeholder_view_vector.svg/681px-Placeholder_view_vector.svg.png" 
                                ID="imgArticulo" runat="server" Width="60%" />
                        </ContentTemplate>
                    </asp:UpdatePanel>                                  
                </div>
            </div>
            
            <a href="Default.aspx" class="btn btn-primary px-4 mx-auto mb-4">Volver</a>
        </div>
    </div>
      
</asp:Content>
