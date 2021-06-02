<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="WebApplication1.Productos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Productos</h1>

    <div class="row">

        <% foreach (Dominio.Articulo item in lista)
            {%>

            <div class="col-md-4">

                <div class="card" style="width: 18rem;">
                    <img src="<% =item.ImagenUrl %>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><% = item.Nombre %></h5>
                        <p class="card-text"><% =item.Descripcion %></p>
                        <a href="DetalleArticulo.aspx?id=<% = item.Id %>" class="btn btn-primary">Detalle</a>
                    </div>
                </div>
            </div>


        <%} %>
    </div>
</asp:Content>
