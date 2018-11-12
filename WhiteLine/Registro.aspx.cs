using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WhiteLine
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btn_Registro_Click(object sender, EventArgs e)
        {
            Usuario u = new Usuario();
            u.RegistrarUsuarios(inputNombre.Text, inputPassword.Text, inputEmail.Text);
            lblmensaje.Text = "Creacion exitosa !";
        }


        public void limpiar()
        {
            inputNombre.Text = "";
            inputPassword.Text = "";
            inputEmail.Text = "";

        }

        protected void btn__Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}