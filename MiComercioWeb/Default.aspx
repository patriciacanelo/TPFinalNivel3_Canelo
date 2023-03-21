<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MiComercioWeb.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cuerpo" runat="server">

    <!-- Publicidad inicio -->
    <div class="container-fluid bg-primary px-0 px-md-5 mb-5">
        <div class="row align-items-center px-3">
            <div class="col-lg-6 text-center text-lg-left">
                <h4 class="text-white mb-4 mt-5 mt-lg-0">¡Bienvenidos!</h4>
                <h1 class="display-3 font-weight-bold text-white"> 20% Off</h1>
                <p class="text-white mb-4">Aprovecha descuentos en tu artículo favorito.</p>
            </div>
            <div class="col-lg-6 text-center text-lg-right">
                <img src="images/top_img.png" class="img-fluid mt-5" />
            </div>
        </div>
    </div>
    <!-- Publicidad Fin -->

    <div class="container-fluid pt-5">
        <div class="container">
            <div class="text-center pb-2">
                <p class="section-title px-5"><span class="px-2">Artículos Populares</span></p>
                <h1 class="mb-4">Tecnología para toda la familia</h1>
            </div>
            <div class="row">

                <asp:Repeater runat="server" ID="repRepetidor">
                    <ItemTemplate>
                        <div class="col-lg-4 mb-5" style="max-width: 18rem;">
                            <div class="card border-0 bg-light shadow-sm pb-2">   
                                <img class="card-img-top mb-2" src="<%#Eval("ImagenUrl") %>" alt="" height="300" >
                                <div class="card-body text-center">
                                    <h4 class="card-title"><%#Eval("Nombre") %> </h4>
                                    <p class="card-text"><%#Eval("Descripcion") %></p>
                                
                                <a href="DetalleArticulo.aspx?id=<%#Eval("Id") %>" class="btn btn-primary px-4 mx-auto mb-4">Ver detalle</a>
                                 <p class="help-block text-danger"></p>                                   

                               </div>     
                            </div>
                        </div>   
                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </div>
    </div>
                   
     
</asp:Content>
