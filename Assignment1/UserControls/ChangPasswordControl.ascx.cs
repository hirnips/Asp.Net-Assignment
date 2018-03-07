using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1.UserControls
{
    public partial class ChangPasswordControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtUName.Text = Request.QueryString["UserName"].ToString();
                txtUName.Enabled = false;
            }
        }

        protected void lnbLogin_Click(object sender, EventArgs e)
        {
            if (txtUName.Text.ToUpper() == "Company".ToUpper())
            {
                Response.Redirect("~/CompanyHome.aspx");
            }
            else if (txtUName.Text.ToUpper() == "Applicant".ToUpper())
            {
                Response.Redirect("~/ApplicantEducation.aspx");
            }
            else
            {
                lblAns.Text = "Invalid User Name";
            }
        }

        protected void lnbCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ForgotPassword.aspx");
        }
    }
}