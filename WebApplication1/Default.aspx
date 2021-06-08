﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.WebForm1" %>


<asp:Content  ID="Content1" ContentPlaceHolderID="MainContent" runat="server">







   
    <section class= "home">

        


    </section>



    <section >

        <h1 id="Productos" >Productos</h1>
         
        <div class="container">
        
        
        <div class="row" style:"justify-content:center;">
         

            <% foreach (Dominio.Articulo item in lista)
               {%>
            
                <div class="col-md-4">

                    <div class="card" style="width: 18rem;">
                        <img src="<% =item.ImagenUrl %>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h4 class="card-title"><% = item.Nombre %></h4>
                            <h5 class="card-text">$<% = Math.Round(item.Precio,2) %></h5>
                            <p class="card-text"><% =item.Descripcion %></p>
                            <a href="DetalleArticulo?id=<% = item.Id %>" class="btn btn-primary">Detalle</a>
                            <a href="Carrito?id=<% = item.Id %>" class="btn btn-primary">Agregar al carrito</a>
                        </div>
                    </div>
                </div>


            <% } %>
        </div>

</div>


    </section>





</asp:Content>
