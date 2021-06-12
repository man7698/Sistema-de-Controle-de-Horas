using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SGEU_TCC.Adm
{
    public partial class Inserir_Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!Page.IsPostBack)
            {
            usuarios u = new usuarios();
            turmas t = new turmas();
            GridView1.DataSource = u.listaralunos();
            GridView1.DataBind();

            }
            
        }

      

        protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {
            //**************pegar valor das horas na TextoBox da GridView

            //e.NewValues["entrada"] = ((TextBox)((GridView)sender).Rows[e.RowIndex].Cells[0].FindControl("txtentrada")).Text;

            //Label1.Text = ((TextBox)((GridView)sender).Rows[e.RowIndex].Cells[0].FindControl("txtentrada")).Text;
            //Label1.Text = ((TextBox)((GridView)sender).Rows[e.RowIndex].Cells[0].FindControl("txtsaida")).Text;

            txtcod.Text = GridView1.Rows[e.RowIndex].Cells[0].Text;
            txtinserirentrada.Text = ((TextBox)((GridView)sender).Rows[e.RowIndex].Cells[2].FindControl("txtentrada")).Text;
            txtinserirsaida.Text = ((TextBox)((GridView)sender).Rows[e.RowIndex].Cells[3].FindControl("txtsaida")).Text;
            string ativ = ((TextBox)((GridView)sender).Rows[e.RowIndex].Cells[4].FindControl("txtatividade")).Text;

            registro_horario r = new registro_horario();
            usuarios u = new usuarios();

            u.idusuario = int.Parse(txtcod.Text);
            r.entrada = DateTime.Parse(txtinserirentrada.Text);
            r.saida = DateTime.Parse(txtinserirsaida.Text);
            r.atividade = ativ;
            r.data = DateTime.Now.ToShortDateString();

            r.inserirregistro(u, r);
            Response.Write("<script>alert('Registro Inserido');</script>");


        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            //registro_horario r = new registro_horario();
            //usuarios u = new usuarios();

            //u.idusuario = int.Parse(txtcod.Text);
            //r.entrada = DateTime.Parse(txtinserirentrada.Text);
            //r.saida = DateTime.Parse(txtinserirsaida.Text);
            //r.data = DateTime.Now.ToShortDateString();

            //r.inserirregistro(u, r);
            //Response.Write("<script>alert('Registro Inserido');</script>");

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            registro_horario r = new registro_horario();
            usuarios u = new usuarios();

            u.idusuario = int.Parse(txtcod.Text);
            r.entrada = DateTime.Parse(txtinserirentrada.Text);
            r.saida = DateTime.Parse(txtinserirsaida.Text);
            r.data = DateTime.Now.ToShortDateString();

            r.inserirregistro(u, r);
            Response.Write("<script>alert('Registro Inserido');</script>");

        }

       

        

       
    }
}