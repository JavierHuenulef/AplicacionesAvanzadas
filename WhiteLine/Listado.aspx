<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Listado.aspx.cs" Inherits="WhiteLine.Listado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="menu" runat="server">
        <div id="contenido">       
            <center>
            <asp:Label ID="lblModelo" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="lblMarca" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="lblCategoria" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="lblDescripcion" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="lblPrecio" runat="server" Text="Label"></asp:Label>
            <br />
                </center>
        </div>
</asp:Content>
