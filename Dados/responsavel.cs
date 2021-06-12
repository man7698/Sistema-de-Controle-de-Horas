using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SGEU_TCC
{
    public partial class responsavel
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Conexao"].ConnectionString);
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand comm;

        public void Salvar(responsavel r)
        {
            //comm = new SqlCommand("insert into usuarios(endereco_usuario,id_turma,idgrupousuario,idresponsavel,idusuario,login,nome_usuario,senha,telefone_usuario)"+
            //                        "values ('"+u.endereco_usuario+"',"+u.id_turma+","+u.idgrupousuario+","+u.idresponsavel+","+u.idusuario+",'"+u.login+"','"+u.nome_usuario+"','"+u.senha+"','"+u.telefone_usuario+"')", con);

            //con.Open();
            //comm.ExecuteNonQuery();
            //con.Close();

            comm = new SqlCommand("proc_inserir_alterar_responsavel", con);
            comm.CommandType = CommandType.StoredProcedure;

            comm.Parameters.Add("@idresponsavel", SqlDbType.Int).Value = r.idresponsavel;
            comm.Parameters.Add("@nome_responsavel", SqlDbType.VarChar).Value = r.nome_responsavel;
            comm.Parameters.Add("@endereco", SqlDbType.VarChar).Value = r.endereco;
            comm.Parameters.Add("@telefone", SqlDbType.VarChar).Value = r.telefone;
            comm.Parameters.Add("@email", SqlDbType.VarChar).Value = r.email;
            comm.Parameters.Add("@idgrupousuario", SqlDbType.Int).Value = r.idgrupousuario;
            comm.Parameters.Add("@cpf", SqlDbType.Int).Value = r.idresponsavel;


            con.Open();
            comm.ExecuteNonQuery();
            con.Close();

        }



    }
}