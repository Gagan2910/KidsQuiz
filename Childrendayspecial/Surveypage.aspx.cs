using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Childrendayspecial
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        int counter = 0;
        int totalmarks = 6;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack==true)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('This is a Single attempt.Please answer questions carefully');</script>");
            }
            lblfirstname.Visible = true;
            lbllastname.Visible = true;
            // lblemail.Visible = true;
           lblfirstname.Text= Request.QueryString["firstname"];
            lbllastname.Text=Request.QueryString["lastname"];
            lblemail.Text=Request.QueryString["email"];
            lblcontactno.Text = Request.QueryString["contactno"];

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
         
            if (rdbtnq11.Checked == true || rdbtnq12.Checked == true || rdbtnq13.Checked == true)
            {
               // counter = 0;
                lblans1.Visible = true;
                lblans1.ForeColor = System.Drawing.Color.Red;
                lblans1.Text = "Incorrect";

            }
            if(rdbtnq14.Checked==true)
            {
                counter++;
                lblans1.Visible = true;
                lblans1.Text = "Correct";
                lblans1.ForeColor = System.Drawing.Color.Green;
            }
            if (rdbtnq21.Checked == true || rdbtnq22.Checked == true || rdbtnq23.Checked == true)
            {
              //  counter = 0;
                lblans2.Visible = true;
                lblans2.ForeColor = System.Drawing.Color.Red;
                lblans2.Text = "Incorrect";
            }
            if (rdbtnq24.Checked == true)
            {
                counter++;
                lblans2.Visible = true;
                lblans2.ForeColor = System.Drawing.Color.Green;
                lblans2.Text = "Correct";
            }
            if (rdbtnq32.Checked == true || rdbtnq33.Checked == true || rdbtnq34.Checked == true)
            {
              //  counter = 0;
                lblans3.Visible = true;
                lblans3.ForeColor = System.Drawing.Color.Red;
                lblans3.Text = "Incorrect";
            }
            if (rdbtnq31.Checked == true)
            {
                counter++;
                lblans3.Visible = true;
                lblans3.ForeColor = System.Drawing.Color.Green;
                lblans3.Text = "Correct";
            }
            if (rdbtnq41.Checked == true || rdbtnq42.Checked == true || rdbtnq44.Checked == true)
            {
               // counter = 0;
                lblans4.Visible = true;
                lblans4.ForeColor = System.Drawing.Color.Red;
                lblans4.Text = "Incorrect";
            }
            if (rdbtnq43.Checked == true)
            {
                counter++;
                lblans4.Visible = true;
                lblans4.ForeColor = System.Drawing.Color.Green;
                lblans4.Text = "Correct";
            }
            if (rdbtnq51.Checked == true || rdbtnq52.Checked == true || rdbtnq54.Checked == true)
            {
                //counter = 0;
                lblans5.Visible = true;
                lblans5.ForeColor = System.Drawing.Color.Red;
                lblans5.Text = "Incorrect";
            }
            if (rdbtnq53.Checked == true)
            {
                counter++;
                lblans5.Visible = true;
                lblans5.ForeColor = System.Drawing.Color.Green;
                lblans5.Text = "Correct";
            }
            if (rdbtnq61.Checked == true || rdbtnq63.Checked == true || rdbtnq64.Checked == true)
            {
               // counter = 0;
                lblans6.Visible = true;
                lblans6.ForeColor = System.Drawing.Color.Red;
                lblans6.Text = "Incorrect";
            }
            if (rdbtnq62.Checked == true)
            {
                counter++;
                lblans6.Visible = true;
                lblans6.ForeColor = System.Drawing.Color.Green;
                lblans6.Text = "Correct";
            }
            // number1= counter;
            lbltotal.Visible = true;
            lbltotal.Text = "Total Score:" + counter + "/"+totalmarks;
            btnreviewresult.Visible = true;
            btnnxt.Visible = true;
            if(counter==6)
            {
                lblmsg.Visible = true;
                lblmsg.Text = "Congratulations!!!";
            }
            try
            {
                Dataaccesslayer dal = new Dataaccesslayer();
                dal.childmarks(lblfirstname.Text, lbllastname.Text, lblemail.Text, counter, totalmarks, lblcontactno.Text);
            }
            catch (Exception)
            {
                //lblerror.Visible = true;
                //lblerror.Text = "Email already exists try another email";
            }
            btnsubmit.Visible = false;
        }

        protected void rdbtnq12_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void rdbtnq11_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btnreviewresult_Click(object sender, EventArgs e)
        {
           // if (number1 > 0)
           // {
                lblcorrect1.Visible = true;
                lblcorrect2.Visible = true;
                lblcorrect3.Visible = true;
                lblcorrect4.Visible = true;
                lblcorrect5.Visible = true;
                lblcorrect6.Visible = true;

                rdbtnq14.ForeColor = System.Drawing.Color.DarkOrange;
                rdbtnq24.ForeColor = System.Drawing.Color.DarkOrange;
                rdbtnq31.ForeColor = System.Drawing.Color.DarkOrange;
                rdbtnq43.ForeColor = System.Drawing.Color.DarkOrange;
                rdbtnq53.ForeColor = System.Drawing.Color.DarkOrange;
                rdbtnq62.ForeColor = System.Drawing.Color.DarkOrange;

                hlansreview1.Visible = true;
                hlansreview2.Visible = true;
                hlansreview3.Visible = true;
                hlansreview4.Visible = true;
                hlansreview5.Visible = true;
                hlansreview6.Visible = true;
           // }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Lastpage.aspx");
        }
    }
}