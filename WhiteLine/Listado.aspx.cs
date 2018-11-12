using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WhiteLine
{
    public partial class Listado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Busqueda"] != null)
            {
                Producto busqueda = (Producto)Session["Busqueda"];

                lblModelo.Text = busqueda._modelo;
                lblMarca.Text = busqueda._marca;
                lblCategoria.Text = busqueda._categoria;
                lblDescripcion.Text = busqueda._descripcion;
                lblPrecio.Text = busqueda._precio.ToString();


            }

        }
    }
}