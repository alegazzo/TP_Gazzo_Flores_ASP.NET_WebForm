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
    public partial class Productos : System.Web.UI.Page
    {
        public List<Articulo> lista;

        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();


            try
            {
                lista = negocio.Listar();
            }
            catch (Exception ex)
            {

                Response.Redirect("Error.aspx");
            }
        }
    }
}