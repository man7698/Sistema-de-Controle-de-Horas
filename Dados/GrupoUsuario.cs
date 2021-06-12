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
    public partial class GrupoUsuario // utilizo um "partial", para unir os dados da pasta Dados e Objetos.
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Conexao"].ConnectionString); // Conexão com o banco.

        SqlDataAdapter da; // O SqlDataAdapter serve para ligar os dados que estão num banco de dados SQL Server com os objetos DataSet e DataTable.

        public void listartipousuario(DropDownList d) // Lista, usando o DropDownList
        {
            da = new SqlDataAdapter("select * from GrupoUsuario", con); // o SqlDataAdapter vai fazer um select na tabela declarada e chamar a conexão com o banco
            
            DataSet ds = new DataSet(); // É usado para para reservar um espaço na memória //DataSet representa um conjunto de dados em memória retornados de uma fonte de dados

            da.Fill(ds); // O método Fill que altera os dados no DataSet para coincidir com os dados da fonte de dados.
            //Quando o método Fill é executado ele cria as colunas e tabelas necessárias para os dados retornados se eles não existirem
            d.DataTextField = "Descricao"; // Nome do campo 
            
            d.DataValueField = "idgrupousuario"; // Valor do campo 
           
            d.DataSource = ds; // A propriedade DataSource é utilizada para gerenciar o acesso a uma conexão com o banco de dados.
           
            d.DataBind(); //Método utilizado para usado regularmente para sincronizar a fonte de dados e um controle da listagem de dados depois que as informações na fonte de dados é atualizada.
           
            d.Items.Insert(0, "SELECIONE UM USUÁRIO"); // Aqui ele faz um insert no DropDown 
           
            d.SelectedIndex = 0;

        }




    }
}