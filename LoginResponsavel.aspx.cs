using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SGEU_TCC
{
    public partial class LoginResponsavel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            responsavel r = new responsavel();

            r.cpfresponsavel = int.Parse(txtcpflogin.Text);
            r.senha = txtsenha.Text;

            if (r.loginresponsavel(r))
            {
                Session["Usuario"] = txtcpflogin.Text;
                Session["Senha"] = txtsenha.Text;
                Response.Redirect("~/Adm/Default.aspx");
            }
            else
            {

                Label4.Text = "Usuario ou senha incorretos !";

            }

            
        }
    }
}