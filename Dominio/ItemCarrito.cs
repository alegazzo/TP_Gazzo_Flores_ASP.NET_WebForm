using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class ItemCarrito
    {
        public Articulo Articulo { get; set; }
        public decimal PrecioTotal { get; set; }
        public int Cantidad { get; set; }

       public ItemCarrito(Articulo articulo, int cant)
       {
            Articulo = articulo;
            Cantidad = cant;
       }

        public void agregarItem(int cant)
        {

            Cantidad +=cant;
        }

        public void restarItem()
        {

            Cantidad --;
        }
    }
}
