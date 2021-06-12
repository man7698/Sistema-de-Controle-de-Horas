using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SGEU_TCC.Adm
{
    public partial class CadUsuario : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Conexao"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                usuarios u = new usuarios();
                GrupoUsuario gp = new GrupoUsuario();
                turmas t = new turmas();
                t.listarturma(ddturma);
                gp.listartipousuario(ddgrupousuario);

                gvusuarios.DataSource = u.listaralunos();
                gvusuarios.DataBind();

            }
            

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            usuarios u = new usuarios();
            if (HiddenField1.Value == null)
            {
                u.idusuario = u.proximoid();
            }
            else
            {
                u.idusuario = int.Parse(HiddenField1.Value);
            }

            //u.idusuario = int.Parse(HiddenField1.Value);

            u.id_turma = int.Parse(ddturma.SelectedItem.Value);

            u.nome_usuario = txtnome.Text;

            u.endereco_usuario = txtend.Text;

            u.idgrupousuario = int.Parse(ddgrupousuario.SelectedItem.Value);

            //u.idresponsavel = (txtcpfresp.Text);

            u.login = txtlogin.Text;

            u.senha = txtsenha.Text;

            u.telefone_usuario = txttel.Text;

            u.Salvar(u);
            Response.Write("<script>alert('Dados Salvos');</script>");
            gvusuarios.DataSource = u.listaralunos();
            gvusuarios.DataBind();


        }

        int cod;

        protected void gvusuarios_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            usuarios u = new usuarios();
            HiddenField1.Value = (gvusuarios.Rows[e.RowIndex].Cells[0].Text);
            //cod = int.Parse(gvusuarios.Rows[e.RowIndex].Cells[0].Text);
            txtnome.Text = gvusuarios.Rows[e.RowIndex].Cells[2].Text;
            txttel.Text =  gvusuarios.Rows[e.RowIndex].Cells[3].Text;
            txtend.Text =  gvusuarios.Rows[e.RowIndex].Cells[4].Text;
            txtlogin.Text = gvusuarios.Rows[e.RowIndex].Cells[5].Text;
            txtsenha.Text = gvusuarios.Rows[e.RowIndex].Cells[6].Text;
            //txtcpfresp.Text = gvusuarios.Rows[e.RowIndex].Cells[7].Text;
           
           
        }

        protected void gvusuarios_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            usuarios u = new usuarios();
            u.Delete(gvusuarios.Rows[e.RowIndex].Cells[0].Text);
            //u.listaralunos();
            gvusuarios.DataSource = u.listaralunos();
            gvusuarios.DataBind();

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (cbescolha.Checked == true)
            {

                Panel1.Visible = true;
            }
            else if (cbescolha.Checked == false)
            {
                Panel1.Visible = false;
            }
        }

        protected void Cbescolhanome_CheckedChanged(object sender, EventArgs e)
        {
           
        }

        protected void cbescolhacod_CheckedChanged(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (cbescolhacod.Checked == true)
            {
                usuarios u = new usuarios();

                gvusuarios.DataSource = u.listarporcod(int.Parse(txtpesquisa.Text));
                gvusuarios.DataBind();

            }
            else if (Cbescolhanome.Checked == true)
            {
              
                usuarios u = new usuarios();

                gvusuarios.DataSource = u.listarpornome(txtpesquisa.Text);
                gvusuarios.DataBind();

            }
        }
    }
}