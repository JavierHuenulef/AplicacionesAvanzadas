<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.Master" AutoEventWireup="true" CodeBehind="ListarProductosAdmin.aspx.cs" Inherits="WhiteLine.ListarProductosAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Menu" runat="server">
    <div >
        <center>
    <asp:GridView ID="grdProductos" runat="server"></asp:GridView>
         </center>
     </div>
</asp:Content>
