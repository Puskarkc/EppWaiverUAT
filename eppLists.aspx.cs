using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;

namespace EPPwavier
{
    public partial class _Default : System.Web.UI.Page
    {
        public string year, month;
        public string yearMonth;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dashboardGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void eppGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnViewData_Click(object sender, EventArgs e)
        {
            try
            {
                year = (dropDownListYYYY.Text);
                month = (dropDownMM.Text);
                yearMonth = year + '-' + month;
                //con = new SqlConnection("EppWaiverConnectionString");
                SqlConnection con = new SqlConnection("server=10.40.80.18; database=eppwaiver; uid=sa;pwd=#Metlife007");
                con.Open();
                string sql = "GetMonthlyData";
                SqlCommand command = new SqlCommand(sql, con);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@YearAndMonth", SqlDbType.NVarChar).Value = yearMonth;
                command.Parameters.Add("@PolicyCount", SqlDbType.NVarChar).Value = "1";
                SqlDataReader dr = command.ExecuteReader();
                con.Close();
                eppGridView.DataBind();
            }
            catch
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Error,, Please Contact Puskar K.c');document.location='" + ResolveClientUrl("~/eppLists.aspx") + "';</script>");

            }

        }

        protected void exportToExcel()
        {
            try
            {
                Response.Clear();
                Response.Buffer = true;
                string fileName = "EppWaiver__" + DateTime.Now + ".xls";
                Response.AddHeader("content-disposition", "attachment;filename=" + fileName);
                Response.Charset = "";
               // Response.ContentType = "application/vnd.ms-excel";
                Response.ContentType = "application / vnd.openxmlformats - officedocument.spreadsheetml.sheet";
               // Excel 2003 : "application/vnd.ms-excel"
               // Excel 2007 : "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                using (StringWriter sw = new StringWriter())
                {
                    HtmlTextWriter hw = new HtmlTextWriter(sw);

                    //To Export all pages
                    eppGridView.AllowPaging = false;
                    this.DataBind();

                    eppGridView.HeaderRow.BackColor = System.Drawing.Color.White;
                    foreach (TableCell cell in eppGridView.HeaderRow.Cells)
                    {
                        cell.BackColor = eppGridView.HeaderStyle.BackColor;
                    }
                    foreach (GridViewRow row in eppGridView.Rows)
                    {
                        row.BackColor = System.Drawing.Color.White;
                        foreach (TableCell cell in row.Cells)
                        {
                            if (row.RowIndex % 2 == 0)
                            {
                                cell.BackColor = eppGridView.AlternatingRowStyle.BackColor;
                            }
                            else
                            {
                                cell.BackColor = eppGridView.RowStyle.BackColor;
                            }
                            cell.CssClass = "textmode";
                        }
                    }

                    eppGridView.RenderControl(hw);

                    //style to format numbers to string
                    string style = @"<style> .textmode { } </style>";
                    Response.Write(style);
                    Response.Output.Write(sw.ToString());
                    Response.Flush();
                    Response.End();
                }
            }
            catch
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('No Data Found, Please Choose the correct Month & Year');document.location='" + ResolveClientUrl("~/eppLists.aspx") + "';</script>");

            }
        }

        protected void btnDownloadToExcel_Click(object sender, EventArgs e)
        {
            exportToExcel();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }

        protected void eppGridView_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}