using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace SGEU_TCC
{
    public partial class turmas
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Conexao"].ConnectionString);
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand comm;


        public void listarturma(DropDownList t)
        {
            da = new SqlDataAdapter("select * from turmas", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            t.DataTextField = "nome_turma";
            t.DataValueField = "idturma";
            t.DataSource = ds;
            t.DataBind();
            t.Items.Insert(0, "SELECIONE UMA TURMA");
            t.SelectedIndex = 0;

        }

        public List<turmas> listarturmaspornome(string nome)
        {
            da = new SqlDataAdapter("select * from turmas where nome_turma ='"+nome+"'", con);

            ds = new DataSet();

            da.Fill(ds);

            List<turmas> listaturmas = new List<turmas>();

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                turmas t = new turmas();

                t.idturma = (int)dr["idturma"];
                t.nome_turma = dr["nome_turma"].ToString();

                listaturmas.Add(t);
            }

            return listaturmas;
        }

        public List<turmas> listarturmasnagrid()
        {
            da = new SqlDataAdapter("select * from turmas", con);

            ds = new DataSet();

            da.Fill(ds);

            List<turmas> listaturmas = new List<turmas>();

            foreach(DataRow dr in ds.Tables[0].Rows)
            {
                turmas t = new turmas();

                t.idturma = (int)dr["idturma"];
                t.nome_turma = dr["nome_turma"].ToString();

                listaturmas.Add(t);
            }

            return listaturmas;




        }

        public void DeleteTurma(string turmaID)
        {
            comm = new SqlCommand(" Delete from turmas where idturma = " + turmaID, con);

            con.Open();
            comm.ExecuteNonQuery();
            con.Close();

        }

        public int proximoid()
        {
            da = new SqlDataAdapter("select Max(idturma) + 1 from turmas", con);
            ds = new DataSet();
            da.Fill(ds);

            return int.Parse(ds.Tables[0].Rows[0].ItemArray[0].ToString());

        }

        public void Salvar(turmas t)
        {
            //comm = new SqlCommand("insert into usuarios(endereco_usuario,id_turma,idgrupousuario,idresponsavel,idusuario,login,nome_usuario,senha,telefone_usuario)"+
            //                        "values ('"+u.endereco_usuario+"',"+u.id_turma+","+u.idgrupousuario+","+u.idresponsavel+","+u.idusuario+",'"+u.login+"','"+u.nome_usuario+"','"+u.senha+"','"+u.telefone_usuario+"')", con);

            //con.Open();
            //comm.ExecuteNonQuery();
            //con.Close();

            comm = new SqlCommand("proc_inserir_alterar_turmas", con);
            comm.CommandType = CommandType.StoredProcedure;

            comm.Parameters.Add("@idturma", SqlDbType.Int).Value = proximoid();
            comm.Parameters.Add("@nome_turma", SqlDbType.VarChar).Value = t.nome_turma;


            con.Open();
            comm.ExecuteNonQuery();
            con.Close();




        }
    }
}