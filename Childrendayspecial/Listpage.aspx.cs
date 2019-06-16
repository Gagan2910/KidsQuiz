using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.IO;

namespace Childrendayspecial
{
    public partial class WebForm6 : System.Web.UI.Page
    {
       // private object saveFileDialog1;

        //public object Filename { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", string.Format("attachment; filename={0}", "ChildrenDetails.xls"));
            Response.ContentType = "application/ms-excel";
            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            //GridView1.AllowPaging = true;
            //GridView1.HeaderRow.Style.Add("background-color", "#FFFFFF");
           /* for (int i = 0; i < GridView1.HeaderRow.Cells.Count; i++)
            {
                //GridView1.HeaderRow.Cells[i].Style.Add("background-color", "#507CD1");
            }
            int j = 1;
            foreach (GridViewRow gvrow in GridView1.Rows)
            {
                gvrow.BackColor = System.Drawing.Color.White;
                if (j <= GridView1.Rows.Count)
                {
                    if (j % 2 != 0)
                    {
                        for (int k = 0; k < gvrow.Cells.Count; k++)
                        {
                            //gvrow.Cells[k].Style.Add("background-color", "#EFF3FB");
                        }
                    }
                }
                j++;
            }*/
            GridView1.RenderControl(htw);
            Response.Write(sw.ToString());
            Response.End();

            //coding used in form page using C#.net not web page
            /*saveFileDialog1.InitialDirectory= "C:";
            saveFileDialog1.Title = "Save as Excel File";
            saveFileDialog1.Filename = "";
            saveFileDialog1.Filter = "ExcelFiles(2003)|*.xls|Excel.Files(2007)|*.xlsx";
            if(saveFileDialog1.ShowDialog()!=DialogResult.Cancel)
            {
                Microsoft.Office.Interop.Excel.Application ExcelApp = new Microsoft.Office.Interop.Excel.Application();
                ExcelApp.Application.Workbooks.Add(Type.Missing);
                //Change propertiesof the Workbook
                ExcelApp.Columns.ColumnWidth = 30;
                //Storing header part in Excel
                for(int i=1;i<GridView1.Columns.Count+1;i++)
                {
                    ExcelApp.Cells[1, i] = GridView1.Columns[i - 1].HeaderText;
                }
                //Storing each row and column value to excel sheet
                for(int i=0;i<GridView1.Rows.Count;i++)
                {
                    for(int j=0;j<GridView1.Columns.Count;j++)
                    {
                        ExcelApp.Cells[i + 2, j + 1] = GridView1.Rows[i].Cells[j].ToString();

                    }
                }
                ExcelApp.ActiveWorkbook.SaveCopyAs(saveFileDialog1.Filename.ToString());
                ExcelApp.ActiveWorkbook.Saved = true;
                ExcelApp.Quit();
            }*/



        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}