<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="WebApplication1.Carrito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Carrito</h1>
   

    <div class="row">
      
        <% foreach (Dominio.ItemCarrito item in listadoCarrito)
            {%>

            <div class="col-md-4">

                <div class="card" style="width: 18rem;">
                    <img src="<% =item.Articulo.ImagenUrl %>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><% = item.Articulo.Nombre %></h5>
                        <p class="card-text"><% =item.Articulo.Descripcion %></p>
                        <p class="card-text">cantidad:<% =item.Cantidad %></p>
                        <p class="card-text">cantidad:<% =item.Articulo.Precio * item.Cantidad %></p>
                        <a href="DetalleArticulo?id=<% = item.Articulo.Id %>" class="btn btn-primary">Detalle</a>
                        <a href="Carrito?id=<% = item.Articulo.Id %>&e=t" class="btn btn-primary">Eliminar</a>
                        <a href="Carrito?id=<% = item.Articulo.Id %>&e=t&r=t" class="btn btn-primary">Quitar 1</a>
                        <a href="Carrito?id=<% = item.Articulo.Id %>" class="btn btn-primary">Agregar 1</a>
                    </div>
                </div>
            </div>
               
        <%} %>
    </div>

    <h1>Total:</h1>


</asp:Content>
