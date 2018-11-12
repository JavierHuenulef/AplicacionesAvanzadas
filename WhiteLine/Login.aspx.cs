using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WhiteLine
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {

            if (inputEmail.Text.Equals("admin@whiteline.cl") & inputPassword.Text.Equals("pass123"))
            {
                
                Usuario usr = new Usuario();
                //Session
                Session["Login"] = usr;
                Response.Redirect("Admin.aspx");
            }
            else
            {
                foreach (Usuario aux in Usuario.listaUsuarios)
                {
                    if (aux._email.Equals(inputEmail.Text) & aux._password.Equals(inputPassword.Text))
                    {
                       
                        
                        Usuario usr = new Usuario();
                        //Session
                        Session["Login"] = usr;
                        Response.Redirect("paginaUsuario.aspx");
                    }
                }
            }
        }

        protected void btn_Singup_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }
    }
}