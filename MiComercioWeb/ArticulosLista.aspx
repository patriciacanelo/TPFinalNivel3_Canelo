<%@ Page Title="Lista" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ArticulosLista.aspx.cs" Inherits="MiComercioWeb.ArticulosLista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cuerpo" runat="server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <div class="container-fluid pt-5 pb-3">
        <div class="container">
            <div class="text-center pb-2">
                <p class="section-title px-5"><span class="px-2">Lista de artículos</span></p>
            </div>
         </div>
        </div>
    <!--inicio filtro avanzado-->
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    
         <div class="row">
             <div class="col-6">
                 <div class="mb-3">
                     <asp:Label runat="server" Text="Filtrar por nombre"></asp:Label>
                     <asp:TextBox ID="txtFiltro" AutoPostBack="true" runat="server" OnTextChanged="Filtro_TextChanged" CssClass="form-control"></asp:TextBox>
                  </div>
               </div>
          </div>
            
         <div class="col-6" style="display:flex; flex-direction: column; justify-content:flex-end;">
           <div class="mb-3">
            <asp:CheckBox Text="Tildar para búsqueda avanzada" ID="chkAvanzado" runat="server" AutoPostBack="true" OnCheckedChanged="chkAvanzado_CheckedChanged" />
          </div>
        </div>
    <%if (chkAvanzado.Checked)
        { %>
         <div class="container">
            <div class="row">
                <div class="col-3">
                    <div class="mb-3">
                        <asp:Label runat="server" Text="Campo"></asp:Label>
                        <asp:DropDownList ID="ddlCampo" runat="server" OnSelectedIndexChanged="ddlCampo_SelectedIndexChanged" AutoPostBack="true">
                            <asp:ListItem Text="Nombre"></asp:ListItem>
                            <asp:ListItem Text="Categoría"></asp:ListItem>
                            <asp:ListItem Text="Precio"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-3">
                    <div class="mb-3">
                        <asp:Label runat="server" Text="Criterio"></asp:Label>
                        <asp:DropDownList ID="ddlCriterio" runat="server"></asp:DropDownList>
                    </div>
                </div>
                <div class="col-1">
                    <div class="mb-1">
                        <asp:Label runat="server" Text="Filtro"></asp:Label>
                    </div>
                </div>
                <div class="col-4">
                    <div class="mb-4">
                        <asp:TextBox ID="txtFiltroAvanzado" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col-1">
                    <div class="mb-1">
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn btn-primary" OnClick="btnBuscar_Click" />
                    </div>
                </div>
            </div>
         </div>
    <%} %>
 
    <!--fin filtro avanzado-->

    <!-- Grilla inicio -->
    
       <asp:GridView ID="dgvArticulos" runat="server" CssClass="table table-info" AutoGenerateColumns="false" 
           DataKeyNames="Id" OnSelectedIndexChanged="dgvArticulos_SelectedIndexChanged1"
           OnPageIndexChanging="dgvArticulos_PageIndexChanging" AllowPaging="true" PageSize="4">
           <Columns>
               <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
               <asp:BoundField HeaderText="Categoría" DataField="Tipo.Descripcion" />
               <asp:BoundField HeaderText="Precio" DataField="Precio" />
               <asp:CommandField HeaderText="Acción" ShowSelectButton="true" SelectText="Modificar/Eliminar" />
           </Columns>
       </asp:GridView>
     <!-- Grilla fin-->
  
       <a href="FormularioArticulo.aspx" class="btn btn-primary px-4 mx-auto mb-4">Agregar</a>
      </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
