using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WhiteLine
{
    public partial class Usuario1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login"] != null)
            {
                //Abrir session
                Usuario usr = (Usuario)Session["Login"];
           

            }
            else
            {
                Response.Redirect("index.aspx");
            }
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

        protected void btnCerrarSession_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("Index.aspx");
        }
    }
}