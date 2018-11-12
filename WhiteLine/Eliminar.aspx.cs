using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WhiteLine
{
    public partial class Eliminar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var query = from Producto in Producto.listaProductos
                        select new
                        {
                            id =    Producto._id,
                            Modelo = Producto._modelo,
                            Marca = Producto._marca,
                            Categoria = Producto._categoria,
                            Precio = Producto._precio,
                            Descripcion = Producto._descripcion

                        };
            grdProductos.DataSource = query;
            grdProductos.DataBind();
        }
        protected void btn_Eliminar_Click(object sender, EventArgs e)
        {

            eliminar(int.Parse(txt_eliminar.Text));

        }


        public void eliminar(int id)
        {

            foreach (var aux in Producto.listaProductos)
            {

                if (aux._id == id)
                {
                    Producto.listaProductos.Remove(aux);

                    Response.Redirect("Eliminar.aspx");
                    break;




                }


            }

        }
    }
}