using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;

namespace SGEU_TCC
{
    class Class1
    {
        private SqlConnection con;
        public Class1()
        {
        }

        public DataSet GetEmployes(DropDownList d)
        {
            using (con = new SqlConnection(ConfigurationManager.ConnectionStrings["Conexao"].ConnectionString))
            {
                DataSet Datasetemployes = new DataSet("Employes");

                SqlDataAdapter da = new SqlDataAdapter();

                SqlCommand com = new SqlCommand();
                com.Connection = con;

                com.CommandText = @"SELECT dbo.usuarios.nome_usuario, RIGHT('0' + CAST(SUM(DATEDIFF(mi, dbo.registro_horario.entrada, dbo.registro_horario.saida)) / 60 AS VARCHAR(2)), 2) + ':' + RIGHT('0' + CAST(SUM(DATEDIFF(mi,"
            + "dbo.registro_horario.entrada, dbo.registro_horario.saida)) % 60 AS VARCHAR(2)), 2) AS totalhoras, dbo.usuarios.id_turma" +
            " FROM dbo.turmas INNER JOIN" +
            " dbo.usuarios ON dbo.turmas.idturma = dbo.usuarios.id_turma INNER JOIN" +
            " dbo.registro_horario ON dbo.usuarios.idusuario = dbo.registro_horario.idusuario" +
            " WHERE (dbo.usuarios.id_turma = " + d.SelectedItem.Value + ")" +
            " GROUP BY dbo.usuarios.nome_usuario, dbo.usuarios.id_turma";

                da.SelectCommand = com;

                da.Fill(Datasetemployes);

                return Datasetemployes;
            }

        }





    }
}
