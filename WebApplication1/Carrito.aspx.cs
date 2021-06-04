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
        public static List<Articulo> listadoCarrito = new List<Articulo>();
      
        protected void Page_Load(object sender, EventArgs e)
        {
            
            try
            {
                
                if (!string.IsNullOrWhiteSpace(Request.QueryString["id"])) {

                    
                    id = int.Parse(Request.QueryString["id"]);

                    listado = (List<Articulo>)Session["listado"];

                    Articulo articulo = listado.Find(x => x.Id == id);

                    listadoCarrito.Add(articulo);
                    
                }
               

            }
            catch (Exception)
            {

                Response.Redirect("Error.aspx");
               
            }


            
        }


    }
}