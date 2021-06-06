using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace WebApplication1
{
    public partial class DetalleArticulo : System.Web.UI.Page
    {
        public int id;
        public List<Articulo> listado;
        
        protected void Page_Load(object sender, EventArgs e)
        {


            try
            {
                //obtenemos el id por url.
                id = int.Parse(Request.QueryString["id"]);
                //listado se carga con la lista guardada en session.
                listado = (List<Articulo>)Session["listado"];
                //buscamo en el listado el articulo con el id obtenido previamente.
                    Articulo articulo = listado.Find(x => x.Id == id);

                //se cargan los labels con la informacion del articulo correspondiente.
            }
            catch (Exception)
            {

                Response.Redirect("Error.aspx");
            }
           
            

        }

         
    }


}