using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WhiteLine
{
    public partial class testUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                var query = from Usuario in Usuario.listaUsuarios
                            select new
                            {
                                Nombre = Usuario._nombre,
                                Email = Usuario._email,
                                pass = Usuario._password
                               

                            };
                GridView1.DataSource = query;
                GridView1.DataBind();
            

        }
    }
}