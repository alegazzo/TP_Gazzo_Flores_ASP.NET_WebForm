using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Datos;
using Negocio;


//TEST


namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public List<Articulo> lista;
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();


            try
            {
                if (Request.QueryString["F"] == null) {
                    lista = negocio.Listar();
                    //se guarda en session el listado de articulos.
                    Session.Add("listado", lista);
                }
                else
                {
                    lista = (List<Articulo>)Session["listafiltrada"];
                }
               
            }
            catch (Exception)
            {

                Response.Redirect("Error.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string filtro = TextBox1.Text;
            List<Articulo> listaArticulos = (List<Articulo>)Session["listado"];
            List<Articulo> listaFiltrada = listaArticulos.FindAll(x => x.Nombre.ToUpper().Contains(filtro.ToUpper()));
            Session.Add("listafiltrada", listaFiltrada);
            Response.Redirect("Default?f=t");
 
        }
    }
}