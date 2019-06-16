using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Childrendayspecial
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnstafflogin_Click(object sender, EventArgs e)
        {

            Dataaccesslayer da = new Dataaccesslayer();
            int user = da.stafflogin(txtadminname.Text, txtadminpassword.Text);
            if (user > 0)
            {
                Response.Redirect("Listpage.aspx");
            }
            else
            {
                lbltxt.Visible = true;
                lbltxt.Text = "Incorrect StaffID or Password";
            }
        }
    }
}