using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1.UserControls
{
    public partial class SignUpControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnbSignUp_Click(object sender, EventArgs e)
        {
            if(drpType.SelectedItem.Text == "Company")
            {
                Response.Redirect("~/CompanyHome.aspx");
            }
            else if(drpType.SelectedItem.Text == "Applicant")
            {
                Response.Redirect("~/ApplicantEducation.aspx");
            }
            else
            {
                lblAns.Text = "Please select Type";
                drpType.Focus();
            }
        }
    }
}