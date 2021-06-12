using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SGEU_TCC.Adm
{
    public partial class Cadresponsavel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {

                GrupoUsuario gp = new GrupoUsuario();
                gp.listartipousuario(ddresponsavel);

            }

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
          
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            responsavel r = new responsavel();

            r.endereco = txtendereco.Text;
            r.idgrupousuario = int.Parse(ddresponsavel.SelectedItem.Value);
            r.idresponsavel = int.Parse(txt_Cpf.Text);
            r.nome_responsavel = txt_Nome.Text;
            r.telefone = txttel.Text;
            r.email = txtemail.Text;
            r.cpfresponsavel = (txt_Cpf.Text);



            r.Salvar(r);
            Response.Write("<script>alert('Dados Salvos');</script>");
        }
    }
}