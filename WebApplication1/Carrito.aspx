<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="WebApplication1.Carrito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Carrito</h1>
<%--    <%if (bandera==false)
        { %>
    <h2>Ups, tu carrito esta vacio</h2>
    <%} %>--%>
    <div class="card-contenedor">

        <% foreach (Dominio.ItemCarrito item in listadoCarrito)
            {%>

        <div class="item-carrito">
            <div class="left-container">

                <div class="imagenUrl">
                    <img src="<% = item.Articulo.ImagenUrl %>" alt=".." />
                </div>

                <div class="descripcion">
                    <h5 class="card-title"><% = item.Articulo.Nombre %></h5>
                    <h5 class="card-text">$ <%  = Math.Round(item.Articulo.Precio * item.Cantidad,2) %></h5>
                    <a href="DetalleArticulo?id=<% = item.Articulo.Id %>" class="btn btn-primary">Detalle</a>
                </div>

            </div>

            <div class="right-container">

                <div class="btn-quitar">
                    <a href="Carrito?id=<% = item.Articulo.Id %>&e=t" class="btn btn-primary">Eliminar</a>
                </div>


                <div class="btn-cantidad">

                    <div class="btn-cantidad-texto">
                        <p class="card-text">Cantidad:<% =item.Cantidad %></p>
                    </div>


                    <div class="btn-cantidad-btn">
                        <a href="Carrito?id=<% = item.Articulo.Id %>&e=t&r=t" class="btn btn-primary"><i class="fas fa-minus"></i></a>
                        <a href="Carrito?id=<% = item.Articulo.Id %>" class="btn btn-primary"><i class="fas fa-plus"></i></a>
                    </div>



                </div>



            </div>



        </div>

        <%} %>
    </div>

    <h1>Total:</h1><asp:Label Text="text" id="lblPrecio" runat="server" />


</asp:Content>
