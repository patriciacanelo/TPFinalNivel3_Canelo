<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Eliminar.aspx.cs" Inherits="MiComercioWeb.Eliminar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cuerpo" runat="server">
     <div class="container-fluid pt-5 pb-3">
        <div class="container">
            <div class="text-center pb-2">
                <p class="section-title px-5"><span class="px-2">Favoritos</span></p>
                <h1 class="mb-4">Articulo eliminado de favoritos</h1>
            </div>
        </div>
    </div>

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container-fluid pt-5">
        <div class="container">

            <asp:GridView ID="dgvFavoritos" runat="server" CssClass="table table-info" AutoGenerateColumns="false" DataKeyNames="IdArticulo"
                 AllowPaging="true" PageSize="10" OnSelectedIndexChanged="dgvFavoritos_SelectedIndexChanged" OnPageIndexChanging="dgvFavoritos_PageIndexChanging">
                <Columns>
                    <asp:BoundField DataField="IdUser" HeaderText="IdUser" Visible="true" />
                    <asp:BoundField DataField="IdArticulo" HeaderText="IdArticulo" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="true" SelectText="Confirmar" />
                </Columns>
            </asp:GridView>
                
        </div>
        <a href="Default.aspx" class="btn btn-primary px-4 mx-auto mb-4">Volver</a>
    </div>

</asp:Content>
