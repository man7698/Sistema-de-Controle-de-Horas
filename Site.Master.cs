using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SGEU_TCC
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["Usuario"] == null) && (Session["Senha"] == null))
            {
                Response.Redirect("~/Login.aspx");
            }
              
            else
            {
                if (!Page.IsPostBack)
                {
                    usuarios u = new usuarios();
                    ListarMenuGrupo(u.ItemGrupoUsuarioID(Session["Usuario"].ToString(), Session["Senha"].ToString()));
                    Menu.Visible = true;
                }
            }
        }

        public  void ListarMenuGrupo(int GrupoUsuarioID)
        {
            Menu MI = new Menu();

            MI.MontaMenuGrupo(Menu.Items, MI.Lista(GrupoUsuarioID), null);

        }

       



    }
}