using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SGEU_TCC.Adm
{
    public partial class GerarRelatorio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                turmas t = new turmas();
                t.listarturma(ddturma);

            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Class1 c1 = new Class1();

            DataSet dsalunos = c1.GetEmployes(ddturma);

            //dsalunos.WriteXmlSchema(Server.MapPath(@"/xsd/dsalunos.xsd"));

            ReportDataSource reportds = new ReportDataSource();
            reportds.Name = "DataSet1";
            reportds.Value = dsalunos.Tables[0];

            string reportendereço = Server.MapPath(@"~/Report1.rdlc");

            this.ReportViewer1.LocalReport.DataSources.Add(reportds);

            this.ReportViewer1.LocalReport.ReportPath = reportendereço;
        }

        protected void ddturma_SelectedIndexChanged(object sender, EventArgs e)
        {
            //usuarios u = new usuarios();
            //GridView1.DataSource = u.listarhoras(ddturma);
            //GridView1.DataBind();
        }
    }
}