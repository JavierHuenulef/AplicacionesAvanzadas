using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WhiteLine
{
    public class Usuario
    {
        public static List<Usuario> listaUsuarios = new List<Usuario>();

        private string nombre;
        private string password;
        private string email;

       public string _nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }
        public string _password
        {
            get { return password; }
            set { password = value; }
        }
        public string _email
        {
            get { return email; }
            set { email = value; }
        }

        //Registrar Usuarios
        public void RegistrarUsuarios(string nom, string pass, string mail)
        {
            Usuario u = new Usuario()
            {
                _nombre = nom,
                _password = pass,
                _email = mail,

            };

            Usuario.listaUsuarios.Add(u);
        }
    }
}