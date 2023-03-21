<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="MiComercioWeb.Error" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cuerpo" runat="server">
    <h1>HUBO UN ERROR</h1>
    
    <asp:Label ID="lblError" runat="server"></asp:Label>
    <div class="row">
        <div class="col-lg-5 mb-3">
              <a href="Default.aspx" class="btn btn-primary px-4 mx-auto mb-4">Volver</a>
        </div>
   </div>
   
</asp:Content>
