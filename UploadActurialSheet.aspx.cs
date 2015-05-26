using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.OleDb;
using System.Data.SqlClient;

namespace EPPwavier
{
    public partial class _Default : System.Web.UI.Page
    {
        //protected void Page_Load(object sender, EventArgs e)
        //{

        //}

        //protected void dashboardGridView_SelectedIndexChanged(object sender, EventArgs e)
        //{

        //}


        protected void btnUpload_Click(object sender, EventArgs e)
        {
            //try
            //{
            if (FileUpload1.HasFile)
            {
                //   string sPath = Server.MapPath("~/BulkFolder/" + FileUpload1.FileName);

                string fn = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
                string sPath = Server.MapPath("~\\BulkFolder") + "\\" + fn;

                //  string sPath = Server.MapPath("~/BulkFolder/Employee.xlsx" +FileUpload1.FileName);
                FileUpload1.SaveAs(sPath);

                ImporttoSQL(sPath);
            }
            //}
            //catch 
            //{
            //    ErrorMsg.Text = "Error While uploading File";
            //}
        }

        protected void ImporttoSQL(string sPath)
        {
            try
            {
                // Connect to Excel 2007 earlier version
                //string sSourceConstr = @"Provider=Microsoft.Jet.OLEDB.4.0; Data Source=C:\AgentList.xls; Extended Properties=""Excel 8.0;HDR=YES;""";
                // Connect to Excel 2007 (and later) files with the Xlsx file extension 
                string sSourceConstr = string.Format(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source={0};Extended Properties=""Excel 12.0 Xml;HDR=YES;""", sPath);

                string sDestConstr = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
                OleDbConnection sSourceConnection = new OleDbConnection(sSourceConstr);
                using (sSourceConnection)
                {
                    string policy = txtBoxPolicy.Text.ToString();

                    if (string.IsNullOrEmpty(policy)) { ErrorMsg.Text = " Please inssert policy number."; }
                    else
                    {
                        string dateTimeAuto = DateTime.Now.ToString();

                        string sql = string.Format("Select [Paymentno], [Date],[Reserve],[Payment],[Interest],[Capital], '" + policy + "' as policynumber ,  #" + dateTimeAuto + "#  as dateinsertion FROM [{0}]", "Sheet1$"); //,(2015-05-01)as [dateinsertion] //" + policy + " as policynumber ,




                        OleDbCommand command = new OleDbCommand(sql, sSourceConnection);
                        sSourceConnection.Open();
                        using (OleDbDataReader dr = command.ExecuteReader())
                        {
                            using (SqlBulkCopy bulkCopy = new SqlBulkCopy(sDestConstr))
                            {
                                bulkCopy.DestinationTableName = "ActurialSheet";
                                //You can mannualy set the column mapping by the following way.
                                //bulkCopy.ColumnMappings.Add("paymentno", "End of Month");
                                //  bulkCopy.ColumnMappings.Add("policynumber", policy);
                                bulkCopy.WriteToServer(dr);
                                ErrorMsg.Text = "Data Uploaded Succesfully";
                            }
                        }
                    }
                }
            }
            catch { ErrorMsg.Text = "Data Upload Failled, Please Insert Policy Number, / review Excel File"; }
        }
    }
}
