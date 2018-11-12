using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WhiteLine
{
    public partial class Index : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Producto pd = Producto.BuscarProducto(txtBuscar.Text);
            if (pd != null)
            {
                Session["Busqueda"] = pd;
                Response.Redirect("Listado.aspx");
            }
        }
    }
}