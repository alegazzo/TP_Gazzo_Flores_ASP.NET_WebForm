<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetalleArticulo.aspx.cs" Inherits="WebApplication1.DetalleArticulo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Detalle Articulo</h1>
    <%--labels donde se muestra el detalle del articulo seleccionado.--%>
    <asp:Label Text="text" ID="LabelNombre" runat="server" />
    <asp:Label Text="text" ID="LabelDescripcion" runat="server" />
    <asp:Label Text="text" ID="LabelUrlImagen" runat="server" />
    <asp:Label Text="text" ID="LabelCodigo" runat="server" />
    <asp:Label Text="text" ID="LabelPrecio" runat="server" />
</asp:Content>
