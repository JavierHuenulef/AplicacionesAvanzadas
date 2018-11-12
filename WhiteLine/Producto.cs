using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WhiteLine
{
    public class Producto
    {
        public static List<Producto> listaProductos = new List<Producto>();
        private int id;
        private string modelo;
        private string marca;
        private string categoria;
        private int precio;
        private string descripcion;

        public int _id
        {
            get { return id; }
            set { id = value; }
        }
        public string _modelo
        {

            get { return modelo; }
            set { modelo = value; }

        }

        public string _marca
        {
            get { return marca; }
            set { marca = value; }

        }

        public string _categoria
        {
            get { return categoria; }
            set { categoria = value; }
        }

        public int _precio
        {
            get { return precio; }
            set { precio = value; }

        }

        public string _descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }

        }

        //Busqueda

        public static Producto BuscarProducto(string rt) {
            foreach (Producto aux in listaProductos) {
                if (aux.categoria.Equals(rt)) {
                    return aux;
                }

            }
            return null;
        }

        //Ingresar articulos
        public void RegistrarProductos(int id,string mod, string mar, string cat, int pre, string descr) {
            Producto p = new Producto()
            {
                _id = id,
                _modelo = mod,
                _marca = mar,
                _categoria = cat,
                _precio = pre,
                _descripcion = descr
            };

            Producto.listaProductos.Add(p);
            
        }


    }
}