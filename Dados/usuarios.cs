using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;

namespace SGEU_TCC
{
    public partial class usuarios
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Conexao"].ConnectionString);
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand comm;

        public List<usuarios> listarhoras(DropDownList d)
        {
            da = new SqlDataAdapter("SELECT dbo.usuarios.nome_usuario, RIGHT('0' + CAST(SUM(DATEDIFF(mi, dbo.registro_horario.entrada, dbo.registro_horario.saida)) / 60 AS VARCHAR(2)), 2) + ':' + RIGHT('0' + CAST(SUM(DATEDIFF(mi,"
            + "dbo.registro_horario.entrada, dbo.registro_horario.saida)) % 60 AS VARCHAR(2)), 2) AS totalhoras, dbo.usuarios.id_turma" +
            " FROM dbo.turmas INNER JOIN" +
            " dbo.usuarios ON dbo.turmas.idturma = dbo.usuarios.id_turma INNER JOIN" +
            " dbo.registro_horario ON dbo.usuarios.idusuario = dbo.registro_horario.idusuario" +
            " WHERE (dbo.usuarios.id_turma = " + d.SelectedItem.Value + ")" +
            " GROUP BY dbo.usuarios.nome_usuario, dbo.usuarios.id_turma", con);



            ds = new DataSet();
            da.Fill(ds);

            List<usuarios> listhoras = new List<usuarios>();

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                usuarios u = new usuarios();
                u.nome_usuario = dr["nome_usuario"].ToString();
                u.totalhoras = dr["totalhoras"].ToString();

                listhoras.Add(u);
            }
            return listhoras;

        }


        


        public void Delete(string UsuarioID)
        {
            comm = new SqlCommand(" Delete from usuarios where idusuario = " + UsuarioID, con);

            con.Open();
            comm.ExecuteNonQuery();
            con.Close();

        }

        public List<usuarios> listarporcod(int cod)
        {
            da = new SqlDataAdapter("select * from usuarios where idusuario ='" + cod + "'", con);
            ds = new DataSet();

            da.Fill(ds);

            List<usuarios> listarnome = new List<usuarios>();

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                usuarios u = new usuarios();
                u.idusuario = (int)dr["idusuario"];
                u.idgrupousuario = (int)dr["idgrupousuario"];
                u.nome_usuario = dr["nome_usuario"].ToString();
                u.senha = dr["senha"].ToString();
                u.login = dr["login"].ToString();
                u.telefone_usuario = dr["telefone_usuario"].ToString();
                u.endereco_usuario = dr["endereco_usuario"].ToString();
                //u.idresponsavel = dr["cpfresponsavel"].ToString();
                if (dr["id_turma"].ToString() != "")
                    u.id_turma = (int)dr["id_turma"];

                listarnome.Add(u);

            }

            return listarnome;

        }


        public List<usuarios> listarpornome(string nome)
        {
            da = new SqlDataAdapter("select * from usuarios where nome_usuario ='"+nome+"'", con);
            ds = new DataSet();

            da.Fill(ds);

            List<usuarios> listarnome = new List<usuarios>();

            foreach(DataRow dr in ds.Tables[0].Rows)
            {
                usuarios u = new usuarios();
                u.idusuario = (int)dr["idusuario"];
                u.idgrupousuario = (int)dr["idgrupousuario"];
                u.nome_usuario = dr["nome_usuario"].ToString();
                u.senha = dr["senha"].ToString();
                u.login = dr["login"].ToString();
                u.telefone_usuario = dr["telefone_usuario"].ToString();
                u.endereco_usuario = dr["endereco_usuario"].ToString();
                //u.idresponsavel = dr["cpfresponsavel"].ToString();
                if (dr["id_turma"].ToString() != "")
                    u.id_turma = (int)dr["id_turma"];

                listarnome.Add(u);

            }

            return listarnome;

        }


        public List<usuarios> listaralunos()
        {
            da = new SqlDataAdapter("select u.idusuario,u.idgrupousuario,u.nome_usuario,u.senha,u.login,u.telefone_usuario,u.endereco_usuario,t.nome_turma,u.id_turma  from usuarios as u inner join turmas as t on u.id_turma = t.idturma ", con);
            ds = new DataSet();
            da.Fill(ds);

            List<usuarios> listUsu = new List<usuarios>();

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                turmas t = new turmas();
                usuarios u = new usuarios();
                
                u.idusuario = (int)dr["idusuario"];
                u.idgrupousuario = (int)dr["idgrupousuario"];
                u.nome_usuario = dr["nome_usuario"].ToString();
                u.senha = dr["senha"].ToString();
                u.login = dr["login"].ToString();
                u.telefone_usuario = dr["telefone_usuario"].ToString();
                u.endereco_usuario = dr["endereco_usuario"].ToString();
                //u.idresponsavel = dr["cpfresponsavel"].ToString();
                u.nometurma = dr["nome_turma"].ToString();
                if (dr["id_turma"].ToString() != "")
                u.id_turma = (int)dr["id_turma"];


                listUsu.Add(u);
            }

            return listUsu;

        }

        public int ItemGrupoUsuarioID(string Usuario, string Senha)
        {
            da = new SqlDataAdapter("select idgrupousuario from usuarios where login = '" + Usuario + "' and senha = '" + Senha + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            return int.Parse(ds.Tables[0].Rows[0].ItemArray[0].ToString());
        }


        public bool Login(usuarios u)
        {
            da = new SqlDataAdapter("select * from usuarios where login ='" + u.login + "'  and senha ='" + u.senha + "' ", con);
            ds = new DataSet();
            da.Fill(ds);

            bool status;

            if (ds.Tables[0].Rows.Count > 0)
                status = true;
            else
                status = false;

            return status;
        }


        public int proximoid()
        {
            da = new SqlDataAdapter("select Max(idusuario) + 1 from usuarios",con);
            ds = new DataSet();
            da.Fill(ds);

            return int.Parse(ds.Tables[0].Rows[0].ItemArray[0].ToString());

        }

        public void Salvar(usuarios u)
        {
            //comm = new SqlCommand("insert into usuarios(endereco_usuario,id_turma,idgrupousuario,idresponsavel,idusuario,login,nome_usuario,senha,telefone_usuario)"+
            //                        "values ('"+u.endereco_usuario+"',"+u.id_turma+","+u.idgrupousuario+","+u.idresponsavel+","+u.idusuario+",'"+u.login+"','"+u.nome_usuario+"','"+u.senha+"','"+u.telefone_usuario+"')", con);
            //con.Open();
            //comm.ExecuteNonQuery();
            //con.Close();

            comm = new SqlCommand("proc_inserir_alterar_aluno", con); 
            comm.CommandType = CommandType.StoredProcedure;

            comm.Parameters.Add("@idusuario", SqlDbType.Int).Value = u.idusuario;
            comm.Parameters.Add("@nome_usuario", SqlDbType.VarChar).Value = u.nome_usuario;
            comm.Parameters.Add("@telefone_usuario", SqlDbType.VarChar).Value = u.telefone_usuario;
            comm.Parameters.Add("@login", SqlDbType.VarChar).Value = u.login;
            comm.Parameters.Add("@endereco_usuario", SqlDbType.VarChar).Value = u.endereco_usuario;
            comm.Parameters.Add("@id_turma", SqlDbType.Int).Value = u.id_turma;
            comm.Parameters.Add("@senha", SqlDbType.VarChar).Value = u.senha;
            comm.Parameters.Add("@idgrupousuario", SqlDbType.Int).Value = u.idgrupousuario;
            //comm.Parameters.Add("@idresponsavel", SqlDbType.VarChar).Value = u.idresponsavel;

            con.Open();
            comm.ExecuteNonQuery();
            con.Close();

        }       

    }
}