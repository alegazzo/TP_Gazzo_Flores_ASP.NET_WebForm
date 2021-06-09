<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetalleArticulo.aspx.cs" Inherits="WebApplication1.DetalleArticulo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">








    <%foreach (Dominio.Articulo item in listado)

        {%>

    <%if (item.Id == id)
             { %>

    
    <div class="detalle-articulo">

        <div class="imagen-articulo">
            <img src="<% =item.ImagenUrl %>" alt="..." style=height:80%;>
        </div>

        <div class="datos-articulo">

            <div class="descripcion-articulo">
                <h4 class="card-title"><% =item.Nombre %></h4>
                <p class="card-text"><% = item.Descripcion %></p>
                <p class="card-text">Marca: <% = item.Marca.Nombre%></p>
                <h5 class="card-text">Precio: $<%= Math.Round(item.Precio,2) %></></h5>
            </div>

            <div class="btn-articulo">
                <a href="Carrito?id=<% = item.Id %>" class="btn btn-primary">Agregar al carrito</a>

            </div>

        </div>
    </div>



    <% } %>

    <% } %>


</asp:Content>
