using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WhiteLine
{
    public partial class ListarProductosAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            var query = from Prod in Producto.listaProductos
                        select new
                        {
                            Modelo = Prod._modelo,
                            Marca = Prod._marca,
                            Categoria = Prod._categoria,
                            Precio = Prod._precio,
                            Descripcion = Prod._descripcion
                        };

            grdProductos.DataSource = query;
            grdProductos.DataBind();

        }
    }
}