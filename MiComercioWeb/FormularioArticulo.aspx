<%@ Page Title="Agregar" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FormularioArticulo.aspx.cs" Inherits="MiComercioWeb.FormularioArticulo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cuerpo" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container-fluid pt-5">
        <div class="container">
            <div class="text-center pb-2">
                <p class="section-title px-5"><span class="px-2">Artículo elegido</span></p>
                <h1 class="mb-4">Formulario del artículo </h1>
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
                            <div>
                                <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" CssClass="btn btn-primary py-2 px-4" OnClick="btnAceptar_Click" />
                                <a href="ArticulosLista.aspx">Cancelar</a>
                            </div>
                    </div>
                    <p class="help-block text-danger"></p>
                     <div class="row">
                     <div class="col-6">   
                   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                       <ContentTemplate>
                            <div class="mb-3">
                                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" CssClass="btn btn-danger py-2 px-4"/>
                            </div>

                        <%--confirmacion--%>

                             <%if (ConfirmaEliminacion)  { %>
                                <div class="mb-3">
                                    <asp:CheckBox ID="chkConfirmaEliminacion" runat="server" Text="Confirmar Eliminación" />
                                    <asp:Button ID="btnConfirmaEliminar" runat="server" Text="Eliminar" CssClass="btn btn-outline-danger py-2 px-4" OnClick="btnConfirmaEliminar_Click"/>
                                </div>
                             <%} %>
                       </ContentTemplate>
                   </asp:UpdatePanel>
                    </div>
                    </div>
                </div>
                <div class="col-lg-5 mb-5">
                     
                    <div class="control-group">
                          <asp:Label ID="lblDescripcion" runat="server" Text="Descripción"></asp:Label>
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
        </div>
    </div>
      
</asp:Content>
