<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="ListarProductos.aspx.cs" Inherits="WhiteLine.ListaProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="menu" runat="server">
    <div >
        <center>
    <asp:GridView ID="grdProductos" Class="table-dark" runat="server"></asp:GridView>
         </center>
     </div>
</asp:Content>
