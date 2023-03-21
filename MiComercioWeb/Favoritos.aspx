<%@ Page Title="Favoritos" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Favoritos.aspx.cs" Inherits="MiComercioWeb.Favoritos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cuerpo" runat="server">
    <div class="container-fluid pt-5 pb-3">
        <div class="container">
            <div class="text-center pb-2">
                <p class="section-title px-5"><span class="px-2">Lista de Articulos</span></p>
                <h1 class="mb-4">Favoritos</h1>
            </div>
        </div>
    </div>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container-fluid pt-5">
        <div class="container">

            <asp:GridView ID="dgvArticulos" CssClass="table table-info" AutoGenerateColumns="false" DataKeyNames="id"
                OnSelectedIndexChanged="dgvArticulos_SelectedIndexChanged"
                OnPageIndexChanging="dgvArticulos_PageIndexChanging"  
                AllowPaging="true" PageSize="5" runat="server">
                <Columns>
                    <asp:BoundField DataField="id" Visible="true" />
                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                    <asp:BoundField HeaderText="Descripción" DataField="Descripcion" />
                    <asp:BoundField HeaderText="Precio" DataField="Precio" />
                    <asp:CommandField HeaderText="Seleccionar para borrar"  ShowSelectButton="true" SelectText="Borrar" />
                </Columns>
            </asp:GridView>

        </div>
        <a href="Default.aspx" class="btn btn-primary px-4 mx-auto mb-4">Volver</a>
    </div>
</asp:Content>
