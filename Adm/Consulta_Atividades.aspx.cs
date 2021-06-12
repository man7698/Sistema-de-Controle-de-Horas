using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SGEU_TCC.Adm
{
    public partial class Consulta_Atividades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                registro_horario re = new registro_horario();
                GridView1.DataSource = re.listaratividades(Session["usuario"].ToString());
                GridView1.DataBind();

            }
            
        }
    }
}