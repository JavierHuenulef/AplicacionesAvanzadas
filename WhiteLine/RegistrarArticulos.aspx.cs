using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WhiteLine
{
    public partial class RegistrarArticulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Ingresar_Click(object sender, EventArgs e)
        {
            Producto p = new Producto();
            p.RegistrarProductos(int.Parse(txt_Id.Text) ,txt_Modelo.Text, txt_Marca.Text, txt_Categoria.Text, int.Parse(txt_Precio.Text), txt_Descripcion.Text);
            lblestado.Text = "Articulo agregado";
            limpiar();
        }

        protected void btn_Lista_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListarProductos.aspx");
        }

        public void limpiar()
        {
            txt_Id.Text = " ";
            txt_Modelo.Text = "";
            txt_Marca.Text = "";
            txt_Categoria.Text = "";
            txt_Descripcion.Text = "";
            txt_Precio.Text = "";
        }

       
    }
}