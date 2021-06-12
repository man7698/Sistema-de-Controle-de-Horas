using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SGEU_TCC.Adm
{
    public partial class CadTurma : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {

                turmas t = new turmas();
                GridView1.DataSource = t.listarturmasnagrid();
                GridView1.DataBind();
            }
            
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            turmas t = new turmas();

            t.idturma = t.proximoid();
            t.nome_turma = txtTurma.Text;
            t.Salvar(t);
            Response.Write("<script>alert('Dados Salvos');</script>");
            txtTurma.Text = "";

            GridView1.DataSource = t.listarturmasnagrid();
            GridView1.DataBind();
        }

        protected void cbescolhaturma_CheckedChanged(object sender, EventArgs e)
        {
            if (cbescolhaturma.Checked == true)
            {
                Panel1.Visible = true;
            }
            else if (cbescolhaturma.Checked == false)
            {
                Panel1.Visible = false;
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            turmas t = new turmas();
            t.DeleteTurma(GridView1.Rows[e.RowIndex].Cells[0].Text);
            //t.listarturmasnagrid();
            GridView1.DataSource = t.listarturmasnagrid();
            GridView1.DataBind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(cbescolhanome.Checked == true)
            {
                turmas t = new turmas();

                GridView1.DataSource = t.listarturmaspornome(TextBox1.Text);
                GridView1.DataBind();

            }
        }

    }
}