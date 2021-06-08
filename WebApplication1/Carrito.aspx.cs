using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;
using Datos;

namespace WebApplication1
{
   
    public partial class Carrito : System.Web.UI.Page
    {
        public int id;
        public List<Articulo> listado;
        public static List<ItemCarrito> listadoCarrito;
        


        protected void Page_Load(object sender, EventArgs e)
        {
             
            try
            {

                float precio = 0;
                listadoCarrito = (List<ItemCarrito>)Session["listaFavoritos"];

                if (listadoCarrito == null)
                {
                    listadoCarrito = new List<ItemCarrito>();
                    lblPrecio.Text = precio.ToString();

                }
                
                
                        
                if (Request.QueryString["id"] != null) {

                    if (string.IsNullOrWhiteSpace(Request.QueryString["e"]))
                    {
                        id = int.Parse(Request.QueryString["id"]);

                        listado = (List<Articulo>)Session["listado"];

                        Articulo articulo = listado.Find(x => x.Id == id);
                        if (listadoCarrito.Find(x => x.Articulo.Id.ToString() == Request.QueryString["id"]) == null)
                        {
                            ItemCarrito item = new ItemCarrito(articulo, 1);
                              listadoCarrito.Add(item);
                            Session.Add("listaFavoritos", listadoCarrito);
                        }
                        else
                        {
                        
                            ItemCarrito item = listadoCarrito.Find(x => x.Articulo.Id == id);
                            item.agregarItem(1);
                            Session.Add("listaFavoritos", listadoCarrito);
                        }
                    }
                    else
                    {
                        if (string.IsNullOrWhiteSpace(Request.QueryString["r"]))
                        {
                            id = int.Parse(Request.QueryString["id"]);
                            ItemCarrito item = listadoCarrito.Find(x => x.Articulo.Id == id);

                            listadoCarrito.Remove(item);
                            Session.Add("listaFavoritos", listadoCarrito);
                        }
                        else
                        {
                            id = int.Parse(Request.QueryString["id"]);

                            ItemCarrito item = listadoCarrito.Find(x => x.Articulo.Id == id);

                            item.restarItem();
                            if (item.Cantidad == 0)
                            {
                                listadoCarrito.Remove(item);
                            }
                            Session.Add("listaFavoritos", listadoCarrito);
                        }
                    }
                   
                }
                foreach (ItemCarrito item in listadoCarrito)
                {
                    
                    precio += (float)item.Articulo.Precio * item.Cantidad;

                }

                lblPrecio.Text = precio.ToString();
                
            }
            catch (Exception)
            {

                Response.Redirect("Error.aspx");
               
            }



        }


    }
}