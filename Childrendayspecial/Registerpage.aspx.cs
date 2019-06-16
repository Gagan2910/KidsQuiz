using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Childrendayspecial
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          try
            {
                Dataaccesslayer da = new Dataaccesslayer();
                da.childrenregister(txtfirstname.Text, txtlastname.Text, txtemailaddress.Text, txtcontactno.Text);
                Response.Redirect("Surveypage.aspx?firstname=" + txtfirstname.Text+ "&lastname=" + txtlastname.Text+"&email=" + txtemailaddress.Text+"&contactno=" +txtcontactno.Text); 
            }
            catch(Exception)
            {
                lblerror.Visible = true;
                lblerror.Text = "Email already exists try another email";
            }
            
        }
    }
}