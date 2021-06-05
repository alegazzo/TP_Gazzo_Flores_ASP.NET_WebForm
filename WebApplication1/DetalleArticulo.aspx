<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetalleArticulo.aspx.cs" Inherits="WebApplication1.DetalleArticulo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Detalle Articulo</h1>







    <%foreach (Dominio.Articulo item in listado)

        {%>
        
         <%if (item.Id == id)
             { %> 

                       <div class="card mb-3" style="max-width: 540px;">
              <div class="row g-0">
                <div class="col-md-4">
                  <img src="<% =item.ImagenUrl %>" alt="...">
                </div>
                <div class="col-md-8">
                  <div class="card-body">
                    <h4 class="card-title"><% =item.Nombre %></h4>
                    <p class="card-text"><% = item.Descripcion %></p>
                    <h5 class="card-text"><small class="text-muted"><%=item.Precio %></small></h5>
                    <a href="Carrito?id=<% = item.Id %>" class="btn btn-primary">Agregar al carrito</a>
                  </div>
                </div>
              </div>
            </div>

            
        <% } %>   
 
   <% } %>


</asp:Content>
