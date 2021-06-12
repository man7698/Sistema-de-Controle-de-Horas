using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;

namespace SGEU_TCC
{
    public partial class registro_horario
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Conexao"].ConnectionString);
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand comm;

        public int proximoregistro()
        {
            da = new SqlDataAdapter("select Max(idregistro) + 1 from registro_horario", con);
            ds = new DataSet();
            da.Fill(ds);

            return int.Parse(ds.Tables[0].Rows[0].ItemArray[0].ToString());

        }

        public List<registro_horario> listaratividades(string login)
        {
            //StringBuilder msg = new StringBuilder();

            //msg.Append(" select usuarios.idusuario,rh.entrada,rh.saida,rh.atividade,rh.data  from registro_horario as rh " );
            //msg.Append(" inner join usuarios on rh.idusuario = usuarios.idusuario ");

            //if(fsdfsdf = Adm)
            //    msg.Append(" where usuarios.login ='" + login + "'");
            //else
            //    msg.Append(" where dwadsad ='" + login + "'");

            //da1 = new SqlDataAdapter(msg.ToString(), con); 


            da = new SqlDataAdapter("select usuarios.idusuario,rh.entrada,rh.saida,rh.atividade,rh.data  from registro_horario as rh " +
                                    " inner join usuarios on rh.idusuario = usuarios.idusuario " +
                                    " where usuarios.login ='" +login + "'", con);

            ds = new DataSet();
            da.Fill(ds);

            List<registro_horario> listativ = new List<registro_horario>();

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                registro_horario re = new registro_horario();
                           
                re.idusuario = (int)dr["idusuario"];
                re.entrada = DateTime.Parse(dr["entrada"].ToString());
                re.saida = DateTime.Parse(dr["saida"].ToString());
                re.atividade = dr["atividade"].ToString();
                re.data = dr["data"].ToString();


                listativ.Add(re);
            }
            return listativ;

        }



        public void inserirregistro(usuarios u , registro_horario r)
        {
            comm = new SqlCommand("insert into registro_horario (idregistro,idusuario,entrada,saida, atividade, data) values("+proximoregistro()+",'"+u.idusuario +"','"+r.entrada+"','"+r.saida+"', '"+r.atividade+"','"+r.data+"')",con);

            con.Open();
            comm.ExecuteNonQuery();
            con.Close();

        }


    }
}