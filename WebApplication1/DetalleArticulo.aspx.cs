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
        protected void Page_Load(object sender, EventArgs e)
        {
            //obtenemos el id por url.
            int id = int.Parse(Request.QueryString["id"]);
            //listado se carga con la lista guardada en session.
            List<Articulo> listado = (List<Articulo>)Session["listado"];
            //buscamo en el listado el articulo con el id obtenido previamente.
            Articulo articulo = listado.Find(x => x.Id == id);

            //se cargan los labels con la informacion del articulo correspondiente.
            LabelNombre.Text = articulo.Nombre;
            LabelCodigo.Text = articulo.Codigo;
            LabelDescripcion.Text = articulo.Descripcion;
            LabelUrlImagen.Text = articulo.ImagenUrl;
            LabelPrecio.Text =  Convert.ToString(articulo.Precio);
                
            
        }
    }
}