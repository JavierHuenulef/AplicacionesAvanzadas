using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WhiteLine
{
    public partial class Modificar1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var query = from Producto in Producto.listaProductos
                        select new
                        {
                            Id = Producto._id,
                            Modelo = Producto._modelo,
                            Marca = Producto._marca,
                            Categoria = Producto._categoria,
                            Precio = Producto._precio,
                            Descripcion = Producto._descripcion

                        };
            grdProductos.DataSource = query;
            grdProductos.DataBind();
        }
        protected void btn_Modificar_Click(object sender, EventArgs e)
        {

            modificar(int.Parse(txt_Modificar.Text));

        }


        public void modificar(int id)
        {
            foreach (var aux in Producto.listaProductos)
            {

                if (aux._id == id)
                {

                    aux._modelo = txt_modelo.Text;
                    aux._marca = txt_marca.Text;
                    aux._categoria = txt_categoria.Text;
                    aux._precio = int.Parse(txt_precio.Text);
                    aux._descripcion = txt_descripcion.Text;


                    Response.Redirect("Modificar.aspx");
                    break;

                }
            }



        }
    }
}