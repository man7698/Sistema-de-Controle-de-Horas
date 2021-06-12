
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SGEU_TCC
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Aqui temos uma sessão, que após o usuário logar vai contar 10 minutos, caso o usuario esteja ausente e estorar o tempo a sessao acaba e o usuario volta para a tela de login
            Menu MI = new Menu();
            //usuarios u = new usuarios();
            // u.listaralunos();
            Session["Usuario"] = null;
            Session["Senha"] = null;

            if ((Session["Usuario"] == null) && (Session["Senha"] == null))
            {
                //Response.Redirect("~/Login.aspx");
            }
            
            else
            {
                if (!Page.IsPostBack)
                {
                    usuarios u = new usuarios();
                  
                }
            }





        }




        protected void Button1_Click(object sender, EventArgs e)
        {
           


        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            usuarios u = new usuarios();

            u.login = txtlogin.Text;
            u.senha = txtsenha.Text;

            if (u.Login(u))
            {
                Session["Usuario"] = txtlogin.Text;
                Session["Senha"] = txtsenha.Text;
                //Session.Timeout = 10;

                Label3.Text = "Logado!";

                Response.Redirect("~/Adm/Default.aspx");
            }
            else
            {
                Label4.Text = "Usuário ou senha incorretos!";
            }
             

        }



    }
}