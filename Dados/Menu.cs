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
    public partial class Menu
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Conexao"].ConnectionString);
        SqlDataAdapter da;
        DataSet ds;
        public List<Menu> Lista(int GrupoUsuarioID)
        {
            da = new SqlDataAdapter("select * from V_MenuGrupo where idgrupousuario = " + GrupoUsuarioID, con);
            ds = new DataSet();
            da.Fill(ds);

            List<Menu> ListMI = new List<Menu>();

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                Menu MI = new Menu();
                MI.idmenu = (int)dr["idmenu"];
                MI.Descricao = dr["Descricao"].ToString();
                MI.URL = dr["URL"].ToString();
                if (dr["ParentID"].ToString() != "")
                    MI.ParentID = (int)dr["ParentID"];

                MI.Ordem = (int)dr["Ordem"];
                //MI.idmenu = (int)dr["idmenu"];

                ListMI.Add(MI);
            }

            return ListMI;
        }



        public void MontaMenuGrupo(MenuItemCollection ciItens, List<Menu> listMenuGrupo, int? ParentID)
        {
            foreach (Menu mmItem in listMenuGrupo.FindAll(p => p.ParentID == ParentID))
            {
                MenuItem newItem = new MenuItem();
                newItem.Text = mmItem.Descricao;
                newItem.NavigateUrl = mmItem.URL;

                ciItens.Add(newItem);

                if (listMenuGrupo.FindAll(p => p.ParentID == mmItem.ParentID).Count > 0)
                    MontaMenuGrupo(newItem.ChildItems, listMenuGrupo, mmItem.idmenu);
            }
        }

    }
}